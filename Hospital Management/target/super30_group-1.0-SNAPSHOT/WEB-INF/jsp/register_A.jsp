<%-- 
    Document   : register
    Created on : 04-Feb-2023, 10:15:19 AM
    Author     : Vedan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>HMS|Register</title>
</head>

<style>
    body {
        background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6fUv6M-CaAQhYKPhfbacUpUCinCeQKIaMEQ&usqp=CAU");
        color: white;
        background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
    }

    .rb {
        background: #121212b0;
        width: fit-content;
        font-size: 1.5em;
        padding: 50px 50px 20px 50px;
        margin-top: 100px;
        border-radius: 20px;
    }

    input {
        font-size: 20px;
        border-radius: 10px;
    }

    .row {
        padding-bottom: 20px;
    }

    h1 {
        margin-bottom: 40px;
    }
</style>

<body>

    <main class="container rb" align="center">
        <form action="registerred_A" method="post">
            <div class="row">
                <h1>Register </h1>
            </div>
            <div class="row">
                <div class="col-5">
                    <div class="row">Your-Name</div>
                    <div class="row">Your-Age</div>
                    <div class="row">Your-Role</div>
                    <div class="row">Set-Username</div>
                    <div class="row">Set-Password</div>
                </div>
                <div class="col-7">
                    <div class="row"><input name="name" type="text" placeholder="enter your name" required></div>
                    <div class="row"><input name="age" type="text" placeholder="enter your age" required></div>
                    <div class="row"><input name="role" type="text" placeholder="enter your role" required></div>
                    <div class="row"><input name="username" type="text" placeholder="set your username" required></div>
                    <div class="row"><input name="password" type="password" placeholder="set your password" required></div>
                </div>
            </div>
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">
                    <button type="submit" class="btn btn-lg btn-outline-light">Register</button>
                </div>
                <div class="col-4"></div>
            </div>
        </form>

    </main>
</body>

</html>