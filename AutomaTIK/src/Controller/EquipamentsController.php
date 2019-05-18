<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Equipaments Controller
 *
 * @property \App\Model\Table\EquipamentsTable $Equipaments
 *
 * @method \App\Model\Entity\Equipament[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class EquipamentsController extends AppController
{
    /**
     * Index method
     *
     * @return \Cake\Http\Response|void
     */
    public function index()
    {
        $equipaments = $this->paginate($this->Equipaments);

        $this->set(compact('equipaments'));
    }

    /**
     * View method
     *
     * @param string|null $id Equipament id.
     * @return \Cake\Http\Response|void
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $equipament = $this->Equipaments->get($id, [
            'contain' => ['Loan']
        ]);

        $this->set('equipament', $equipament);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $equipament = $this->Equipaments->newEntity();
        if ($this->request->is('post')) {
            $equipament = $this->Equipaments->patchEntity($equipament, $this->request->getData());
            if ($this->Equipaments->save($equipament)) {
                $this->Flash->success(__('The equipament has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The equipament could not be saved. Please, try again.'));
        }
        $this->set(compact('equipament'));
    }

    /**
     * Edit method
     *
     * @param string|null $id Equipament id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $equipament = $this->Equipaments->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $equipament = $this->Equipaments->patchEntity($equipament, $this->request->getData());
            if ($this->Equipaments->save($equipament)) {
                $this->Flash->success(__('The equipament has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The equipament could not be saved. Please, try again.'));
        }
        $this->set(compact('equipament'));
    }

    /**
     * Delete method
     *
     * @param string|null $id Equipament id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $equipament = $this->Equipaments->get($id);
        if ($this->Equipaments->delete($equipament)) {
            $this->Flash->success(__('The equipament has been deleted.'));
        } else {
            $this->Flash->error(__('The equipament could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
