<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Equipaments Model
 *
 * @property \App\Model\Table\LoanTable|\Cake\ORM\Association\HasMany $Loan
 *
 * @method \App\Model\Entity\Equipament get($primaryKey, $options = [])
 * @method \App\Model\Entity\Equipament newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\Equipament[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Equipament|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Equipament saveOrFail(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Equipament patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\Equipament[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\Equipament findOrCreate($search, callable $callback = null, $options = [])
 */
class EquipamentsTable extends Table
{
    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        parent::initialize($config);

        $this->setTable('equipaments');
        $this->setDisplayField('name');
        $this->setPrimaryKey('id');

        $this->hasMany('Loan', [
            'foreignKey' => 'equipament_id'
        ]);
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator)
    {
        $validator
            ->integer('id')
            ->allowEmptyString('id', 'create');

        $validator
            ->scalar('name')
            ->maxLength('name', 255)
            ->requirePresence('name', 'create')
            ->allowEmptyString('name', false);

        $validator
            ->scalar('code')
            ->maxLength('code', 255)
            ->requirePresence('code', 'create')
            ->allowEmptyString('code', false);

        $validator
            ->scalar('description')
            ->requirePresence('description', 'create')
            ->allowEmptyString('description', false);

        $validator
            ->boolean('in_stock')
            ->requirePresence('in_stock', 'create')
            ->allowEmptyString('in_stock', false);

        $validator
            ->boolean('open_cabinet');

        return $validator;
    }
}
