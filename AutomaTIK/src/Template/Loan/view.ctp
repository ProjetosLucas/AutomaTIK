<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Loan $loan
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Loan'), ['action' => 'edit', $loan->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Loan'), ['action' => 'delete', $loan->id], ['confirm' => __('Are you sure you want to delete # {0}?', $loan->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Loan'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Loan'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Students'), ['controller' => 'Students', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Student'), ['controller' => 'Students', 'action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Equipaments'), ['controller' => 'Equipaments', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Equipament'), ['controller' => 'Equipaments', 'action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="loan view large-9 medium-8 columns content">
    <h3><?= h($loan->id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Student') ?></th>
            <td><?= $loan->has('student') ? $this->Html->link($loan->student->name, ['controller' => 'Students', 'action' => 'view', $loan->student->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Equipament') ?></th>
            <td><?= $loan->has('equipament') ? $this->Html->link($loan->equipament->id, ['controller' => 'Equipaments', 'action' => 'view', $loan->equipament->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($loan->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created') ?></th>
            <td><?= h($loan->created) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Modified') ?></th>
            <td><?= h($loan->modified) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Scheduled Devolution') ?></th>
            <td><?= h($loan->scheduled_devolution) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Real Devolution') ?></th>
            <td><?= h($loan->real_devolution) ?></td>
        </tr>
    </table>
</div>
