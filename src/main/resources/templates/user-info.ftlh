<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SwapSpot</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">SwapSpot</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Переключить навигацию">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="/">Главная</a></li>
            <li class="nav-item"><a class="nav-link" href="/profile">Профиль</a></li>
            <li class="nav-item"><a class="nav-link" href="/products">Товары</a></li>
            <li class="nav-item"><a class="nav-link" href="/logout">Выход</a></li>
        </ul>
    </div>
</nav>

<div class="container mt-4">
    <hr>
    <h3>Подробная информация о пользователе ${user.name}</h3>
    <p><strong>Номер телефона:</strong> ${user.phoneNumber}</p>
    <p><strong>Электронная почта:</strong> ${user.email}</p>

    <h4>Товары пользователя ${user.name}</h4>
    <div class="list-group">
        <#list products as product>
            <a href="/product/${product.id}" class="list-group-item list-group-item-action">
                <strong>${product.title}</strong> - ${product.price} руб.
            </a>
        <#else>
            <div class="alert alert-warning" role="alert">
                Товаров нет
            </div>
        </#list>
    </div>

    <#if errorMessage??>
        <div class="alert alert-danger mt-4" role="alert">
            ${errorMessage}
        </div>
    </#if>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
