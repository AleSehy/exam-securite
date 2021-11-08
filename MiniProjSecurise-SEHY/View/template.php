<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf8_general_ci">

    <title><?= $titlepage ?></title>
    <link rel="stylesheet" href="<?=style ?>">
</head>

<body>
    <header>
        <h1><?=$title ?></h1>
        <p><?=$soustitle ?></p>
    </header>
        <?= $content ?>
        <footer>
            Site réalisé avec PHP, HTML5 et CSS.
        </footer>
</body>