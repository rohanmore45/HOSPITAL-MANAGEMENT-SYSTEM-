<%-- 
    Document   : admindashboard
    Created on : 04-Feb-2023, 10:23:02 AM
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
    <title>Admin|HMS</title>
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

<%
    String a1 = (String) request.getAttribute("user");
%>
<body>
    <main>
        <div class="navi container">
            <nav class="navbar bg-body-emphasis">
                <div class="container-fluid">
                    <div class="logo">HMS</div>
                    <a class="navbar-brand tm">Hospital Management System</a>

                    <form action="welcome">
                            <button type="submit" class="btn btn-lg btn-outline-light">Logout</button>
                        </form>
                </div>
            </nav>
        </div>
        <div class="title" align="center">
            <h1>WELCOME TO HMS</h1>
            <h4>Welcome Doctor <%=a1%></h4>
        </div>
        <div class="functions container">
            <div class="row">
                <div class="col-2"></div>
                <div class="col-3" ><div class="card" style="background-color: rgba(255, 255, 255, 0.1); width: 18rem;">
                    <img class="card-img-top" height="200px;" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAilBMVEX///8AAACampr8/PxUVFQqKir29vYjIyMEBAQhISG3t7clJSXS0tIXFxceHh74+Pjg4OAMDAzv7+9ZWVkWFhZMTEzr6+vKysqgoKCPj4/BwcHb29szMzOxsbHY2NhhYWE6Ojp1dXVwcHCBgYFDQ0Oenp6Li4upqaloaGhISEhfX199fX2UlJQ9PT3DCdZUAAALnUlEQVR4nO1dCZeqOgxurQuKrCIg7rt3dP7/33tJ2ZRFREep7/S7z/NmWDz5SEnSJO0QIiEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISHxadjDwbHV2h+Dhd20KG+APdjoNIVzOppNi/Sn8E6cl0KvMZv8P0gyQoIZLcFuYISXfDXMf6A8pYwjXXtNC/gqLqXcUpKB0bSUz6M7riaI+PlWw+OWj848lnvPjZT5NW/mtAa/CPps1u8cmxb8MTBi1icYYdi08I/Btp5mOGla9ocwKPWC1Wg3LXwlYIS+wA/QNIFqLF7iR2m3aQJVsF8kSIX3jstXGS6aZlCBV8eo+O7i9H9n2H2ZoOjvYfA6Q8HTHIfXGTZNoQIPzpju4KdpChV4XYV+0xTuw3idoeCGxn2Z4LhpChV4Yt6bQdA0hQoMXyWoNM2gCq8xVOCf6DOLl3Uoesz2Wtyt0M1MdGfxoqUZkw1dN02hAgXewnk4KTVi5CK8tyiYWsy6j6RtlDDJNqedpilUIS97m7DNAxQdXqXxKBU9563nRD/D0eDuSMX0fyskthA/EZWfW7TwMLtfhprEc0KTUrdB6R/BORZ6OVVD7QzCE12/k9VbhNEA9Rfq8AsY7iP5NYOQLSeSuvDF5DervN3htn7ois8wzmIMCWPEQ00lEqOWusP5ZP3TbrdHm4MfmEZyIoIpfBIjrjlFfts41UxKLMRnyEKGoZignIGfL3ne8QfgLYSveqtI8PBsJXdAe38rzhvA3YX7LMMW/fe34rwBGL88H1uu6eYPZXkPfGD4fC1+Rvd/KMt74IEPfLp6xMTP04TlwycNPsMUgejOgnBj+vT0YP8FppTHak8zHNPtX4ryJnjPh5Ywwr+hl489b0uP4s9/OdZ09+SdO+HzUCHAIE6fuI1hok70bCkHI50nVbGmnS/pTJw/Z2tsfIG/gyFzePqpLs7U+g5+hNvE+nVO85V49uPoY5a01h2MtKn+JmnegSBJsdW5JfiSt5BjiSH04/IyNDPLN8rz97DrToPHXzGrSMFw0B1q3HD4sjGKFA91TOPxheRVcxg9bm0GlI7eKstbwMjqUYpAcPV9GgSJu6vHWrh8rKJ+IUOAsePp/buyM2NL6U74PHcxGGHgFlf34zcT3MT6SzXI0aJhfb6IARxjcF7zDfa1BMGHD3XgMC85P3dUuvMYcb+EoZHIyX8YblVe4cauYWvvpmeiy9y9RWnvwJjh086BT+4F12W3e9Vj4E7CloUxMHN5K8bYn6bys6nPKzgblzBz7GC9Sp+IXvxFhjEFr33bqOBG3d+70/ZyuWxPO/6bcwBO7OioVtSpMfJEXl8Jg40zhIGWWb6tc7cfrHs3R/vbAFU+126Wsa8C/AYm4GgFdgbXoUG8XzAtal/VUGK11wNiqm+j3Gbgb5ejdvt09gMTXAlxfXgWumpFN6g9GK2/QxwMXdEcJAORDBsZmiOqU6dPLaoDxY4CA7ADSrKWg4y9ZO7gBMd7tGfp1MIbNPignk8uDAfRHAgSNEAsmCMgMZWqHc3RqeZouq5b/Adq/W6Pngk8mT0dHtcQ0WkAyhn2KGiQqnoProNhe4RHJhZBbkZZ13DBgvRBMSCpbuHoxN90pUN1S6WW49y+iPAI4CTtgwJVYIYX9/hHBwvMBDM5XRutRqBTVdGRoarr6ABUUA91tF7IUO/xD3BTgDiFp0B1p8cZ9mKGCv+omiVagYabhj0XEd1gz+o7aCJ1BaxIjiHoFHmqiqpwneEojRgid7hWA9uzZ12RWvjQMpxA1oih7lh6vw/sVLCUGugJqFJLCxmq8GLieNXwBe0p+DhA2RFD+AeX6mhfN4Yt0kA1uiNQBHDrcSfR74MRUR0K6lAt8AFOH+ylqvKPqvfDcAeuxavxFhWuxcNgl2CQq7oGY4D+CMQQ3OAvDeOSKDoBLxEGKpaC//HD+H/HglOxi49+sq4+WvglYeP0TiDPz3a0ahOMivNK7geAQM1D7QKZ/wLCbD6wqdTgc1CeKmG9Aa0qScudm1d1qwDrS1iZlCsvWRJcnq6v3p1AgLJ3wQoL3BkKH74W/W7BhKIQo7SFn4/zzvkYDIfB/nrTgub9fsEWCgpPsJl1lwSv03Y4I90c5dQgN4JjdFAoK+Ppmdj+jPatK4BT3xQsMWlj1tH2jq39fIFucB5rttlWPla47rdFbjdwub1njrXe3MITHNWDROtnoOuuol+a9fvbjKPA3+Zhx3564jK8BtA4HrM3gaKGN8mPLcyf/oUn61Tp/hz53aAUrMYcc4cr4OV9juoSFnFucnV3wTYffryqpB7BbeaQQjU7foANNkYXbOh1CPugH4fCN6RZXx+J9iGcJV/VnBLXuXBtTIqt6z1cEVwG7iLeWUPBgkfoUhsL3goiErvmOlmFd/mdoicVOgYvOeXGSmzK7eeHY0C6Wu7gfZjp2wzKDM7HcEEDxyR+iE01S6lZfWxq7hLF1ZTcMg1H69lLnKVGCPcY+Ep+HqxgZbpd9yVUXN7RgLDMAtNsxvvdPNOw+jrDSVYenxhWrami4yaLTjXOVcls6DoIgzcIGhpgiOtbbqGxWjsMKbRvEyMiqNqEFUTqfmx2GunVyC2992tuRtezMcETsrV5W0MOrWT22URxcZ4VB1X48BhVsMOkGwfXim0XLNpXUh3WbnX8C5wz8hzqbTCEBFNWJU8meQ8bWWmSfehmjYBbob8G6UaLu2fD0l3spok5+/08wWz2YkVIbqV2OXaM2LE7vZTu+aJcre//fM00G3W36mysOwaCafBzKds4Y3v1HD8ffWc311vUmFMAQfeR6M68MmefT2ZkX7oame82uBosYNy/igeBqXY/H5pmnPtPvE69Gj/hEF+YVdWM7vVA+XxUs76V5vLwtGkZESycQF/Dw4eWPIPPzxEzk4ggHwEUYxNutcQNx10totLMNND5fN50dCvP9MGYdB0TZBHFcqwwjknC+8+vVcjYFfuxzWfP4YZniekvpXhGGzObpkmRTzeCsyxDI5qr3seWE3SutlwoGajgGxb4yI6JW2qaoZ6P4nLguV0vnAqmKEq5RvW4RYe33+6FYKgS0smJmsWBK6SXWS5UoMVhdAV2UfuE/IjAsPMAwwsniHNddvNNOS0mBHleYxhOO7+A4YRbjVlBYjCjxcW1jncYfl++guEyJliQjrjR4m3SycWYvvsNDB1eDv8tybZcaTE7h5hg8mD9BQwHqIhV6SQv0aKZ1bGN93riM5zxTPadFYZIUaFWQcJpCQEbE5/hHCmULbvgMC3uKfPDeI4zs53wDLtkW5Gah4HYKSzA8C3cNh/vj6rJcEyIcn8Oi7HZMRgUYI7+41B7cfirqMlwghOKe0nde39wQAGn3xKd4Rx94Z0vu1vQQYYX0RkGxKe7chGrJs8mvMWCM/TKhxkEqceqhI0BwbfgDFGHv2UiYhbyLsMVdhgJzrD8PWQ4/RvlSpE3mKDHaJphUSPXFQ4oY1HWGve3Bmd+P+tmopqbZljYjJfiHyFOuKFwFheeas3mtW7Q5vmDxhlWwIY5glOwkekhShNO77yJQ15EbJyhqhZKF8PHiV4+bb3lBKfjfDUyxTosajXN0GLkbhlC4xO9YeY7zjxBvOAx+apEizMWusumGVKzIkXv85fpluKGK4g3rbjELhmmdtQw8GmGUQKsBlxeMbzqvZ+ueP40LNR3GLE7OS0qtAPzqXB57ef/SNIDf+v3BjDaXHhXO0c+DWb8b1m3OEFsosGSopHvp1oaSY/G52tP3cqVPhn8Y4Rxe6KN2zx7PBtezylWwDy4jRo6ASFhj4bSSPPe9HZNaDU62MCf2MzxINw0IgVWeYNUj0v8PZ50OA20fYFGglY9XLgeFvN96+jxsRpMrk9H+yosBn7LH/B+feIdwlOBaKtmJaog9SUhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISj+A/Ttn6OI2c1FAAAAAElFTkSuQmCC" alt="Card image cap">
                    <div class="card-body" align="center">
                      <!-- <h5 class="card-title">Add Criminals</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p> -->
                      <form action="add_patient">
                          <button class="btn btn-light"  name="user3" value="<%=a1%>">Add Patient</button>
                      </form>
                      
                    </div>
                  </div></div>
                <!--<div class="col-1"></div>-->
                <div class="col-3"><div class="card" style="background-color: rgba(255, 255, 255, 0.1); width: 18rem;">
                    <img class="card-img-top" height="200px;" src="data:image/jpeg;base64,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" alt="Card image cap">
                    <div class="card-body" align="center">
                      <!-- <h5 class="card-title">Card title</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p> -->
                      <form action="view_patient" >
                          <button class="btn btn-light"  name="user3" value="<%=a1%>">View & Edit Patient</button>
                      </form>
                    </div>
                  </div></div>
                
                <!--<div class="col-2"></div>-->
                <div class="col-3" ><div class="card" style="background-color: rgba(255, 255, 255, 0.1); width: 18rem;">
                    <img class="card-img-top" height="200px;" src="data:image/png;base64,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" alt="Card image cap">
                    <div class="card-body" align="center">
                      <!-- <h5 class="card-title">Add Criminals</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p> -->
                      <form action="appoint_ll">
                          <button class="btn btn-light"  name="user3" value="<%=a1%>">check appointments requests</button>
                      </form>
                      
                    </div>
                  </div></div>
                
            </div>
        </div>
    </main>
</body>
</html>
