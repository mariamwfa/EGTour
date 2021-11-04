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
                background-image: url("img/1.jpg");
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
                                    <li><a class="text_2 active_1" href="index.jsp">Home</a></li>
                                    <li><a class="text_2" href="user_reservations.jsp">User Reservations</a></li>
                                    <li><a class="text_2" href="contact.jsp">Contact</a></li>
                                </ul>
                            </div><!-- /.navbar-collapse -->

                        </nav>
                    </div>
                </div>
            </div>
        </section>	

        <div style="margin-top:10px; margin-bottom:0px ; height: 15px; background-color: red"></div>

        <div class="div" style="padding-bottom: 200px;">
            <section id="trip_main" style="margin-top: 0px; padding-top: 20px; margin-left: 10%;">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 trip_main_1">
                            <div class="tab-content clearfix" style="background-color: seagreen;color: white;">
                                <form action="trips.jsp">
                                    <div class="col-sm-12 more_2">  
                                        <div class="col-sm-4  more_2_inner_1">
                                            <h3>Governorate</h3>
                                            <select name="city" class="form-control input-lg">
                                                <option value="All">All</option>
                                                <option value="cairo">Cairo</option>
                                                <option value="giza">Giza</option>
                                                <option value="alexandria">Alexandria</option>
                                                <option value="matroh">Matroh</option>
                                                <option value="luxor">Luxor</option>
                                                <option value="aswan">Aswan</option>
                                                <option value="sinai">Sinai</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 search_1">
                                        <div class="col-sm-12 search_inner"><button class="button">Search Trips</button></div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6"></div>
            </section>            
        </div>

        <section id="routes">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 routes_main">
                        <h2> <i class="fa fa-plane"></i>Our popular trips</h2>
                        <div class="col-sm-3">
                            <div class="routes_inner">
                                <a href="#"><img src="img/trip1.jpg" width="100%"></a>
                                <div class="routes_inner_1 clearfix">
                                    <h4>Pyramids</h4>
                                    <p><i class="fa"></i> <span style="color: black">$</span> 200 </p>
                                    <span class="booking_1"> <a href="details.jsp?id=1">Book Now</a></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="routes_inner">
                                <a href="#"><img src="img/trip2.jpg" width="100%"></a>
                                <div class="routes_inner_1 clearfix">
                                    <h4>Qaitbay Castle</h4>
                                    <p><i class="fa"></i> <span style="color: black">$</span> 350 </p>
                                    <span class="booking_1"> <a href="details.jsp?id=10">Book Now</a></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="routes_inner">
                                <a href="#"><img src="img/trip3.jpg" height="155" width="100%"></a>
                                <div class="routes_inner_1 clearfix">
                                    <h4>siwa</h4>
                                    <p><i class="fa"></i> <span style="color: black">$ </span>1000 </p>
                                    <span class="booking_1"> <a href="details.jsp?id=16">Book Now</a></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="routes_inner">
                                <a href="#"><img src="img/trip4.jpg" width="100%"></a>
                                <div class="routes_inner_1 clearfix">
                                    <h4>Karnak Temple</h4>
                                    <p><i class="fa"></i> <span style="color: black">$ </span>450 </p>
                                    <span class="booking_1"> <a href="details.jsp?id=18">Book Now</a></span>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <section id="footer_text"  class="border_bottom_3 border_top_3">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="footer_3 clearfix">
                            <div class="col-sm-3">
                                <div class="footer_3_inner_2">
                                    <p>Follow Us :</p>
                                    <p><a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"> <i class="fa fa-youtube"></i></a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="footer_bottom" style="background-color: red; color: white;">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="footer_4">
                            <p  class="text-center p2">© 2021 Travel with me in Egypt. All Rights Reserved </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>

</html>