<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Loan[]|\Cake\Collection\CollectionInterface $loan
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
        <?php if (!$username): ?>
        <ul class="side-nav">
            <li class="heading"><?= __('Actions') ?></li>
            <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Login'), ['controller' => 'Users', 'action' => 'login']) ?></li>
        </ul>
        <?php endif; ?>
        <?php if ($username_role===2): ?>
        <ul class="side-nav">
            <li class="heading"><?= __('User Actions') ?></li>
            <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Login'), ['controller' => 'Users', 'action' => 'login']) ?></li>
        </ul>
        <?php endif; ?>
        <?php if ($username_role===1): ?>
        <ul class="side-nav">
            <li class="heading"><?= __('Admin Actions') ?></li>
            <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Login'), ['controller' => 'Users', 'action' => 'login']) ?></li>
        </ul>
        <?php endif; ?>
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
                <th scope="col"><?= $this->Paginator->sort('real_borrow') ?></th>
                <th scope="col"><?= $this->Paginator->sort('scheduled_borrow') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($loan as $loan): ?>
            <tr>
                <td><?= $this->Number->format($loan->id) ?></td>
                <td><?= $loan->has('student') ? $this->Html->link($loan->student->name, ['controller' => 'Students', 'action' => 'view', $loan->student->id]) : '' ?></td>
                <td><?= $loan->has('equipament') ? $this->Html->link($loan->equipament->name, ['controller' => 'Equipaments', 'action' => 'view', $loan->equipament->id]) : '' ?></td>
                <td><?= h($loan->created) ?></td>
                <td><?= h($loan->modified) ?></td>
                <td><?= h($loan->scheduled_devolution) ?></td>
                <td><?= h($loan->real_devolution) ?></td>
                <td><?= h($loan->real_borrow) ?></td>
                <td><?= h($loan->scheduled_borrow) ?></td>
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
    <h3><?= __('Equipaments') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th scope="col"><?= $this->Paginator->sort('id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('name') ?></th>
                <th scope="col"><?= $this->Paginator->sort('code') ?></th>
                <th scope="col"><?= $this->Paginator->sort('in_stock') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($equipaments as $equipament): ?>
            <tr>
                <td><?= $this->Number->format($equipament->id) ?></td>
                <td><?= h($equipament->name) ?></td>
                <td><?= h($equipament->code) ?></td>
                <td><?= h($equipament->in_stock) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $equipament->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $equipament->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $equipament->id], ['confirm' => __('Are you sure you want to delete # {0}?', $equipament->id)]) ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    
</div>
