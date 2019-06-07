<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Loan $loan
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List Loan'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Students'), ['controller' => 'Students', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Student'), ['controller' => 'Students', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Equipaments'), ['controller' => 'Equipaments', 'action' => 'index']) ?></li>
        <?php if ($username_role===1): ?>
<li><?= $this->Html->link(__('New Equipament'), ['controller' => 'Equipaments', 'action' => 'add']) ?></li>
<?php endif; ?>
    </ul>
</nav>
<div class="loan form large-9 medium-8 columns content">
            <?php foreach ($students2 as $student2): ?>
            <?php
                if((($username_id)==($student2->user_id))){
                  $student_id=$student2->id;
                }
            ?>
            <?php endforeach; ?>
    <?= $this->Form->create($loan) ?>
    <fieldset>
        <legend><?= __('Add Loan') ?></legend>
        <?php
            
            echo $this->Form->control('scheduled_borrow', ['empty' => true]);
            echo $this->Form->control('scheduled_devolution', ['empty' => true]);
            echo $this->Form->control('student_id', ['options' => $students, 'type' => 'hidden', 'value' => ($student_id)]);
            echo $this->Form->control('equipament_id', ['options' => $equipaments]);
            echo $this->Form->control('real_devolution', ['empty' => true, 'type' => 'hidden']);
            echo $this->Form->control('real_borrow', ['empty' => true, 'type' => 'hidden']);
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
