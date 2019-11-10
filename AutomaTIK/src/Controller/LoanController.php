<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;
use Cake\ORM\TableRegistry;
use Cake\I18n\Time;
use Cake\Filesystem\File;

/**
 * Loan Controller
 *
 * @property \App\Model\Table\LoanTable $Loan
 *
 * @method \App\Model\Entity\Loan[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class LoanController extends AppController
{
    /**
     * Index method
     *
     * @return \Cake\Http\Response|void
     */

     public function beforeFilter(Event $event)
    {
        parent::beforeFilter($event);
        $this->Auth->allow('home');
        $this->Auth->allow('file');

    }
    public function download() {
        $loans = $this->Loan->find('all', [
            'contain' => ['Students', 'Equipaments']
        ]);
        $json = 'id;student;equipament;created;modified;scheduled_devolution;real_devolution;scheduled_borrow
';
        foreach ($loans as $loan):
            $json=$json.$loan->id;
            $json=$json.';'.$loan->student->name;
            $json=$json.';'.$loan->equipament->name;
            $json=$json.';'.$loan->created;
            $json=$json.';'.$loan->modified;
            $json=$json.';'.$loan->scheduled_devolution;
            $json=$json.';'.$loan->real_devolution;
            $json=$json.';'.$loan->scheduled_borrow;
            $json =$json.'
';
        endforeach;
        $file = new File('emprestimos.csv', true);
        $file->write($json);
        $file->close();
        $this->response->file($file->path, ['download' => true]);
        return $this->response;
    }

    public function home()
    {
        $time = Time::now();
        //debug($time->format('Y-m-d H:i:s'));
        $equipaments1=$this->loadModel('Equipaments');
        $equipaments=$this->loadModel('Equipaments');
        $students=$this->loadModel('Students');
        $atrasados=$this->Loan->find('all')->where(['Loan.scheduled_devolution <' => $time->format('Y-m-d H:i:s')])->toArray();
        //debug($atrasados);
        $emprestados = $this->Loan->find('all')->where(['Loan.real_borrow <'=> $time->format('Y-m-d H:i:s'),'Loan.scheduled_devolution >'=> $time->format('Y-m-d H:i:s')])->toArray();
        $emprestados2 = $this->Loan->find('all')->where(['Loan.real_borrow <'=> $time->format('Y-m-d H:i:s'),'Loan.scheduled_devolution >'=> $time->format('Y-m-d H:i:s')])->toArray();
        $time2 = Time::now();
        $time2->modify('+2 hours');
        $prox_emprestimos=$this->Loan->find('all')->where(['Loan.scheduled_borrow <'=> $time2->format('Y-m-d H:i:s'),'Loan.scheduled_borrow >'=> $time->format('Y-m-d H:i:s'),'Loan.real_borrow IS NULL'] )->toArray();
        
        $equipaments=$equipaments->find('all')->toArray();
        
        $this->set('equipaments', $equipaments);
        $this->set('atrasados', $atrasados);
        $this->set('emprestados', $emprestados);
        $this->set('emprestados2', $emprestados2);
        $this->set('prox_emprestimos', $prox_emprestimos);
        $this->set('students', $students);
        $this->set('equipaments1', $equipaments1);
        $this->set('time_now',Time::now());

        
        

    }
    public function get($id = null)
    {
        $loan = $this->Loan->get($id, [
            'contain' => []
        ]);
        $studentsTable = TableRegistry::get('Students');
        $studentsTable = TableRegistry::getTableLocator()->get('students');
        $student = $studentsTable->get($loan->student_id); // Return article with id 12

        if($this->Auth->user()['id']==$student->user_id){
            $equipamentsTable = TableRegistry::get('Equipaments');
            $equipamentsTable = TableRegistry::getTableLocator()->get('equipaments');
            $equipament = $equipamentsTable->get($loan->equipament_id); // Return article with id 12
            $equipament->open_cabinet = true;
            $equipamentsTable->save($equipament);
            $loan->real_borrow = Time::now();
            $this->Loan->save($loan);
            $this->Auth->logout();
            $this->Flash->success(__('Você pode pegar o seu equipamento. Você tem 5 minutos para pegar.'));  
        }else{
          $this->Flash->error(__('Você não pode pegar o equipamento.'));
        }
        return $this->redirect(['action' => 'home']);
        

    }

    public function newloan()
    {
        $students2=$this->loadModel('Students');
        $students2=$students2->find('all')->toArray();
        $loan = $this->Loan->newEntity();
        if ($this->request->is('post')) {
            $loan = $this->Loan->patchEntity($loan, $this->request->getData());
            if ($this->Loan->save($loan)) {
                $this->Flash->success(__('The loan has been saved.'));

                return $this->redirect(['action' => 'home']);
            }
            $this->Flash->error(__('The loan could not be saved. Please, try again.'));
        }
        $students = $this->Loan->Students->find('list', ['limit' => 200]);
        $equipaments = $this->Loan->Equipaments->find('list', ['limit' => 200]);
        $this->set(compact('loan', 'students', 'equipaments'));
        $this->set('students2', $students2);
    }

    public function index()
    {
        $this->paginate = [
            'contain' => ['Students', 'Equipaments']
        ];
        $loan = $this->paginate($this->Loan);

        $this->set(compact('loan'));
    }

    /**
     * View method
     *
     * @param string|null $id Loan id.
     * @return \Cake\Http\Response|void
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $loan = $this->Loan->get($id, [
            'contain' => ['Students', 'Equipaments']
        ]);

        $this->set('loan', $loan);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $loan = $this->Loan->newEntity();
        if ($this->request->is('post')) {
            $loan = $this->Loan->patchEntity($loan, $this->request->getData());
            if ($this->Loan->save($loan)) {
                $this->Flash->success(__('The loan has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The loan could not be saved. Please, try again.'));
        }
        $students = $this->Loan->Students->find('list', ['limit' => 200]);
        $equipaments = $this->Loan->Equipaments->find('list', ['limit' => 200]);
        $this->set(compact('loan', 'students', 'equipaments'));
    }

    /**
     * Edit method
     *
     * @param string|null $id Loan id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $loan = $this->Loan->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $loan = $this->Loan->patchEntity($loan, $this->request->getData());
            if ($this->Loan->save($loan)) {
                $this->Flash->success(__('The loan has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The loan could not be saved. Please, try again.'));
        }
        $students = $this->Loan->Students->find('list', ['limit' => 200]);
        $equipaments = $this->Loan->Equipaments->find('list', ['limit' => 200]);
        $this->set(compact('loan', 'students', 'equipaments'));
    }

    /**
     * Delete method
     *
     * @param string|null $id Loan id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $loan = $this->Loan->get($id);
        if ($this->Loan->delete($loan)) {
            $this->Flash->success(__('The loan has been deleted.'));
        } else {
            $this->Flash->error(__('The loan could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
    public function devolution()
    {
       $studentsTable = TableRegistry::get('Students');
        $studentsTable = TableRegistry::getTableLocator()->get('students');
        $student = $studentsTable->find('all')->where(['user_id =' => $this->Auth->user()['id']])->toArray(); 
        $emprestimos_ndevolvidos=$this->Loan->find('all')->where(['Loan.real_borrow IS NOT NULL','Loan.real_devolution IS NULL','Loan.student_id ='=> $student[0]->id ])->toArray();
      $this->set('emprestimos_ndevolvidos', $emprestimos_ndevolvidos);
      $this->set('students', $this->loadModel('Students'));
      $this->set('equipaments1', $this->loadModel('Equipaments'));

        
    }
    public function devolution2($id = null)
    {
        $loan = $this->Loan->get($id, [
            'contain' => []
        ]);
        $studentsTable = TableRegistry::get('Students');
        $studentsTable = TableRegistry::getTableLocator()->get('students');
        $student = $studentsTable->get($loan->student_id); // Return article with id 12

        if($this->Auth->user()['id']==$student->user_id){
            $equipamentsTable = TableRegistry::get('Equipaments');
            $equipamentsTable = TableRegistry::getTableLocator()->get('equipaments');
            $equipament = $equipamentsTable->get($loan->equipament_id); // Return article with id 12
            $equipament->open_cabinet = true;
            $equipamentsTable->save($equipament);
            $loan->real_devolution = Time::now();
            $this->Loan->save($loan);
            $this->Auth->logout();
            $this->Flash->success(__('Você pode devolver o seu equipamento. Você tem 5 minutos para devolver.'));  
        }else{
          $this->Flash->error(__('Você não pode pegar o equipamento.'));
        }
        return $this->redirect(['action' => 'home']);
        

    }

     public function file() {
        $time2 = Time::now();
        $time2->modify('-5 min');

        $equipamentsTable=$this->loadModel('Equipaments');
        $equipaments3=$equipamentsTable->find('all')->toArray();
        $json = '';
        foreach ($equipaments3 as $equipament):
        $loan1=$this->Loan->find('all')->where(['Loan.equipament_id ='=> $equipament->id,'Loan.real_borrow >'=> $time2->format('Y-m-d H:i:s')])->toArray();
        $loan2=$this->Loan->find('all')->where(['Loan.equipament_id ='=> $equipament->id,'Loan.real_devolution >'=> $time2->format('Y-m-d H:i:s')])->toArray();
        //debug(!(($loan1)==[]));
        //debug($equipament->open_cabinet);
        if(($equipament->open_cabinet) and ((!(($loan1)==[])) or (!($loan2)==[]))){
          $json = 
'MODE COM%NUM% BAUD=9600 PARITY=n DATA=8
ECHO a > COM%NUM%';
        }elseif($json == ''){
          $json = 
'MODE COM%NUM% BAUD=9600 PARITY=n DATA=8
ECHO b > COM%NUM%';
          $equipament2 = $equipamentsTable->get($equipament->id);
          $equipament2->open_cabinet = false;
          $equipamentsTable->save($equipament2);
        }
        endforeach;
       //debug(($equipament->open_cabinet) and ((!(($loan1)==[])) or (!($loan2)==[])));
        //exit();
        $file = new File('script.bat', true);
        $file->write($json);
        $file->close();
        $this->response->file($file->path, ['download' => true]);
        return $this->response;
    }
    public function search() {
        $studentsTable = TableRegistry::get('Students');
        $students = $studentsTable->find('all')->toArray(); ;
        $this->set('students', $students);
    }
    public function barcodeScan() {
        $time = Time::now();
        if ($this->request->is('post')) {
            $equipaments=$this->loadModel('Equipaments');
            $students=$this->loadModel('Students');
            if($this->request->getData()['equipament_code']==''){
                    $this->Flash->error(__('The code of equipament is empty'));
                    return $this->redirect(['action' => 'barcode-scan']);
            }
            if($this->request->getData()['student_code']==''){
                    $this->Flash->error(__('The code of student is empty'));
                    return $this->redirect(['action' => 'barcode-scan']);
            }
            $equipament=$equipaments->find('all')->where(['Equipaments.code' => $this->request->getData()['equipament_code']])->toArray();
            if($equipament==[]){
                $aux_variable = [
                    'name' => $this->request->getData()['equipament_code'],
                    'code' => $this->request->getData()['equipament_code'],
                    'description' => '',
                    'in_stock' => '0'
                ];
                $equipament[0] = $equipaments->newEntity();
                $equipament[0] = $equipaments->patchEntity($equipament[0], $aux_variable);
                    if ($equipaments->save($equipament[0])) {
                        $this->Flash->success(__('Not found the code of equipament but the equipament has been saved.'));
                    }else{
                        $this->Flash->error(__('Not found the code of equipament and The equipament could not be saved. Please, try again.'));    
                    }  
            }
            $student=$students->find('all')->where(['Students.code' => $this->request->getData()['student_code']])->toArray();
            if($student==[]){
                $id_novo= (($students->find('all',array('order'=>'id DESC'))->first()->id))+1;
                $student_aux = [
                    'code' => $this->request->getData()['student_code'],
                    'cpf' => '',
                    'sector_id' => '1',
                    'fone' => '',
                    'name' => $this->request->getData()['student_code'],
                    'email' => 'uname'.$id_novo.'@uname.com',
                    'registration' => '',
                    'user_id' => '1'
                ];
                $student[0] = $students->newEntity();
                $student[0] = $students->patchEntity($student[0], $student_aux);
                if ($students->save($student[0])) {
                    $this->Flash->success(__('Not found the code of student but the student has been saved.'));

                }else{
                    $this->Flash->error(__('The student could not be saved. Please, try again.'));    
                    return $this->redirect(['action' => 'barcode-scan']);
                }   
            }
            $time2 = Time::now();
            $time2->modify('+2 hours');
            $loan = $this->Loan->newEntity([
                'student_id' => $student[0]->id,
                'equipament_id' => $equipament[0]->id,
                'created' => $time->format('Y-m-d H:i:s'),
                'modified' => $time->format('Y-m-d H:i:s'),
                'scheduled_devolution' =>  $time2->format('Y-m-d H:i:s'),
                'real_devolution' => '',
                'real_borrow' => $time->format('Y-m-d H:i:s'),
                'scheduled_borrow' => $time->format('Y-m-d H:i:s')
            ]);
            if ($this->Loan->save($loan)) {
                $this->Flash->success(__('The loan has been saved.'));

                return $this->redirect(['action' => 'barcode-scan']);
            }
            $this->Flash->error(__('The loan could not be saved. Please, try again.'));
        }
    $studentsTable = TableRegistry::get('Students');
        $students = $studentsTable->find('all')->toArray(); ;
        $this->set('students', $students);
    }
}
