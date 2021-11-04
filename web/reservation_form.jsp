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
                background-image: url("img/3.jpg");
            }
        </style>

    </head>
    <body>
        <section id="top">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="top">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="dropdown">
                                    <a href="login.jsp" style="background-color: blue; color: white">Sign Out</a>                                    
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
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-brand-centered">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="index.jsp">Travel<span>with me in Egypt</span></a>
                            </div>

                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse" id="navbar-brand-centered">
                                <ul class="nav navbar-nav">
                                    <li><a class="text_2" href="index.jsp">Home</a></li>
                                    <li><a class="text_2" href="user_reservations.jsp">User Reservations</a></li>
                                    <li><a class="text_2" href="contact.jsp">Contact</a></li>
                                </ul>
                            </div><!-- /.navbar-collapse -->
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        
        <div style="margin-top:10px; margin-bottom:0px ; height: 26px; background-color: red"></div>
        <%
            String s = (String) request.getAttribute("reserve");
        %>
        <div class="div" style="padding-bottom: 32px;">
            <section id="trip_main" style="margin-top: 0px; margin-left: 20%;">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 trip_main_1">
                            <div class="tab-content clearfix">
                                <form action="reservation">
                                    <div class="col-sm-12 more_2">  
                                        <div>
                                            <h3 style="margin-left: 135px; margin-bottom: 20px; color: black">Reservation form</h3>
                                            <p style="color: black; font-size: 20px">Email <%if (s == "failed") out.print("<span style='color: red; margin-left: 30px'>Please, Enter valid Email.</span>");%></p>
                                            <input type="email" size="40" placeholder="Email" name="email" required="required" style="border: 2px solid black">
                                            <p style="margin-top: 10px; color: black; font-size: 20px">Phone number</p>
                                            <input type="number" placeholder="phone" name="phone" min="0" required="required" style="border: 2px solid black">
                                            <p style="margin-top: 10px; color: black; font-size: 20px">Credit card number</p>
                                            <input type="number" placeholder="credit card" name="credit" min="0" required="required" style="border: 2px solid black">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 search_1">
                                        <div class="col-sm-12 search_inner"><button class="button" style="background-color: red; color: white">Submit</button></div>
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