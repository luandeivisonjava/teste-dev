<?php $this->layout('master') ?>

<h1>Conteúdo do Teste</h1>

<div class="card-5">
    <?php foreach ($cards as $card) : ?>

        <div class="card-1">
            <img src="<?= $card['images'] ?>" alt="" class="modal-trigger" data-modal="<?= $card['id'] ?>">
            <p><?= $card['name'] ?></p>
        </div>

    <?php endforeach; ?>

    <?php foreach ($cards as $card) : ?>

        <div id="myModal<?= $card['id'] ?>" class="modal">
            <div class="container">
                <span class="close" data-modal="<?= $card['id'] ?>">&times;</span>
                <h1><?= $card['name'] ?></h1>
                <img class="modal-content" id="modalImage<?= $card['id'] ?>">
                <p><?= $card['description'] ?></p>
            </div>
        </div>

    <?php endforeach; ?>
</div>