<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;

/**
 * Localizations Controller
 *
 * @property \App\Model\Table\LocalizationsTable $Localizations
 *
 * @method \App\Model\Entity\Localization[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class LocalizationsController extends AppController
{
      public function beforeFilter(Event $event)
    {
        parent::beforeFilter($event);
        $this->Auth->allow('index');
        $this->Auth->allow('add');

    }
    /**
     * Index method
     *
     * @return \Cake\Http\Response|void
     */
    public function index()
    {
        $localizations = $this->paginate($this->Localizations);

        $this->set(compact('localizations'));
    }

    /**
     * View method
     *
     * @param string|null $id Localization id.
     * @return \Cake\Http\Response|void
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $localization = $this->Localizations->get($id, [
            'contain' => []
        ]);

        $this->set('localization', $localization);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $localization = $this->Localizations->newEntity();
        if ($this->request->is('get')) {
            // print_r($this->request->query);
            // exit();
            $localization = $this->Localizations->patchEntity($localization, $this->request->query);
            if ($this->Localizations->save($localization)) {
                $this->Flash->success(__('The localization has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The localization could not be saved. Please, try again.'));
        }
        $this->set(compact('localization'));
    }

    /**
     * Edit method
     *
     * @param string|null $id Localization id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $localization = $this->Localizations->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $localization = $this->Localizations->patchEntity($localization, $this->request->getData());
            if ($this->Localizations->save($localization)) {
                $this->Flash->success(__('The localization has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The localization could not be saved. Please, try again.'));
        }
        $this->set(compact('localization'));
    }

    /**
     * Delete method
     *
     * @param string|null $id Localization id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $localization = $this->Localizations->get($id);
        if ($this->Localizations->delete($localization)) {
            $this->Flash->success(__('The localization has been deleted.'));
        } else {
            $this->Flash->error(__('The localization could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
