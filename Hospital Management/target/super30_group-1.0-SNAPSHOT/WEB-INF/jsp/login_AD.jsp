<%--    
    Document   : login
    Created on : 04-Feb-2023, 10:15:08 AM
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
    <title>HMS|Login</title>
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
        <form action="loggined_AD" method="post">
            <div class="row">
                <h1>Login</h1>
            </div>
            <div class="row">
                <div class="col-5">
                    <!-- <div class="row">Your-Name</div> -->
                    <div class="row">Username</div>
                    <div class="row">Password</div>
                    <div class="row">Role</div>
                </div>
                <div class="col-7">
                    <!-- <div class="row"><input name="name" type="text" placeholder="enter your name"></div> -->
                    <div class="row"><input name="username" type="text" placeholder="Enter Your Username" required></div>
                    <div class="row"><input name="password" type="password" placeholder="Enter Your Password"required></div>
                    <style>
                        .ut{
                            margin-top: 35px;
                        }
                        .mx{
                            padding-left: 10px;
                        }
                    </style>
                    <div class="ut"></div>
                    <div class=" form-group">
                        <div class="row" style="margin-top:-15px ;">
                            
                            <div class="col-6 "><input type="radio" name="role" id="" class="mx" value="doctor" checked> doctor  </div>
                            <div class="col-6"><input type="radio" name="role" id="" value="patient"> patient</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">
                    <button type="submit" class="btn btn-lg btn-outline-light">Login</button>
                </div>
                <div class="col-4"></div>
            </div>
        </form>

    </main>
</body>

</html>