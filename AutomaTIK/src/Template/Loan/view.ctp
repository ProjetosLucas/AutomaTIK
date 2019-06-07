<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Loan $loan
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
        <?php if (!$username): ?>
        <ul class="side-nav">
            <li class="heading"><?= __('Actions') ?></li>
            <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Login'), ['controller' => 'Users', 'action' => 'login']) ?></li>
            <li><?= $this->Html->link(__('Novo Empréstimo'), ['controller' => 'Loan', 'action' => 'newloan']) ?></li>
        <li><?= $this->Html->link(__('Devolução'), ['controller' => 'Loan', 'action' => 'devolution']) ?></li>
        </ul>
        <?php endif; ?>
        <?php if ($username_role===2): ?>
        <ul class="side-nav">
            <li class="heading"><?= __('User Actions') ?></li>
            <li><?= $this->Html->link(__('Novo Empréstimo'), ['controller' => 'Loan', 'action' => 'newloan']) ?></li>
            <li><?= $this->Html->link(__('Devolução'), ['controller' => 'Loan', 'action' => 'devolution']) ?></li>
            <li><?= $this->Html->link(__('Meus Emprestados'), ['controller' => 'Students', 'action' => 'myloans']) ?></li>
        </ul>
        <?php endif; ?>
        <?php if ($username_role===1): ?>
        <ul class="side-nav">
            <li class="heading"><?= __('Admin Actions') ?></li>
            <li><?= $this->Html->link(__('Todos os Setores'), ['controller' => 'Sectors', 'action' => 'index']) ?></li>
            <li><?= $this->Html->link(__('Adiciona um Setor'), ['controller' => 'Sectors', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Todos os Usuários'), ['controller' => 'Users', 'action' => 'index']) ?></li>
            <li><?= $this->Html->link(__('Add um Usuário'), ['controller' => 'Users', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Todos os Empréstimos'), ['controller' => 'Loan', 'action' => 'index']) ?></li>
            <li><?= $this->Html->link(__('Adiciona um Empréstimos'), ['controller' => 'Loan', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Todos os Estudantes'), ['controller' => 'Students', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('Adicioanr um Estudante'), ['controller' => 'Students', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Todos os Kits'), ['controller' => 'equipaments', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('Adicioanr um Kits'), ['controller' => 'equipaments', 'action' => 'add']) ?></li>
        </ul>
        <?php endif; ?>
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
            <td><?= $loan->has('equipament') ? $this->Html->link($loan->equipament->name, ['controller' => 'Equipaments', 'action' => 'view', $loan->equipament->id]) : '' ?></td>
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
        <tr>
            <th scope="row"><?= __('Real Borrow') ?></th>
            <td><?= h($loan->real_borrow) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Scheduled Borrow') ?></th>
            <td><?= h($loan->scheduled_borrow) ?></td>
        </tr>
    </table>
</div>
