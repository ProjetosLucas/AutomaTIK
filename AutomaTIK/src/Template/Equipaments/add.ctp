<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Equipament $equipament
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List Equipaments'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Loan'), ['controller' => 'Loan', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Loan'), ['controller' => 'Loan', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="equipaments form large-9 medium-8 columns content">
    <?= $this->Form->create($equipament) ?>
    <fieldset>
        <legend><?= __('Add Equipament') ?></legend>
        <?php
            echo $this->Form->control('name');
            echo $this->Form->control('code');
            echo $this->Form->control('description');
            echo $this->Form->control('in_stock');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
