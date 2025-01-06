<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Редактирование пользователя - SwapSpot</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">SwapSpot</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Переключить навигацию">
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
    <h3 class="text-center">Редактирование пользователя ${user.name}</h3>
    <form action="/admin/user/edit" method="post" class="mt-4">
        <#list roles as role>
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="${role}" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>
                <label class="form-check-label" for="${role}">${role}</label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}-" name="_csrf">
        <button type="submit" class="btn btn-primary mt-3">Сохранить</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
