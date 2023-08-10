<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/assets/css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,700;0,900;1,700&family=Ubuntu:wght@300;400;700&display=swap" rel="stylesheet">
    <title>Teste</title>
</head>

<body class="bg">
    <div class="hd">
        <header class="header">
            <label class="logo">L.Deivson</label>
            <div class="menu-toggle" id="menu-toggle">
                <div class="bar"></div>
                <div class="bar"></div>
                <div class="bar"></div>
            </div>
            <ul class="links" id="links">
                <li><a href="#">Pagina 1</a></li>
                <li><a href="#">Pagina 2</a></li>
                <li><a href="#">Pagina 3</a></li>
                <li><a href="#">Pagina 4</a></li>
                <li><a href="#">Pagina 5</a></li>
            </ul>
        </header>
    </div>

    <div class="container">
        <?php echo $this->section('content') ?>
    </div>

    <footer class="footer">
        <div class="container">
            <p>Projeto desenvolvido por <strong>Luan Deivson</strong> Slim Framework! </p>
        </div>
    </footer>
    <script src="/assets/js/script.js"></script>
</body>

</html>