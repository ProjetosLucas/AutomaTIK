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

     public function file() {
        $time2 = Time::now();
        $time2->modify('-5 min');

        $equipamentsTable=$this->loadModel('Equipaments');
        $equipamentsTable=$equipamentsTable->find('all')->toArray();
        $json = '';
        foreach ($equipamentsTable as $equipament):
        $loan1=$this->Loan->find('all')->where(['Loan.equipament_id ='=> $equipament->id,'Loan.real_borrow >'=> $time2->format('Y-m-d H:i:s')])->toArray();
        //debug(!(($loan1)==[]));
        //debug($equipament->open_cabinet);
        if(($equipament->open_cabinet) and !(($loan1)==[])){
          $json = 
'MODE COM3 BAUD=9600 PARITY=n DATA=8
ECHO a > COM3';
        }elseif($json == ''){
          $json = 
'MODE COM3 BAUD=9600 PARITY=n DATA=8
ECHO b > COM3';
        }
        endforeach;
       //debug($json);
        
        $file = new File('script.bat', true);
        $file->write($json);
        $file->close();
        $this->response->file($file->path, ['download' => true]);
        return $this->response;
    }
}
