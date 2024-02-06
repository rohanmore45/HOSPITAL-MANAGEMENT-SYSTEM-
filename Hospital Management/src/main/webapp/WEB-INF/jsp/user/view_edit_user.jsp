
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Admin|View</title>
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
        margin-bottom: 40px;
    }
    h3{
        margin-bottom: 50px;
    }
    .pviews{
        background: #121212aa;
        padding: 30px;
        border-radius: 30px;
    }
    .inview{
        margin-top: 20px;
        margin-bottom: 20px
    }
    .no{
        font-size: 2em;
        margin: 10px;
    }
</style>


                <%
                    String m7 = (String) request.getAttribute("n9");
                    String m1 = (String) request.getAttribute("n1");
                    String m2 = (String) request.getAttribute("n2");
                    String m3 = (String) request.getAttribute("n3");
                    String m4 = (String) request.getAttribute("n4");
                    String m5 = (String) request.getAttribute("n5"); 
                %>
                 


<body>
 
    <main class="main">

        <div class="navi container">
            <nav class="navbar bg-body-emphasis">
                <div class="container-fluid">
                    <div class="logo">HMS</div>
                    <a class="navbar-brand tm">Hospital Management System</a>

                    <form action="use">
                            <button type="submit" name="user1" value="<%=m7%>" class="btn btn-lg btn-outline-light">DASHBOARD</button>
                        </form>
            </nav>
        </div>

        <div class="title" align="center">
            <h1>VIEW PATIENT DETAILS</h1>
        </div>
        <div class="container">

            <div class="pviews row">
                <!--start-->
                <div class="col-2">Name</div>
                <div class="col-1">Age</div>
                <div class="col-2">Gender</div>
                <div class="col-2" style="margin-left: -30px">Blood Group</div>
                <div class="col-3" style="margin-left: 10px">Health Issue</div>
                <!--end-->       
                <br> <br> <hr> <br>
                
                <%for(int i =0; i<1; i++){%>
                <div class="inview row">
                    <div class="col-2"><%=m1%></div>
                    <div class="col-1"><%=m2%></div>
                    <div class="col-2"><%=m3%></div>
                    <div class="col-2" ><%=m4%></div>
                    <div class="col-3"><%=m5%></div>
                    
                    <div class="col-1">
                        <form method="post" action="update_user">
                            <input type="hidden" name="id" value="<%=m7%>" /> 
                            <a onclick="this.parentNode.submit();"><i class="fa fa-pencil-square-o ub" aria-hidden="true"></i></a>
                          </form>
                    </div>
                </div>
                <%}%>

            </div>
            
        </div>
        
                        

                            
    </main>
      
</div>
</body>



</html>