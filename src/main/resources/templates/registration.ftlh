<!DOCTYPE html>
<html>
<head>
    <title>SwapSpot</title>
</head>
<body>
<h1>SwapSpot</h1><hr>
<h4>Регистрация</h4>
<form action="/registration" method="post">
    Имя пользователя: <label>
        <input type="text" name="name">
    </label><br><br>
    Эл. почта: <label>
        <input type="email" name="email">
    </label><br><br>
    Номер телефона: <label>
        <input type="text" name="phoneNumber">
    </label><br><br>
    Пароль: <label>
        <input type="password" name="password">
    </label><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Зарегистрироваться"/>
</form>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>