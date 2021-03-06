<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Loan[]|\Cake\Collection\CollectionInterface $loan
 */
    use Cake\I18n\Time;
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
<div class="loan index large-9 medium-8 columns content">
    <h2><?= __('Horario Atual: '.$time_now->format('d-m-Y H:i:s')) ?></h2>
    <?php if ($username_role===1): ?>
    <h3><?= __('Atrasados') ?></h3>
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
            <?php foreach ($atrasados as $loan): ?>
            <tr>
                <td><?= $this->Number->format($loan->id) ?></td>
                <td><?= $students->get($loan->student_id)->name  ?></td>
                <td><?= $equipaments1->get($loan->equipament_id)->name ?></td>
                <td><?php if(!(is_null($loan->created))){
                                $time = new Time($loan->created);
                                echo $time->format('d-m-Y H:i:s');  
                            }
                          ?></td>
                <td><?php if(!(is_null($loan->modified))){
                          $time = new Time($loan->modified);
                          echo $time->format('d-m-Y H:i:s'); } ?></td>
                <td><?php if(!(is_null($loan->scheduled_devolution))){
                          $time = new Time($loan->scheduled_devolution);
                          echo $time->format('d-m-Y H:i:s'); } ?></td>
                <td><?php if(!(is_null($loan->real_devolution))){
                          $time = new Time($loan->real_devolution);
                          echo $time->format('d-m-Y H:i:s');}  ?></td>
                <td><?php if(!(is_null($loan->real_borrow))){
                          $time = new Time($loan->real_borrow);
                          echo $time->format('d-m-Y H:i:s');}  ?></td>
                <td><?php if(!(is_null($loan->scheduled_borrow))){
                          $time = new Time($loan->scheduled_borrow);
                          echo $time->format('d-m-Y H:i:s');}  ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $loan->id]) ?>
                    <?php if ($username_role===1): ?>
<?= $this->Html->link(__('Edit'), ['action' => 'edit', $loan->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $loan->id], ['confirm' => __('Are you sure you want to delete # {0}?', $loan->id)]) ?>
<?php endif; ?>
                </td>
            </tr>
            <?php endforeach; ?>
             </tbody>
    </table>


<h3><?= __('Emprestados') ?></h3>
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
            <?php foreach ($emprestados as $loan): ?>
            <tr>
                <td><?= $this->Number->format($loan->id) ?></td>
                <td><?= $students->get($loan->student_id)->name  ?></td>
                <td><?= $equipaments1->get($loan->equipament_id)->name ?></td>
                 <td><?php if(!(is_null($loan->created))){
                                $time = new Time($loan->created);
                                echo $time->format('d-m-Y H:i:s');  
                            }
                          ?></td>
                <td><?php if(!(is_null($loan->modified))){
                          $time = new Time($loan->modified);
                          echo $time->format('d-m-Y H:i:s'); } ?></td>
                <td><?php if(!(is_null($loan->scheduled_devolution))){
                          $time = new Time($loan->scheduled_devolution);
                          echo $time->format('d-m-Y H:i:s'); } ?></td>
                <td><?php if(!(is_null($loan->real_devolution))){
                          $time = new Time($loan->real_devolution);
                          echo $time->format('d-m-Y H:i:s');}  ?></td>
                <td><?php if(!(is_null($loan->real_borrow))){
                          $time = new Time($loan->real_borrow);
                          echo $time->format('d-m-Y H:i:s');}  ?></td>
                <td><?php if(!(is_null($loan->scheduled_borrow))){
                          $time = new Time($loan->scheduled_borrow);
                          echo $time->format('d-m-Y H:i:s');}  ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $loan->id]) ?>
                    <?php if ($username_role===1): ?>
<?= $this->Html->link(__('Edit'), ['action' => 'edit', $loan->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $loan->id], ['confirm' => __('Are you sure you want to delete # {0}?', $loan->id)]) ?>
<?php endif; ?>
                </td>
            </tr>
            <?php endforeach; ?>
             </tbody>
    </table>
<?php endif; ?>

<h3><?= __('Próximos Emprestimos Daqui 2 Horas') ?></h3>
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
            <?php foreach ($prox_emprestimos as $loan ): ?>
            <tr>
                <td><?= $this->Number->format($loan->id) ?></td>
                <td><?= $students->get($loan->student_id)->name  ?></td>
                <td><?= $equipaments1->get($loan->equipament_id)->name ?></td>
                 <td><?php if(!(is_null($loan->created))){
                                $time = new Time($loan->created);
                                echo $time->format('d-m-Y H:i:s');  
                            }
                          ?></td>
                <td><?php if(!(is_null($loan->modified))){
                          $time = new Time($loan->modified);
                          echo $time->format('d-m-Y H:i:s'); } ?></td>
                <td><?php if(!(is_null($loan->scheduled_devolution))){
                          $time = new Time($loan->scheduled_devolution);
                          echo $time->format('d-m-Y H:i:s'); } ?></td>
                <td><?php if(!(is_null($loan->real_devolution))){
                          $time = new Time($loan->real_devolution);
                          echo $time->format('d-m-Y H:i:s');}  ?></td>
                <td><?php if(!(is_null($loan->real_borrow))){
                          $time = new Time($loan->real_borrow);
                          echo $time->format('d-m-Y H:i:s');}  ?></td>
                <td><?php if(!(is_null($loan->scheduled_borrow))){
                          $time = new Time($loan->scheduled_borrow);
                          echo $time->format('d-m-Y H:i:s');}  ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('Get'), ['action' => 'get', $loan->id]) ?>
                    <?php if ($username_role===1): ?>
<?= $this->Html->link(__('Edit'), ['action' => 'edit', $loan->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $loan->id], ['confirm' => __('Are you sure you want to delete # {0}?', $loan->id)]) ?>
<?php endif; ?>
                </td>
            </tr>
            <?php endforeach; ?>
             </tbody>
    </table>


    <h3><?= __('Kits Não Emprestados') ?></h3>
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


        <?php if (($username_role===1)): ?>
        <tbody>
            <?php $ja_emprestado=0; ?>
            <?php foreach ($equipaments as $equipament): ?>
            <?php foreach ($emprestados2 as $emprestado2): ?>
            <?php
            if((($equipament->id)==($emprestado2->equipament_id))){
                $ja_emprestado=1;
            }
            ?>
            <?php endforeach; ?>
            <?php
            if($ja_emprestado==0){
                 echo "<tr>
                    <td>".$this->Number->format($equipament->id)."</td>
                    <td>".($equipament->name)."</td>
                    <td>".($equipament->code)."</td>
                    <td>".($equipament->in_stock)."</td>
                    <td class='actions'>
                        ".$this->Html->link(__('View'), ['controller' => 'equipaments','action' => 'view', $equipament->id])."
                        ".$this->Html->link(__('Edit'), ['controller' => 'equipaments','action' => 'edit', $equipament->id])."
                        ".$this->Form->postLink(__('Delete'), ['controller' => 'equipaments','action' => 'delete', $equipament->id], ['confirm' => __('Are you sure you want to delete # {0}?', $equipament->id)])."
                    </td>
                </tr>" ;
                break;
            }
            ?>
            <?php $ja_emprestado=0; ?>
            <?php endforeach; ?>
        </tbody>
        <?php endif; ?>






        <?php if (($username_role===2)||(!$username)): ?>
        <tbody>
            <?php $ja_emprestado=0; ?>
            <?php foreach ($equipaments as $equipament): ?>
            <?php foreach ($emprestados2 as $emprestado2): ?>
            <?php
            if((($equipament->id)==($emprestado2->equipament_id))){
                $ja_emprestado=1;
            }
            ?>
            <?php endforeach; ?>
            <?php
            if($ja_emprestado==0){
                 echo "<tr>
                    <td>".$this->Number->format($equipament->id)."</td>
                    <td>".($equipament->name)."</td>
                    <td>".($equipament->code)."</td>
                    <td>".($equipament->in_stock)."</td>
                    <td class='actions'>
                    </td>
                </tr>" ;
                break;
            }
            ?>
            <?php $ja_emprestado=0; ?>
            <?php endforeach; ?>
        </tbody>
        <?php endif; ?>

    </table>
    
</div>
