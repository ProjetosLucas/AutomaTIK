<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Sector $sector
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Sector'), ['action' => 'edit', $sector->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Sector'), ['action' => 'delete', $sector->id], ['confirm' => __('Are you sure you want to delete # {0}?', $sector->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Sectors'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Sector'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Students'), ['controller' => 'Students', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Student'), ['controller' => 'Students', 'action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="sectors view large-9 medium-8 columns content">
    <h3><?= h($sector->name) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Name') ?></th>
            <td><?= h($sector->name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($sector->id) ?></td>
        </tr>
    </table>
    <div class="related">
        <h4><?= __('Related Students') ?></h4>
        <?php if (!empty($sector->students)): ?>
        <table cellpadding="0" cellspacing="0">
            <tr>
                <th scope="col"><?= __('Id') ?></th>
                <th scope="col"><?= __('Code') ?></th>
                <th scope="col"><?= __('Cpf') ?></th>
                <th scope="col"><?= __('Sector Id') ?></th>
                <th scope="col"><?= __('Fone') ?></th>
                <th scope="col"><?= __('Name') ?></th>
                <th scope="col"><?= __('Registration') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
            <?php foreach ($sector->students as $students): ?>
            <tr>
                <td><?= h($students->id) ?></td>
                <td><?= h($students->code) ?></td>
                <td><?= h($students->cpf) ?></td>
                <td><?= h($students->sector_id) ?></td>
                <td><?= h($students->fone) ?></td>
                <td><?= h($students->name) ?></td>
                <td><?= h($students->registration) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['controller' => 'Students', 'action' => 'view', $students->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['controller' => 'Students', 'action' => 'edit', $students->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['controller' => 'Students', 'action' => 'delete', $students->id], ['confirm' => __('Are you sure you want to delete # {0}?', $students->id)]) ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </table>
        <?php endif; ?>
    </div>
</div>
