<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Student $student
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
        </ul>
        <?php endif; ?>
        <?php if ($username_role===1): ?>
        <ul class="side-nav">
            <li class="heading"><?= __('Admin Actions') ?></li>
            <li><?= $this->Html->link(__('Todos os Setores'), ['controller' => 'Sectors', 'action' => 'index']) ?></li>
            <li><?= $this->Html->link(__('Download Todos os Setores'), ['controller' => 'Sectors', 'action' => 'download']) ?></li>
            <li><?= $this->Html->link(__('Adiciona um Setor'), ['controller' => 'Sectors', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Todos os Usuários'), ['controller' => 'Users', 'action' => 'index']) ?></li>
            <li><?= $this->Html->link(__('Download Todos os Usuários'), ['controller' => 'Users', 'action' => 'download']) ?></li>
            <li><?= $this->Html->link(__('Add um Usuário'), ['controller' => 'Users', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Todos os Empréstimos'), ['controller' => 'Loan', 'action' => 'index']) ?></li>
            <li><?= $this->Html->link(__('Download Todos os Emprestimos'), ['controller' => 'Loan', 'action' => 'download']) ?></li>
            <li><?= $this->Html->link(__('Adiciona um Empréstimos'), ['controller' => 'Loan', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Todos os Estudantes'), ['controller' => 'Students', 'action' => 'index']) ?></li>
            <li><?= $this->Html->link(__('Download Todos os Estudantes'), ['controller' => 'Students', 'action' => 'download']) ?></li>
            <li><?= $this->Html->link(__('Adicionar um Estudante'), ['controller' => 'Students', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Todos os Kits'), ['controller' => 'equipaments', 'action' => 'index']) ?></li>
            <li><?= $this->Html->link(__('Download Todos os Kits'), ['controller' => 'equipaments', 'action' => 'download']) ?></li>
            <li><?= $this->Html->link(__('Adicionar um Kits'), ['controller' => 'equipaments', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Ler o Código de Barras'), ['controller' => 'Loan', 'action' => 'barcode-scan']) ?></li>
        </ul>
        <?php endif; ?>
</nav>
<div class="students form large-9 medium-8 columns content">
    <?= $this->Form->create($student) ?>
    <fieldset>
        <legend><?= __('Ainda não foi registrado completamente. Escreva as suas informações.') ?></legend>
        <?php
            echo $this->Form->control('code');
            echo $this->Form->control('cpf');
            echo $this->Form->control('sector_id', ['options' => $sectors]);
            echo $this->Form->control('fone');
            echo $this->Form->control('name');
            echo $this->Form->control('email');
            echo $this->Form->control('registration');
            echo $this->Form->hidden('user_id', ['value'=>$username_id]);
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
