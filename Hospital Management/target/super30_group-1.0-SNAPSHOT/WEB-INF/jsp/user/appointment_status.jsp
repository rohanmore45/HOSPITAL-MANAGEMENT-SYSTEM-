<%-- 
    Document   : appointment_status
    Created on : 25-Feb-2023, 9:17:36 AM
    Author     : Vedan
--%>

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
    String m1 = (String) request.getAttribute("imp");
%>

                <%
                    
                    Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","root@123");
            
                    String username[] = new String[100];
                    String name[] = new String[100];
                    String doctor[] = new String[100];
                    String status[] = new String[100];
                    String health[] = new String[100];

          PreparedStatement stmt=con.prepareStatement("select * from appointment where username=?"); 
          stmt.setString(1, m1);
           ResultSet rs1 = stmt.executeQuery();
           int j =0;
           while(rs1.next()){
           username[j] = rs1.getString("username");
           name[j] = rs1.getString("name");
           doctor[j]= rs1.getString("doctor");
           status[j]=rs1.getString("status");
           health[j]=rs1.getString("health_i");
           j++;
                    }
          
                    
                %>
                 


<body>
 
    <main class="main">

        <div class="navi container">
            <nav class="navbar bg-body-emphasis">
                <div class="container-fluid">
                    <div class="logo">HMS</div>
                    <a class="navbar-brand tm">Hospital Management System</a>

                    <form action="use">
                            <button type="submit" name="user1" value="<%=m1%>" class="btn btn-lg btn-outline-light">DASHBOARD</button>
                        </form>
            </nav>
        </div>

        <div class="title" align="center">
            <h1>Check appointment status</h1>
        </div>
        <div class="container">

            <div class="pviews row">
                <!--start-->
                <div class="col-2">Name</div>
                <div class="col-1">Username</div>
                <div class="col-2">Consulting doctor</div>
                <div class="col-2" style="margin-left: -30px">Appointment Status</div>
                <div class="col-3" style="margin-left: 10px">Health Issue</div>
                <!--end-->       
                <br> <br> <hr> <br>
                <% 
                if(j==0){%>
                <div class="no" align="center">
                    No Appointments !
                </div>
                <%}else{%>
                <%for(int i =0; i<j; i++){%>
                <div class="inview row">
                    <div class="col-2"><%=name[i]%></div>
                    <div class="col-1"><%=username[i]%></div>
                    <div class="col-2"><%=doctor[i]%></div>
                    <div class="col-2" ><%=status[i]%></div>
                    <div class="col-3"><%=health[i]%></div>

                </div>
                <%}}%>

            </div>
            
        </div>
        
                        

                            
    </main>
      
</div>
</body>



</html>