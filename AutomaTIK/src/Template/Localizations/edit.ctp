<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Localization $localization
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $localization->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $localization->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Localizations'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="localizations form large-9 medium-8 columns content">
    <?= $this->Form->create($localization) ?>
    <fieldset>
        <legend><?= __('Edit Localization') ?></legend>
        <?php
            echo $this->Form->control('text');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
