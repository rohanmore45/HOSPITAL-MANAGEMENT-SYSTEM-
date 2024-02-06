<%-- 
    Document   : view_edit
    Created on : 04-Feb-2023, 10:23:31 AM
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
            String m1 = (String) request.getAttribute("user");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","root@123");

            String role="patient";
            String name[]=new String[20];
            String age[]=new String[20];
            String blood[]=new String[20];
            String gender[]=new String[20];
            String issue[]=new String[20];
            int id[]=new int[20];
            PreparedStatement stmt1=con.prepareStatement("select * from  patients where role=?");  
            stmt1.setString(1, role);
            
            ResultSet rs = stmt1.executeQuery();

            int j=0;
            while (rs.next()) {
                name[j]=rs.getString("name");
                age[j]=rs.getString("age");
                blood[j]=rs.getString("blood_group");
                gender[j]=rs.getString("gender");
                issue[j]=rs.getString("health_issue");
                
                id[j]=rs.getInt("id") ;
                j++;
            }
           int x=j;
            %>


<body>
 
    <main class="main">

        <div class="navi container">
            <nav class="navbar bg-body-emphasis">
                <div class="container-fluid">
                    <div class="logo">HMS</div>
                    <a class="navbar-brand tm">Hospital Management System</a>

                    <form action="admindashboard">
                            <button type="submit" class="btn btn-lg btn-outline-light" name="user3" value="<%=m1%>">DASHBOARD</button>
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

                <% 
                if(x==0){%>
                <div class="no" align="center">
                    No Patients Present !
                </div>
                <%    }
for(int y=0;y<x;y++){ %>
                <div class="inview row">
                    <div class="col-2"><%=name[y]%></div>
                    <div class="col-1"><%=age[y]%></div>
                    <div class="col-2"><%=gender[y]%></div>
                    <div class="col-2" ><%=blood[y]%></div>
                    <div class="col-3"><%=issue[y]%></div>
                    <div class="col-1">
                        <form method="post" action="pdelete">
                            <a onclick="this.parentNode.submit();"><i class="fa fa-trash db" aria-hidden="true"></i></a>
                            <input type="hidden" name="id" value="<%=id[y]%>" /> 
                          </form>
                    </div>
                    <div class="col-1">
                        <form method="post" action="pupdate">
                            <input type="hidden" name="id" value="<%=id[y]%>" /> 
                            <a onclick="this.parentNode.submit();"><i class="fa fa-pencil-square-o ub" aria-hidden="true"></i></a>
                          </form>
                    </div>
                </div>
                    <% } %> 
            </div>
            
        </div>
        
                        

                            
    </main>
      
</body>

<script>
    $(function(){
        
        
        
        $('.db').on('click',function(){
            return confirm("Are you sure you want to Delete this Patients data?");
        });
        $('.ub').on('click',function(){
            return confirm("Are you sure you want to Update this Patients data?");
        });
    });

</script>

</html>