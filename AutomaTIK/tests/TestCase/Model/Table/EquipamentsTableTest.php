<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\EquipamentsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\EquipamentsTable Test Case
 */
class EquipamentsTableTest extends TestCase
{
    /**
     * Test subject
     *
     * @var \App\Model\Table\EquipamentsTable
     */
    public $Equipaments;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.Equipaments',
        'app.Loan'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::getTableLocator()->exists('Equipaments') ? [] : ['className' => EquipamentsTable::class];
        $this->Equipaments = TableRegistry::getTableLocator()->get('Equipaments', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->Equipaments);

        parent::tearDown();
    }

    /**
     * Test initialize method
     *
     * @return void
     */
    public function testInitialize()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test validationDefault method
     *
     * @return void
     */
    public function testValidationDefault()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
