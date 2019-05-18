<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Loan Entity
 *
 * @property int $id
 * @property int $student_id
 * @property int $equipament_id
 * @property \Cake\I18n\FrozenTime $created
 * @property \Cake\I18n\FrozenTime $modified
 * @property \Cake\I18n\FrozenTime $scheduled_devolution
 * @property \Cake\I18n\FrozenTime $real_devolution
 *
 * @property \App\Model\Entity\Student $student
 * @property \App\Model\Entity\Equipament $equipament
 */
class Loan extends Entity
{
    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */
    protected $_accessible = [
        'student_id' => true,
        'equipament_id' => true,
        'created' => true,
        'modified' => true,
        'scheduled_devolution' => true,
        'real_devolution' => true,
        'student' => true,
        'equipament' => true
    ];
}
