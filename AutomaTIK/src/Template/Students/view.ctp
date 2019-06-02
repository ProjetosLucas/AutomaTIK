<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Student $student
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Student'), ['action' => 'edit', $student->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Student'), ['action' => 'delete', $student->id], ['confirm' => __('Are you sure you want to delete # {0}?', $student->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Students'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Student'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Sectors'), ['controller' => 'Sectors', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Sector'), ['controller' => 'Sectors', 'action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Loan'), ['controller' => 'Loan', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Loan'), ['controller' => 'Loan', 'action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="students view large-9 medium-8 columns content">
    <h3><?= h($student->name) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Code') ?></th>
            <td><?= h($student->code) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Cpf') ?></th>
            <td><?= h($student->cpf) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Sector') ?></th>
            <td><?= $student->has('sector') ? $this->Html->link($student->sector->name, ['controller' => 'Sectors', 'action' => 'view', $student->sector->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Fone') ?></th>
            <td><?= h($student->fone) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Name') ?></th>
            <td><?= h($student->name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Email') ?></th>
            <td><?= h($student->email) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Registration') ?></th>
            <td><?= h($student->registration) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($student->id) ?></td>
        </tr>
    </table>
    <div class="related">
        <h4><?= __('Related Loan') ?></h4>
        <?php if (!empty($student->loan)): ?>
        <table cellpadding="0" cellspacing="0">
            <tr>
                <th scope="col"><?= __('Id') ?></th>
                <th scope="col"><?= __('Student Id') ?></th>
                <th scope="col"><?= __('Equipament Id') ?></th>
                <th scope="col"><?= __('Created') ?></th>
                <th scope="col"><?= __('Modified') ?></th>
                <th scope="col"><?= __('Scheduled Devolution') ?></th>
                <th scope="col"><?= __('Real Devolution') ?></th>
                <th scope="col"><?= __('Real Borrow') ?></th>
                <th scope="col"><?= __('Scheduled Borrow') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
            <?php foreach ($student->loan as $loan): ?>
            <tr>
                <td><?= h($loan->id) ?></td>
                <td><?= h($loan->student_id) ?></td>
                <td><?= h($loan->equipament_id) ?></td>
                <td><?= h($loan->created) ?></td>
                <td><?= h($loan->modified) ?></td>
                <td><?= h($loan->scheduled_devolution) ?></td>
                <td><?= h($loan->real_devolution) ?></td>
                <td><?= h($loan->real_borrow) ?></td>
                <td><?= h($loan->scheduled_borrow) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['controller' => 'Loan', 'action' => 'view', $loan->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['controller' => 'Loan', 'action' => 'edit', $loan->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['controller' => 'Loan', 'action' => 'delete', $loan->id], ['confirm' => __('Are you sure you want to delete # {0}?', $loan->id)]) ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </table>
        <?php endif; ?>
    </div>
</div>
