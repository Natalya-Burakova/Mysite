<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>Log In</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script>
        $( document ).ready(function() {
            $('#s-h-pass').click(function(){
                var type = $('#password').attr('type') == "text" ? "password" : 'text',
                    c = $(this).html() == "<span class=\"glyphicon glyphicon-eye-close\" title=\"Скрыть пароль\"></span>" ? "<span class=\"glyphicon glyphicon-eye-open\" title=\"Показать пароль\"></span>" : "<span class=\"glyphicon glyphicon-eye-close\" title=\"Скрыть пароль\"></span>";
                $(this).html(c);
                $('#password').prop('type', type);
            });
        });
    </script>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<div class="container">
    <h1>Авторизация</h1>
    <form method="post" action="/logIn"  class="my-form">
        <div class="form-group">
            <label><%=request.getAttribute("er")%></label>
        </div>
        <div class="form-group">
            <label for="login">Введите логин:</label>
            <input id="login" name = "login" type="text" placeholder="Логин" class="form-control" required />
        </div>
        <div class="form-group">
            <label for="password">Введите пароль:</label>
            <div class="input-group">
                <input id="password" name="password" type="password" placeholder="Пароль" class="form-control" required />
                <div class="input-group-addon" id="s-h-pass"><span class="glyphicon glyphicon-eye-open" title="Показать пароль"></span></div>
            </div>
        </div>
        <div class="form-group">
            <input id="log in" type="submit" value="Вход" class="btn btn-success pull-right" />
        </div>
    </form>
</div>
</body>
</html>