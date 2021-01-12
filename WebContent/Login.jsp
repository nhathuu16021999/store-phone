<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="LOGIN.css">
    <title>Login page</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Orbitron');
    </style>
</head>
<body>
    <form class="box" action="/StorePhone/login" method="POST">
        <h1>Login</h1>
        <input type="text" name="userName" placeholder="Username">
        <input type="password" name="passWord" placeholder="Password">
        <input type="submit" name="" value="Login">
    </form>
</body>
</html>