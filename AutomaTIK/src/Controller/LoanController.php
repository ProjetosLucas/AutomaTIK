<?php
namespace App\Controller;

use App\Controller\AppController;

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
}