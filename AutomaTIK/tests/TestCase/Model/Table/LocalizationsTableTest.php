<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\LocalizationsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\LocalizationsTable Test Case
 */
class LocalizationsTableTest extends TestCase
{
    /**
     * Test subject
     *
     * @var \App\Model\Table\LocalizationsTable
     */
    public $Localizations;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.Localizations'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::getTableLocator()->exists('Localizations') ? [] : ['className' => LocalizationsTable::class];
        $this->Localizations = TableRegistry::getTableLocator()->get('Localizations', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->Localizations);

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
