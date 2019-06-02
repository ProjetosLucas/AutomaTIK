<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Equipament $equipament
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Equipament'), ['action' => 'edit', $equipament->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Equipament'), ['action' => 'delete', $equipament->id], ['confirm' => __('Are you sure you want to delete # {0}?', $equipament->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Equipaments'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Equipament'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Loan'), ['controller' => 'Loan', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Loan'), ['controller' => 'Loan', 'action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="equipaments view large-9 medium-8 columns content">
    <h3><?= h($equipament->name) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Name') ?></th>
            <td><?= h($equipament->name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Code') ?></th>
            <td><?= h($equipament->code) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($equipament->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('In Stock') ?></th>
            <td><?= $equipament->in_stock ? __('Yes') : __('No'); ?></td>
        </tr>
    </table>
    <div class="row">
        <h4><?= __('Description') ?></h4>
        <?= $this->Text->autoParagraph(h($equipament->description)); ?>
    </div>
    <div class="related">
        <h4><?= __('Related Loan') ?></h4>
        <?php if (!empty($equipament->loan)): ?>
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
            <?php foreach ($equipament->loan as $loan): ?>
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
