<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Equipament $equipament
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
        <?php if (!$username): ?>
        <ul class="side-nav">
            <li class="heading"><?= __('Actions') ?></li>
            <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Login'), ['controller' => 'Users', 'action' => 'login']) ?></li>
            <li><?= $this->Html->link(__('Novo Empréstimo'), ['controller' => 'Loan', 'action' => 'newloan']) ?></li>
        </ul>
        <?php endif; ?>
        <?php if ($username_role===2): ?>
        <ul class="side-nav">
            <li class="heading"><?= __('User Actions') ?></li>
            <li><?= $this->Html->link(__('Novo Empréstimo'), ['controller' => 'Loan', 'action' => 'newloan']) ?></li>
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
            <li><?= $this->Html->link(__('Todos os Equipamentos'), ['controller' => 'equipaments', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('Adicioanr um Equipamentos'), ['controller' => 'equipaments', 'action' => 'add']) ?></li>
        </ul>
        <?php endif; ?>
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
