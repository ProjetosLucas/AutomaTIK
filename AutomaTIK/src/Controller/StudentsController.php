<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\I18n\Time;
use Cake\Filesystem\File;


/**
 * Students Controller
 *
 * @property \App\Model\Table\StudentsTable $Students
 *
 * @method \App\Model\Entity\Student[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class StudentsController extends AppController
{
    /**
     * Index method
     *
     * @return \Cake\Http\Response|void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Sectors', 'Users']
        ];
        $students = $this->paginate($this->Students);

        $this->set(compact('students'));
    }
public function download() {
        $students = $this->Students->find('all', [
            'contain' => ['Sectors', 'Users']
        ]);
        $json = 'id;code;cpf;sector;user;fone;name;email;registration
';
        foreach ($students as $student):
            $json=$json.$student->id;
            $json=$json.';'.$student->code;
            $json=$json.';'.$student->cpf;
            $json=$json.';'.$student->sector->name;
            $json=$json.';'.$student->user->name;
            $json=$json.';'.$student->fone;
            $json=$json.';'.$student->name;
            $json=$json.';'.$student->email;
            $json=$json.';'.$student->registration;
            $json =$json.'
';
        endforeach;
        $file = new File('students.csv', true);
        $file->write($json);
        $file->close();
        $this->response->file($file->path, ['download' => true]);
        return $this->response;
    }

    /**
     * View method
     *
     * @param string|null $id Student id.
     * @return \Cake\Http\Response|void
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $student = $this->Students->get($id, [
            'contain' => ['Sectors', 'Users', 'Loan']
        ]);

        $this->set('student', $student);
    }

    public function myloans()
    {
         $username_id = $this->Auth->user('id');
        $students2=$this->loadModel('Students');
        $students2=$students2->find('all')->toArray();
        foreach ($students2 as $student2):
                if((($username_id)==($student2->user_id))){
                  $id=$student2->id;
                }
        endforeach;
        
        $student = $this->Students->get($id, [
            'contain' => ['Sectors', 'Users', 'Loan']
        ]);

        $this->set('student', $student);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $student = $this->Students->newEntity();
        if ($this->request->is('post')) {
            $student = $this->Students->patchEntity($student, $this->request->getData());
            if ($this->Students->save($student)) {
                $this->Flash->success(__('The student has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The student could not be saved. Please, try again.'));
        }
        $sectors = $this->Students->Sectors->find('list', ['limit' => 200]);
        $users = $this->Students->Users->find('list', ['limit' => 200]);
        $this->set(compact('student', 'sectors', 'users'));
    }

    public function registerstudent()
    {
        $student = $this->Students->newEntity();
        if ($this->request->is('post')) {
            $student = $this->Students->patchEntity($student, $this->request->getData());
            if ($this->Students->save($student)) {
                $this->Flash->success(__('The student has been saved.'));

                return $this->redirect(['controller' => 'Loan', 'action' => 'home']);
            }
            $this->Flash->error(__('The student could not be saved. Please, try again.'));
        }
        $sectors = $this->Students->Sectors->find('list', ['limit' => 200]);
        $users = $this->Students->Users->find('list', ['limit' => 200]);
        $this->set(compact('student', 'sectors', 'users'));
    }

    /**
     * Edit method
     *
     * @param string|null $id Student id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $student = $this->Students->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $student = $this->Students->patchEntity($student, $this->request->getData());
            if ($this->Students->save($student)) {
                $this->Flash->success(__('The student has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The student could not be saved. Please, try again.'));
        }
        $sectors = $this->Students->Sectors->find('list', ['limit' => 200]);
        $users = $this->Students->Users->find('list', ['limit' => 200]);
        $this->set(compact('student', 'sectors', 'users'));
    }

    /**
     * Delete method
     *
     * @param string|null $id Student id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $student = $this->Students->get($id);
        if ($this->Students->delete($student)) {
            $this->Flash->success(__('The student has been deleted.'));
        } else {
            $this->Flash->error(__('The student could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
