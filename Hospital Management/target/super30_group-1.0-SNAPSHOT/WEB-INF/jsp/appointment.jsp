<%-- 
    Document   : appointment
    Created on : 24-Feb-2023, 12:10:18 PM
    Author     : Vedan
--%>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Add patient</title>
</head>
<style>
    body {
        background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6fUv6M-CaAQhYKPhfbacUpUCinCeQKIaMEQ&usqp=CAU");
        color: white;
        background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
    }

    .logo,.tm {
        font-size: 3em;
        color: white;
        font-weight: 700;
    }

    .navi {
        margin-bottom: 10px;
    }

    h1 {
        animation: pch 4s infinite;

    }
    @keyframes pch {
        0%{margin-left: -100px; }
        50%{margin-left: 100px; }
               100%{margin-left: -100px;}
    }

    form  .row{
        padding-top:20px ;
    }

</style>

<body>
    
    <%
            String b1 = (String) request.getAttribute("user82");
            %>
    <main>
        <div class="navi container">
            <nav class="navbar bg-body-emphasis">
                <div class="container-fluid" center>
                    <div class="logo">HMS</div>
                    <a class="navbar-brand tm">Hospital Management System</a>
                    
                    <form action="use">
                            <button type="submit" name="user1" value="<%=b1%>" class="btn btn-lg btn-outline-light">Dashboard</button>
                        </form>
      
                </div>
            </nav>
        </div>
        
        <form action="appoint_add" method="post" class="container form" align="center">
            <div class="row">
                <h1>Book Appointment</h1>
            </div>
            <div class="row">
                <div class="row">
                    <div class="col-2"></div>
                    
                    <div class="col-2">
                        <h4>Name of patient</h4>
                    </div>

                    <div class="col-5 form-group">
                        <input type="text" placeholder="Enter name" name="name" class="form-control" required>
                    </div>

                    <div class="col-2"></div>
                </div>
                
<!--                <div class="row">
                    <div class="col-2"></div>
                    
                    <div class="col-2">
                        <h4>Username</h4>
                    </div>

                    <div class="col-5 form-group">
                        <input type="text" placeholder="Enter Username" name="username" class="form-control" required>
                    </div>

                    <div class="col-2"></div>
                </div>-->
                
                <div class="row">
                    <div class="col-2"></div>
                    
                    <div class="col-2">
                        <h4>Doctor</h4>
                    </div>

                    <div class="col-5 form-group">
                        <select class="form-select" name="doctor" id="validationCustom04" required>
                            <option selected disabled value="NULL">Select doctor</option>
                            <option value="vyas" >dr. Vyas</option>
<!--                            <option value="Patil">dr. Patil</option>
                            <option value="Bhosale">dr. Bhosale</option>
                            <option value="Nemade">dr. Nemade</option>-->
                            <option value="suresh ">dr. Suresh </option>
                            <option value="rohit">dr. Rohit</option>
                            <option value="Ashutosh">dr. Ashutosh</option>
                            <option value="vedxnt">dr. vedxnt</option>
                            </select>
                    </div>

                    <div class="col-2"></div>
                </div>

                <div class="row">
                    <div class="col-2"></div>
                    
                    <div class="col-2">
                        <h4>Health Issues</h4>
                    </div>

                    <div class="col-5 form-group">
                        <input type="text" placeholder="Enter health issue" name="healthissue" class="form-control" required>
                    </div>

                    <div class="col-2"></div>
                </div>
                
                
                
                
                

                
            </div>
            <div class="row">
                    <div class="col-5"></div>
                    <div class="col-2">
                        <button type="submit" name="user3" value="<%=b1%>" class="btn btn-lg btn-light" >Submit</button>
                    </div>
                <div class="col-5"></div>
            </div>
        </form>

    </main>
</body>

</html>
