# SwapSpot

<!-- ![SwapSpot Logo](https://example.com/logo.png) -->

## Описание проекта

**SwapSpot** — это веб-приложение, разработанное с использованием фреймворка **Spring**, которое предоставляет пользователям платформу для покупки и продажи б/у вещей. Моя цель — создать удобное и безопасное пространство, где люди могут обмениваться товарами, находя новые возможности для покупки и продажи.

---

## Особенности

- **Легкий и интуитивно понятный интерфейс**: Пользователи могут быстро находить и размещать объявления.
- **Регистрация и авторизация**: Безопасный доступ к функционалу приложения.
- **Поиск и фильтрация**: Удобные инструменты для поиска товаров по категориям, цене и местоположению.
- **Отзывы и рейтинги**: Возможность оставлять отзывы о сделках для повышения доверия среди пользователей.

---

## Технологии

- **Java**: Основной язык программирования.
- **Spring Boot**: Фреймворк для создания RESTful веб-сервисов.
- **MySQL**: Реляционная база данных для хранения данных приложения.
- **Фронтенд-фреймворк**: Используется **Bootstrap** для создания современного и отзывчивого интерфейса.

---

## Установка

### Требования

- JDK 11 или выше
- Maven
- MySQL

### Шаги по установке

1. Клонируйте репозиторий:

   bash
   git clone https://github.com/dilray/swapspot.git
   

2. Перейдите в директорию проекта:
   
bash
   cd swapspot

   
3. Настройте базу данных MySQL:
   - Создайте новую базу данных (например, swapspot).
   - Настройте файл application.properties или application.yml для подключения к вашей базе данных MySQL. Пример настройки:

     properties
     spring.datasource.url=jdbc:mysql://localhost:3306/swapspot
     spring.datasource.username=вашеимяпользователя
     spring.datasource.password=ваш_пароль
     spring.jpa.hibernate.ddl-auto=update

     
4. Соберите проект с помощью Maven:

bash
   mvn clean install

   
5. Запустите приложение:

   bash
   mvn spring-boot:run

   
6. Откройте браузер и перейдите по адресу [http://localhost:8080](http://localhost:8080).

---

## Использование

1. Зарегистрируйтесь или войдите в систему.
2. Создайте новое объявление о продаже.

---

## Вклад

Я приветствую вклад от всех желающих! Если вы хотите внести свой вклад в проект, пожалуйста, создайте форк репозитория, внесите изменения и отправьте pull request.

---

## Лицензия

Отсутствует.

---

## Контакты

Если у вас есть вопросы или предложения, не стесняйтесь связаться со мной! Все контакты в шапке моего профиля.

