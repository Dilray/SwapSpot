<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SwapSpot</title>
    <link rel="stylesheet" href="styles.css"> <!-- Добавьте ваш CSS файл, если требуется -->
</head>
<body>
<h1>SwapSpot</h1>
<hr>

<#if user.email??>
    <h3>Имя пользователя: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Выйти"/>
    </form>

    <#if user.isAdmin()>
        <a href="/admin">Панель администратора</a>
    <#else>
        <a href="/login">Войти</a>
    </#if>
<#else>
    <a href="/login">Войти</a>
</#if>

<hr>
<h4>Товары со всей России</h4>

<#list products as product>
    <div>
        <p><b>${product.title}</b> - ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
</#list>

<#if user.email??>
    <hr>
    <h3>Создать новый товар</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        <label for="title">Название объявления:</label>
        <input type="text" id="title" name="title" required /><br><br>

        <label for="description">Описание объявления:</label>
        <input type="text" id="description" name="description" required /><br><br>

        <label for="price">Цена:</label>
        <input type="number" id="price" name="price" required /><br><br>

        <label for="city">Город:</label>
        <input type="text" id="city" name="city" required /><br><br>

        <label for="file1">Первая фотография:</label>
        <input type="file" id="file1" name="file1" accept="image/*" /><br><br>

        <label for="file2">Вторая фотография:</label>
        <input type="file" id="file2" name="file2" accept="image/*" /><br><br>

        <label for="file3">Третья фотография:</label>
        <input type="file" id="file3" name="file3" accept="image/*" /><br><br>

        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Добавить товар"/>
    </form>
</#if>
</body>
</html>
