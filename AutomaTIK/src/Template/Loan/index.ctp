<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Loan[]|\Cake\Collection\CollectionInterface $loan
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New Loan'), ['action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Students'), ['controller' => 'Students', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Student'), ['controller' => 'Students', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Equipaments'), ['controller' => 'Equipaments', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Equipament'), ['controller' => 'Equipaments', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="loan index large-9 medium-8 columns content">
    <h3><?= __('Loan') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th scope="col"><?= $this->Paginator->sort('id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('student_id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('equipament_id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('created') ?></th>
                <th scope="col"><?= $this->Paginator->sort('modified') ?></th>
                <th scope="col"><?= $this->Paginator->sort('scheduled_devolution') ?></th>
                <th scope="col"><?= $this->Paginator->sort('real_devolution') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($loan as $loan): ?>
            <tr>
                <td><?= $this->Number->format($loan->id) ?></td>
                <td><?= $loan->has('student') ? $this->Html->link($loan->student->name, ['controller' => 'Students', 'action' => 'view', $loan->student->id]) : '' ?></td>
                <td><?= $loan->has('equipament') ? $this->Html->link($loan->equipament->id, ['controller' => 'Equipaments', 'action' => 'view', $loan->equipament->id]) : '' ?></td>
                <td><?= h($loan->created) ?></td>
                <td><?= h($loan->modified) ?></td>
                <td><?= h($loan->scheduled_devolution) ?></td>
                <td><?= h($loan->real_devolution) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $loan->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $loan->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $loan->id], ['confirm' => __('Are you sure you want to delete # {0}?', $loan->id)]) ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->first('<< ' . __('first')) ?>
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
            <?= $this->Paginator->last(__('last') . ' >>') ?>
        </ul>
        <p><?= $this->Paginator->counter(['format' => __('Page {{page}} of {{pages}}, showing {{current}} record(s) out of {{count}} total')]) ?></p>
    </div>
</div>
