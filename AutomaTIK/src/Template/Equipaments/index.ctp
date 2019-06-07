<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Equipament[]|\Cake\Collection\CollectionInterface $equipaments
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <?php if ($username_role===1): ?>
<li><?= $this->Html->link(__('New Equipament'), ['action' => 'add']) ?></li>
<?php endif; ?>
        <li><?= $this->Html->link(__('List Loan'), ['controller' => 'Loan', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Loan'), ['controller' => 'Loan', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="equipaments index large-9 medium-8 columns content">
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
                    <?php if ($username_role===1): ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $equipament->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $equipament->id], ['confirm' => __('Are you sure you want to delete # {0}?', $equipament->id)]) ?>
                    <?php endif; ?>
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
