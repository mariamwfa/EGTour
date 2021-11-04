<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Book My Trip</title>
        <link href="https://fonts.googleapis.com/css?family=Reem+Kufi&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Kaushan+Script&display=swap" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
        <script src="js/jquery-2.1.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
        <style>
            .div{
                background-image: url("img/2.jpg");
            }
            .button {
                background-color: red;
                border: none;
                color: white;
                padding: 10px;
                text-align: center;
                display: inline-block;
                font-size: 16px;
                cursor: pointer;
            }
        </style>

    </head>
    <body>
        
        <section id="top" style="padding-left: 10%">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="top">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="dropdown">
                                    <a href="signup.jsp" style="background-color: blue; color: white">Sign Up</a>                                    
                                </li>
                            </ul>

                        </div>

                    </div>
                </div>
            </div>
        </section>
        
        <section id="header">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <nav class="navbar navbar-default" role="navigation">

                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header" style="padding-top: 0px">
                                <a class="navbar-brand" href="login.jsp">Travel<span>with me in Egypt</span></a>
                                <a class="navbar-brand"><span style="color: #FF9900; font-size: 25px;margin-left: 300px">We welcome you in Egypt</span></a>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        
        <div style="margin-top:0px; margin-bottom:0px ; height: 23px; background-color: red"></div>

        <div class="div" style="padding-bottom: 100px;">
            <section id="trip_main" style="margin-top: 0px; margin-left: 20%;">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 trip_main_1">
                            <div class="tab-content clearfix">
                                <form action="validate">
                                    <div class="col-sm-12 more_2">  
                                        <div>
                                            <h3 style="margin-left: 40%; margin-bottom: 20px; color: black">Login</h3>
                                            <p style="color: black; font-size: 20px">Email</p>
                                            <input type="email" size="40" placeholder="Email" name="email" required="required" style="border: 2px solid black">
                                            <p style="margin-top: 10px; color: black; font-size: 20px">Password</p>
                                            <input type="password" size="40" placeholder="Password" name="password" required="required" style="border: 2px solid black">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 search_1">
                                        <div class="col-sm-12 search_inner"><button class="button" style="background-color: red; color: white">Login</button></div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>            
        </div>
        
        <div style="margin: 0px; height: 26px; background-color: red">
            <p style="color: white; text-align: center">© 2021 Travel with me in Egypt. All Rights Reserved</p>
        </div>
    </body>
</html>