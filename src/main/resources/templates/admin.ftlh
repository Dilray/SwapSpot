<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SwapSpot - Панель администратора</title>
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
            <li class="nav-item"><a class="nav-link" href="/admin">Админка</a></li>
            <li class="nav-item"><a class="nav-link" href="/logout">Выход</a></li>
        </ul>
    </div>
</nav>

<div class="container mt-4">
    <h1>SwapSpot</h1>
    <hr>
    <h4>Панель администратора</h4>

    <div class="table-responsive">
        <table class="table table-bordered">
            <thead class="thead-light">
            <tr>
                <th>Email</th>
                <th>Номер телефона</th>
                <th>Активность</th>
                <th>Роли</th>
                <th>Бан</th>
                <th>Редактирование</th>
                <th>Подробная информация</th>
            </tr>
            </thead>
            <tbody>
            <#list users as user>
                <tr>
                    <td>${user.email}</td>
                    <td>${user.phoneNumber}</td>
                    <td><#if user.active>true<#else>false</#if></td>
                    <td><#list user.roles as role>${role}<#if role_has_next>, </#if></#list></td>
                    <td>
                        <form action="/admin/user/ban/${user.id}" method="post" style="display:inline;">
                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                            <input type="submit" value="Бан" class="btn btn-danger btn-sm">
                        </form>
                    </td>
                    <td><a href="/admin/user/edit/${user.id}" class="btn btn-warning btn-sm">Редактирование</a></td>
                    <td><a href="/user/${user.id}" class="btn btn-info btn-sm">Подробная информация</a></td>
                </tr>
            </#list>
            <#if users?size == 0>
                <tr>
                    <td colspan="7" class="text-center">Пользователей нет</td>
                </tr>
            </#if>
            </tbody>
        </table>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
