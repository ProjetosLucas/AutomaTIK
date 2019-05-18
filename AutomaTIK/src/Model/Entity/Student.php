<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Student Entity
 *
 * @property int $id
 * @property string $code
 * @property string $cpf
 * @property int $sector_id
 * @property string $fone
 * @property string $name
 * @property string $registration
 *
 * @property \App\Model\Entity\Sector $sector
 * @property \App\Model\Entity\Loan[] $loan
 */
class Student extends Entity
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
        'code' => true,
        'cpf' => true,
        'sector_id' => true,
        'fone' => true,
        'name' => true,
        'registration' => true,
        'sector' => true,
        'loan' => true
    ];
}
