<%-- 
    Document   : updatepatients
    Created on : 04-Feb-2023, 10:23:20 AM
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
    <main>
        <div class="navi container">
            <nav class="navbar bg-body-emphasis">
                <div class="container-fluid">
                    <div class="logo">HMS</div>
                    <a class="navbar-brand tm">Hospital Management System</a>

                    <form action="admindashboard">
                        <button type="submit" class="btn btn-lg btn-outline-light"></button>
                    </form>
            </nav>
            
        </div>
        
        <form action="processpupdate" method="post" class="container form" align="center">
            <div class="row">
                <h1>Fill Patient detail</h1>
            </div>
            <div class="row">
                <div class="row">
                    <div class="col-2"></div>
                    
                    <div class="col-2">
                        <h4>Name</h4>
                    </div>

                    <div class="col-5 form-group">
                        <input type="text" name="name" class="form-control" required>
                    </div>

                    <div class="col-2"></div>
                </div>


                <div class="row">
                    <div class="col-2"></div>
                    
                    <div class="col-2">
                        <h4>Date of Birth</h4>
                    </div>

                    <div class="col-5 form-group">
                        <input type="date" name="dob" class="form-control" required>
                    </div>

                    <div class="col-2"></div>
                </div>

                <div class="row">
                    <div class="col-2"></div>
                    
                    <div class="col-2">
                        <h4 style="margin-top: 25px;" >Address</h4>
                    </div>

                    <div class="col-5 form-group">
                        <textarea rows="3" name="address" placeholder="" class="form-control" id="" required></textarea>                        
                    </div>

                    <div class="col-2"></div>
                </div>


                <div class="row">
                    <div class="col-2"></div>
                    
                    <div class="col-2">
                        <h4>Age</h4>
                    </div>

                    <div class="col-5 form-group">
                        <input type="number" name="age" class="form-control" required>
                    </div>

                    <div class="col-2"></div>
                </div>


                <div class="row">
                    <div class="col-2"></div>
                    
                    <div class="col-2">
                        <h4>Gender</h4>
                    </div>

                    <div class="col-5 form-group">
                        <div class="row" style="margin-top:-15px ;">
                            <div class="col-4"><input type="radio" name="gender" id="" value="Male" checked> Male</div>
                            <div class="col-4"><input type="radio" name="gender" id="" value="Female"> Female</div>
                            <div class="col-4"><input type="radio" name="gender" id="" value="Others"> Others</div>
                        </div>
                    </div>

                    <div class="col-2"></div>
                </div>


                <div class="row">
                    <div class="col-2"></div>
                    
                    <div class="col-2">
                        <h4>Blood Group</h4>
                    </div>

                    <div class="col-5 form-group">
                        <select class="form-select" name="bloodgroup" id="validationCustom04" required>
                            <option selected disabled value="NULL">Choose</option>
                            <option value="A+" >A+</option>
                            <option value="A-" >A-</option>
                            <option value="B+" >B+</option>
                            <option value="B-">B-</option>
                            <option value="O+">O+ </option>
                            <option value="O-">O-</option>
                            <option value="AB+">AB+</option>
                            <option value="AB-">AB-</option>
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
                        <input type="text" name="healthissue" class="form-control" required>
                    </div>

                    <div class="col-2"></div>
                </div>

                
            </div>
            <div class="row">
                    <div class="col-5"></div>
                    <div class="col-2">
                        <button type="submit" name="id" value="${id}" class="btn btn-lg btn-light" >Submit</button>
                    </div>
                <div class="col-5"></div>
            </div>
        </form>

    </main>
</body>

</html>