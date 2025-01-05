<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SwapSpot</title>
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
            <li class="nav-item active">
                <a class="nav-link" href="#">Главная <span class="sr-only">(текущая)</span></a>
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
    <h1 class="text-center">SwapSpot</h1>
    <hr>

    <#if user.email??>
        <h3>Имя пользователя: <i>${user.name}</i></h3>
        <form action="/logout" method="post" class="mt-2">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="btn btn-danger">Выйти</button>
        </form>

        <#if user.isAdmin()>
            <a href="/admin" class="btn btn-warning mt-2">Панель администратора</a>
        </#if>
    <#else>
        <a href="/login" class="btn btn-primary mt-2">Войти</a>
    </#if>

    <hr>
    <h4>Товары со всей России</h4>

    <div class="list-group">
        <#list products as product>
            <div class="list-group-item">
                <p><b>${product.title}</b> - ${product.price} руб. | <a href="/product/${product.id}" class="btn btn-link">Подробнее...</a></p>
            </div>
        </#list>
    </div>

    <#if user.email??>
        <hr>
        <h3>Создать новый товар</h3>
        <form action="/product/create" method="post" enctype="multipart/form-data" class="mt-4">
            <div class="form-group">
                <label for="title">Название объявления:</label>
                <input type="text" id="title" name="title" class="form-control" required />
            </div>

            <div class="form-group">
                <label for="description">Описание объявления:</label>
                <input type="text" id="description" name="description" class="form-control" required />
            </div>

            <div class="form-group">
                <label for="price">Цена:</label>
                <input type="number" id="price" name="price" class="form-control" required />
            </div>

            <div class="form-group">
                <label for="city">Город:</label>
                <input type="text" id="city" name="city" class="form-control" required />
            </div>

            <div class="form-group">
                <label for="file1">Первая фотография:</label>
                <input type="file" id="file1" name="file1" accept="image/*" class="form-control-file" />
            </div>

            <div class="form-group">
                <label for="file2">Вторая фотография:</label>
                <input type="file" id="file2" name="file2" accept="image/*" class="form-control-file" />
            </div>

            <div class="form-group">
                <label for="file3">Третья фотография:</label>
                <input type="file" id="file3" name="file3" accept="image/*" class="form-control-file" />
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="btn btn-success">Добавить товар</button>
        </form>
    </#if>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
