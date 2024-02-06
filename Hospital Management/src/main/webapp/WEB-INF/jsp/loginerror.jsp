<%-- 
    Document   : welcome
    Created on : 04-Feb-2023, 10:15:45 AM
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
    <title>Welcome</title>
</head>

<style>
   
    body {
        background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6fUv6M-CaAQhYKPhfbacUpUCinCeQKIaMEQ&usqp=CAU");
        color: white;
        background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;

    }

    .logo,
    .tm {
        font-size: 3em;
        color: white;
        font-weight: 700;
    }

    .navi {
        margin-bottom: 100px;
    }
    h1{
        margin-bottom: 80px;
    }
    h3{
        margin-bottom: 50px;
    }
</style>

<body>
    
    <main class="container-fluid" align="center" >
        <div class="navi container-fluid" >
            <nav class="navbar bg-body-emphasis">
                <div class="container">
                    <div class="logo">HMS</div>
                    <a class="navbar-brand tm">Hospital Management System</a>

                    <div class="d-flex btn-group" role="group" aria-label="Basic example">
                       
                        <form action="welcome">
                            <button type="submit" class="btn btn-lg btn-outline-light">Homepage</button>
                        </form>
                    </div>


            </nav>
        </div>

        <div class="inside">
            
            <h4>You have entered invalid credential<br> Try again</h4>
        </div>
    </main>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

</html>