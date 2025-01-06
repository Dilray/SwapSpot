<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SwapSpot - Подробная информация о товаре</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">SwapSpot</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="/">Главная</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/about">О нас</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/contact">Контакты</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container mt-5">
    <h1 class="text-center">Подробная информация о товаре</h1>
    <hr>

    <div class="text-center mb-4">
        <#list images as img>
            <img src="/images/${img.id}" height="60px" class="img-thumbnail mx-2"/>
        </#list>
    </div>

    <div class="mb-4">
        <h4>Название товара:</h4>
        <p>${product.title}</p>

        <h4>Описание товара:</h4>
        <p>${product.description}</p>

        <h4>Цена товара:</h4>
        <p>${product.price} руб.</p>

        <h4>Город товара:</h4>
        <p>${product.city}</p>

        <h4>Автор:</h4>
        <p><a href="/user/${product.user.id}">${product.user.name}</a></p>
    </div>

    <a href="/" class="btn btn-primary">Вернуться на главную</a>
</div>

<!-- Подключение jQuery и Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
