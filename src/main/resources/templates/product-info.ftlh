<!DOCTYPE html>
<html>
<head>
    <title>SwapSpot</title>
</head>
<body>
<h1>SwapSpot!</h1><hr>
<h4>Подробная информация о товаре</h4>
<img src="/images/${product.images.get(0)?if_exists}" height="60px"/><br><br>
<img src="/images/${product.images.get(1)?if_exists}" height="60px"/><br><br>
<img src="/images/${product.images.get(2)?if_exists}" height="60px"/><br><br>
<b>Название товара: </b>${product.title}<br>
<b>Описание товара: </b>${product.description}<br>
<b>Цена товара: </b>${product.price}<br>
<b>Город товара: </b>${product.city}<br>
<b>Имя продавца: </b>${product.author}<br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Удалить товар"/>
</form>
</body>
</html>