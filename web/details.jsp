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
        
        <div style="margin-top:10px; margin-bottom:0px ; height: 15px; background-color: red"></div>

        <%
            String trip_id = request.getParameter("id");
            session.setAttribute("trip_id", trip_id);
        %>

        <%if (trip_id.equals("1")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>
                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>
                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D12.jpg" alt="...">
                                                            <div class="carousel-caption">
                                                                <h2><i class="fa fa-umbrella"></i>Enjoy Seeing the pyramids of Khufu, Khafre, and Menkaure.</h2>
                                                            </div>
                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D1.jpg" alt="...">
                                                            <div class="carousel-caption">
                                                                <h2><i class="fa fa-umbrella"></i>Go inside one of the pyramids is a great.</h2>
                                                            </div>
                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D11.jpg" alt="...">
                                                            <div class="carousel-caption">
                                                                <h2><i class="fa fa-umbrella"></i>Go on a camel ride.</h2>
                                                            </div>

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D13.jpg" alt="...">
                                                            <div class="carousel-caption">
                                                                <h2><i class="fa fa-umbrella"></i>Lunch at Local restaurant.</h2>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>From 9:00 AM to 4:00 PM</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at the Pyramids. </li>
                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to the Pyramids in Giza</li>
                                                            <li> Enjoy Seeing the pyramids of Khufu, Khafre, and Menkaure.</li>
                                                            <li> Go inside one of the pyramids. </li>
                                                            <li> Visit Panoramic Point, Take a selfie with the Sphinx ,This is one of the best viewpoints of the pyramids of Giza.</li>
                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li>Go on a camel ride.</li>
                                                            <li>End the fun of the day by Watching the Sound and Light Show.</li>
                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">
                                                    
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                 <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d13824.344725986908!2d31.141405878268657!3d29.976953147813486!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sgiza%20pyramids!5e0!3m2!1sar!2seg!4v1626879067400!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p>The pyramids themselves are amazing to see. Great place to get some amazing photos. That said,, the entire place is a huge tourist trap and you need to go in with that attitude and that everyone is looking for $ even the site workers. Each step of the way they ask for $ and for you to take care of them. They are helpful and sly/pushy with helping you take photos however they expect $ for it. I recommend eating, drinking and using the restroom before hand. You can bring your own water. The hose and buggy rides are a nice way to limit walking in the sun, however animal lovers beware as they aren't and they don't spare the whip.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p> We went to Cairo and Giza from Hurghada. It was a long drive but it is worth it. The pyramids are amazing! Don?t let local vendors who are very aggressive spoil your experience. Also, you should definitely go to a hill a few kilometers away for a beautiful view of all three pyramids.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  To me and my wife, it's a dream come true, we've even met friends there and we visited together, it's a really breathtaking experience especially if already have or can get history information about it,.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day From 9:00 AM to 4:00 PM</h5>
                                </div>
                                <div class="detail_package_right_1">
                                    <h3><span>$</span> 200</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
        <%} else if (trip_id.equals("2")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>
                                    <li><a data-toggle="tab" href="#term3">Location</a></li>
                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>
                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D22.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D21.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D22.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>From 8:00 AM to 5:00 PM</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour Valley of Whales. </li>
                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to the Valley of Whales </li>
                                                            <li> Enjoy Seeing invaluable fossil remains of the earliest, and now extinct, suborder of whales, Archaeoceti.</li>
                                                            <li> These fossils represent one of the major stories of evolution: the emergence of the whale as an ocean-going mammal from a previous life as a land-based animal.. </li>

                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li>Go to complete the trip watching amazing sees.</li>

                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">
                                                     
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                  <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1782017.3319740926!2d31.143117832333367!3d29.267568899999993!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145c059d35b0ea09%3A0x7f0525cd1d43dcc0!2sWadi%20Hitan%20museum!5e0!3m2!1sar!2seg!4v1626879397970!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p> This site contains a fabulous, modern museum that reflects some of the best practices related to displays and explanations. Explanations are written in Arabic and English. The bathroom area is modern, with all necessary amenities.

                                                            The paths to the fossilized remains are well-marked, and extend far into valley - VERY far! We easily spent over an hour along the winding, rock-lined paths - exploring a wide range of shaded alcoves and numbered stops along the way..</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p> Wadi El Hitan (Whales valley) .. you take a 4x4 car with a driver who drives through the desert a long way .. the whole trip took around 5 hours (Wadi El Hitan+Magic lake) .. very nice to see the remains of veeeeery old creatures .. thousands of years ... but it was fun to drive through the desert, up & down hills which some of them were really steep, and very risky to climb up and down by the car.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  An amazing piece of history and a sad reminder of the effects of climate change.
                                                            Not recommended to visit during the hot seasons. And be prepared for a long drive. The drive was amazing though, through a very white sandy desert..</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day  From 8:00 AM to 5:00 PM</h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 800</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>                                             
        </section>
        <%} else if (trip_id.equals("3")) {%>       
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>
                                     <li><a data-toggle="tab" href="#term3">LOCATION</a></li>

                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D31.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D32.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D33.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>From 9:00 AM to 4:00 PM</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at Saqarra. </li>
                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to Saqarra </li>

                                                            <li> Enjoy Seeing Saqqara Step Pyramid which is a famous pyramid in cairo .</li>
                                                            <li> Explore Imhotep Museum "Imhotep Museum opened in 2006 and is dedicated to the Egyptian architect, Imhotep.This is the best place to begin any exploration of the Saqqara necropolis" </li>

                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li>Go to complete the trip Exploring Pyramid of Unas "Southwest of the Step Pyramid is the Pyramid of Unas or Onnos, last pharaoh of the Fifth Dynasty.The walls of the central chamber and the tomb chamber are covered with inscriptions from the "Pyramid Texts," the oldest known Egyptian religious texts, relating to the life after death in which the incised hieroglyphs are filled in with blue pigment".</li>

                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">
                                                    
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6919.510790854204!2d31.220920368105162!3d29.87132733368622!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14584bd553b25c81%3A0x8c577a7fabef89d!2z2KfZhNmH2LHZhSDYp9mE2YXYr9ix2Kwg2YTZhNmF2YTZgyDYstmI2LPYsQ!5e0!3m2!1sar!2seg!4v1626879856025!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p> Great day with a super knowledgable and kind guy. Really had a great time!! I learned many things that I did not know. Fantastic tour!!</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p> The best price for city tour in cairo
                                                            High standard level of service
                                                            Good timing
                                                            Very clean cars
                                                            Professional guide.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p> this tour changed me about egypt and enjoy egypt. Lots of interesting experiences, especially with the tour guide .</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day From 9:00 AM to 4:00 PM</h5>
                                </div>
                                <div class="detail_package_right_1">
                                    <h3><span>$</span> 250</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>
                                </div></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("4")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>

                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>
                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D31.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D32.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D11.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D12.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span> From 9:00 AM to 12:00 PM (Saqqara ) From 1:00 PM to 4:00 PM (Pyramids)</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at Saqqara and the Pyramids. </li>
                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to Saqqara </li>

                                                            <li> Enjoy Seeing Saqqara Step Pyramid which is a famous pyramid in cairo .</li>
                                                            <li> Explore Imhotep Museum "Imhotep Museum opened in 2006 and is dedicated to the Egyptian architect, Imhotep.This is the best place to begin any exploration of the Saqqara necropolis" </li>

                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li>Go to The Pyramids to complete the day there .</li>
                                                            <li>Go on a camel ride.</li>
                                                            <li>Watch the Sound and Light Show.</li>


                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">
                                                   
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d221188.74140209824!2d31.272571185828227!3d29.977300828697675!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14584bd553b25c81%3A0x8c577a7fabef89d!2z2KfZhNmH2LHZhSDYp9mE2YXYr9ix2Kwg2YTZhNmF2YTZgyDYstmI2LPYsQ!5e0!3m2!1sar!2seg!4v1626880336632!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p> Great day with a super knowledgable and kind guy. Really had a great time!! I learned many things that I did not know. Fantastic tour!!</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p> The best price for city tour in Giza
                                                            High standard level of service
                                                            Good timing
                                                            Very clean cars
                                                            Professional guide.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p> this tour changed me about egypt and enjoy egypt. Lots of interesting experiences, especially with the tour guide .</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day From 9:00 AM to 4:00 PM</h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 400</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>                                             
        </section>
        <%} else if (trip_id.equals("5")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>
                                    <li><a data-toggle="tab" href="#term3"> LOCATION</a></li>

                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D41.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D42.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D11.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D12.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span> From 9:00 AM to 12:00 PM (Pyramids , Giza) From 1:00 PM to 6:00 PM (Cairo Tower , Cairo)</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at Cairo Tower and the Pyramids. </li>
                                                            <li> Dinner at the revolving restaurant </li>

                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to the Pyramids </li>
                                                            <li>Go inside one of the Pyramids.</li>
                                                            <li>Go on a camel ride.</li>
                                                            <li>Watch the Sound and Light Show.</li>

                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li>Go to The Cairo Tower to complete the day there .</li>
                                                            <li> reaching the top of the cairo Tower ,there's an open-air observation deck with telescopes offering incomparable views over Cairo and its surrounding area.</li>
                                                            <li>Take a dinner at the revolving restaurant on the Tower .</li>


                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">
                                                    
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d110517.89104350918!2d31.294327644419514!3d30.04591962545924!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1458409aa81d58a5%3A0x6ce6bf7cd258d6fe!2z2KjYsdisINin2YTZgtin2YfYsdip!5e0!3m2!1sar!2seg!4v1626880799100!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p>  fantastic job with the tour! He was very knowledgeable about Ancient Egypt and helped us make connections with the rest of the fact. He was also very flexible during this trip. He even offered some other sites. I would highly recommend this tou</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p> Had a wonderful time today visiting the pyramids ,Cairo tower and riding camels!!! Our guide, was WONDERFUL ??. So very knowledgeable on EVERYTHING. He made our trip unforgettable ??</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p> Amazing time exploring all the amazing Egyptian sites .</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day From 9:00 AM to 6:00 PM</h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 450</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>                                    
        </section>
        <%} else if (trip_id.equals("6")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>
                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>

                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D51.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D52.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D11.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D12.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>  From 9:00 AM to 12:00 PM (Pyramids , Giza) From 1:00 PM to 5:00 PM (Egyption Museum , Cairo)</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at The Museum and the Pyramids. </li>


                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to the Pyramids </li>
                                                            <li>Go inside one of the Pyramids.</li>
                                                            <li>Go on a camel ride.</li>
                                                            <li>Watch the Sound and Light Show.</li>

                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> Go to The The Egyption Museum to complete the day there .</li>
                                                            <li> Enjoy discovering a great and enormous collection of artifacts, mummies, coffins, stones, ancient belongings, and even food types that used to be buried with the kings before death to use in the afterlife.</li>
                                                            <li> Go Upstairs the museum is organized thematically with a large portion of the area taken up the exhibit of the contents of Tutankhamun?s tomb, including his famous funerary mask.  .</li>


                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">
                                                    
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d27629.400213719022!2d31.24179945330165!3d30.04617971681219!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145841885535bec3%3A0x520da52b3a7a660f!2z2KfZhNmF2KrYrdmBINin2YTZhdi12LHZig!5e0!3m2!1sar!2seg!4v1626881048944!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p>  fantastic job with the tour! He was very knowledgeable about Ancient Egypt and helped us make connections with the rest of the fact. He was also very flexible during this trip. He even offered some other sites. I would highly recommend this tour</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p>  Today we took a private tour with our guide to the Egyptian museum.He is a very knowledgeable and thorough guide and was very kind to us. Everything was as we expected, our tour was punctual and free of hassle. He took us to see the most treasured artifacts in all of Egypt and in all of the world! After our tour of the museum we went on a lovely lunch about aboard Les Memphis viewing the Nile river. We had a lovely conversation and enjoyed conversation about Egyptian culture. It was a most perfect day. I highly recommend Visitors Egypt Tour</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p> Amazing time exploring all the amazing Egyptian sites .</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day From 9:00 AM to 5:00 PM</h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 400</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>                                         
        </section>
        <%} else if (trip_id.equals("7")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>
                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>

                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D51.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D52.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D41.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D42.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>From 9:00 AM to 7:00 PM</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at The Museum and Cairo Tower. </li>

                                                            <li> Dinner at the revolving restaurant.</li>
                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to the Museum </li>
                                                            <li> Enjoy discovering a great and enormous collection of artifacts, mummies, coffins, stones, ancient belongings, and even food types that used to be buried with the kings before death to use in the afterlife.</li>
                                                            <li> Go Upstairs the museum is organized thematically with a large portion of the area taken up the exhibit of the contents of Tutankhamun?s tomb, including his famous funerary mask.  .</li>


                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> Go to Cairo Tower to complete the day there .</li>
                                                            <li> reaching the top of the cairo Tower ,there's an open-air observation deck with telescopes offering incomparable views over Cairo and its surrounding area.</li>
                                                            <li> Take a dinner at the revolving restaurant on the Tower .</li>

                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">
                                                     
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d27629.400213719022!2d31.24179945330165!3d30.04617971681219!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145841885535bec3%3A0x520da52b3a7a660f!2z2KfZhNmF2KrYrdmBINin2YTZhdi12LHZig!5e0!3m2!1sar!2seg!4v1626881227303!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p>  fantastic tour!</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p>  Today we took a private tour with our guide to the Egyptian museum.He is a very knowledgeable and thorough guide and was very kind to us. Everything was as we expected, our tour was punctual and free of hassle. He took us to see the most treasured artifacts in all of Egypt and in all of the world! After our tour of the museum we went on a lovely lunch about aboard Les Memphis viewing the Nile river. We had a lovely conversation and enjoyed conversation about Egyptian culture. It was a most perfect day. I highly recommend Visitors Egypt Tour</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p> Amazing time exploring all the amazing Egyptian sites .</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day From 9:00 AM to 7:00 PM</h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 300</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("8")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>

                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>
                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D43.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D44.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D41.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D42.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>   From 10:00 AM to 7:00 PM</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>

                                                            <li> Private Tour Cairo Tower. </li>

                                                            <li> Lunch at the revolving restaurant.</li>
                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to Cairo Tower</li>

                                                            <li> Go to Cairo Tower to complete the day there .</li>
                                                            <li> reaching the top of the cairo Tower ,there's an open-air observation deck with telescopes offering incomparable views over Cairo and its surrounding area.</li>
                                                            <li> Take Lunch at the revolving restaurant on the Tower .</li>

                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">
                                                     
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3453.684095109662!2d31.226478485556665!3d30.04591962545924!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1458409aa81d58a5%3A0x6ce6bf7cd258d6fe!2z2KjYsdisINin2YTZgtin2YfYsdip!5e0!3m2!1sar!2seg!4v1626881467534!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>   


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p>  Great location and view .. you can see Cairo in all directions. There is a wonderful rounding and rotating restaurant with fine prices</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4> 
                                                        <p>  Fantastic Tour!!</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p> Amazing time exploring all the amazing Egyptian sites .</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day From 10:00 AM to 7:00 PM</h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 200</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>                                             
        </section>
        <%} else if (trip_id.equals("9")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>

                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>
                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D51.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D52.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D53.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D54.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>  From 9:00 AM to 5:00 PM</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at The Museum . </li>


                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to the Museum </li>
                                                            <li> Enjoy discovering a great and enormous collection of artifacts, mummies, coffins, stones, ancient belongings, and even food types that used to be buried with the kings before death to use in the afterlife.</li>



                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> Go Upstairs the museum is organized thematically with a large portion of the area taken up the exhibit of the contents of Tutankhamun?s tomb, including his famous funerary mask.  .</li>


                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">
                                                    
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6907.366592659887!2d31.2286672132728!3d30.04594253540595!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x520da52b3a7a660f!2z2KfZhNmF2KrYrdmBINin2YTZhdi12LHZig!5e0!3m2!1sar!2seg!4v1626881667414!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>    


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p>  fantastic tour!</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p>  Today we took a private tour with our guide to the Egyptian museum.He is a very knowledgeable and thorough guide and was very kind to us. Everything was as we expected, our tour was punctual and free of hassle. He took us to see the most treasured artifacts in all of Egypt and in all of the world! After our tour of the museum we went on a lovely lunch about aboard Les Memphis viewing the Nile river. We had a lovely conversation and enjoyed conversation about Egyptian culture. It was a most perfect day. I highly recommend Visitors Egypt Tour</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p> Amazing time Exploring Egypt treasures .</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day From 9:00 AM to 5:00 PM</h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 200</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("10")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>
                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>

                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D61.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D62.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D63.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D64.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>  From 9:00 AM to 5:00 PM</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at  Alexandria Qaitbay Castle . </li>


                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to Alexandria Qaitbay Castle </li>
                                                            <li> Enjoy a private tour ,discovering a great the Qaitbay Castle which was designed in the square shape with many chambers, towers, and walls.</li>



                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> complete the tour at The main tower of the citadel which consists of three floors. The first floor contains the mosque of the citadel with four small iwans and a terrific Mehrab. On the second floor, there are many passageways, large halls, and many chambers, which had many purposes .</li>


                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">
                                                     
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d436767.01558893797!2d30.165789668608866!3d31.214015569329735!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14f5c3ff1b30e255%3A0xc201e7869ae9971f!2z2YLZhNi52Kkg2YLYp9mK2KrYqNin2Yo!5e0!3m2!1sar!2seg!4v1626882041243!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p>  Amazing time!</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p> castle is a great place to visit in Alexandria perhaps in all Egypt.  </p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! Thank you for giving us the tour A+ will come back for sure , thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day From 9:00 AM to 5:00 PM</h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 350</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("11")) {%>                    
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>
                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>

                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D71.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D72.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D73.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D74.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span> From 10:00 AM to 6:00 PM</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at  Alexandria library. </li>


                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to Alexandria libarary </li>
                                                            <li> Enjoy a private tour ,discovering the library which held over half a million documents from Assyria, Greece, Persia, Egypt, India and many other nations. Over 100 scholars lived at the Museum full time to perform research, write, lecture or translate and copy documents.</li>



                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> complete the tour .</li>


                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">
                                                     
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3412.4278039647143!2d29.91138988552555!3d31.208875069580866!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14f5c38a0562fe85%3A0xa34cc632ec23e7!2z2YXZg9iq2KjYqSDYp9mE2KXYs9mD2YbYr9ix2YrYqSDYp9mE2KzYr9mK2K_YqQ!5e0!3m2!1sar!2seg!4v1626882409548!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p>  its not a good idea unless you interasting in history reading and movies!</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p> it's not only a reading books library it content the history of all the world not only Egypt .</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day  From 10:00 AM to 6:00 PM</h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 300</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("12")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>
                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>

                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D81.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D82.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D83.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D84.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>  From 12:00 PM to 5:00 PM</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at Aquarium Museum . </li>


                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to Alexandria  Aquarium Museum .</li>
                                                            <li> Enjoy a private tour ,discovering The  Aquarium Museum which containing several species of fish and creatures from the Mediterranean Sea and the Red Sea. The aquarium also contains species of fish that live in sweet water, such as the Nile river and the Amazon, which makes it an entertaining and educational museum at the same time.</li>



                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> complete the tour Among the aquarium?s facilities are several laboratories, a library and water tanks for fish and sea plants that live in saltwater and fresh water.</li>


                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">
                                                     
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6824.569682870727!2d29.889374568069513!3d31.21283696938738!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14f5c3fefe3f3795%3A0xafb0fd4e670dd1ac!2z2YjYstin2LHYqSDYp9mE2KjYrdirINin2YTYudmE2YXZiiDYp9mE2YXYudmH2K8g2KfZhNmC2YjZhdmKINmE2LnZhNmI2YUg2KfZhNio2K3Yp9ixINmI2KfZhNmF2LXYp9mK2K8!5e0!3m2!1sar!2seg!4v1626882664180!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p>  If you are considering a trip to Alexandria, no, in fact Egypt - this is a must see! This museum should be THE NO. 1 best destination in Egypt, no, the northern hemisphere! I truly cannot believe it is not yet considered the 8th wonder of the world. Enjoy your stay and thank me later!</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p>  A small museum with some interesting and nice looking marine creatures, Mashallah! Does not worth a special visit but if available in the area, worth seeing.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day   From 12:00 PM to 5:00 PM</h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 400</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("13")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>

                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>
                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D81.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D82.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D61.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D62.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>  From 9:00 AM to 12:00 PM (Qaitbay Castle) From 1:00 PM to 5:00 PM (Aquarium Museum)</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at Aquarium Museum . </li>
                                                            <li> Dinner at Local restaurant.</li>

                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to Alexandria .</li>
                                                            <li> Enjoy a private tour , exploring Qaitbay Castle which was designed in the square shape with many chambers, towers, and walls .</li>



                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> complete the tour  discovering The  Aquarium Museum which containing several species of fish and creatures from the Mediterranean Sea and the Red Sea. The aquarium also contains species of fish that live in sweet water, such as the Nile river and the Amazon, which makes it an entertaining and educational museum at the same time.</li>

                                                            <li> have a dinner at local restaurant</li>
                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">
                                                
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6824.569682870727!2d29.889374568069513!3d31.21283696938738!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14f5c3ff1b30e255%3A0xc201e7869ae9971f!2z2YLZhNi52Kkg2YLYp9mK2KrYqNin2Yo!5e0!3m2!1sar!2seg!4v1626882850088!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p>  If you are considering a trip to Alexandria, no, in fact Egypt - this is a must see! This museum should be THE NO. 1 best destination in Egypt, no, the northern hemisphere! I truly cannot believe it is not yet considered the 8th wonder of the world. Enjoy your stay and thank me later!</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p>  A small museum with some interesting and nice looking marine creatures, Mashallah! Does not worth a special visit but if available in the area, worth seeing.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day  From 9:00 AM to 12:00 PM (Qaitbay Castle) From 1:00 PM to 5:00 PM (Aquarium Museum)</h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 600</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>      
        <%} else if (trip_id.equals("14")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>

                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>
                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D91.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D92.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D93.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D94.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>  From 10:00 AM to 5:00 PM</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at celopatra Bath . </li>


                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to Cleopatra Beach .</li>
                                                            <li> Enjoy a private tour , The sky is bright blue, the sand bright white, the sea perfect, and there's not a soul on the beach. Believed to be the bathing place of Cleopatra and Marcus Antonius.</li>



                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> complete the tour  .</li>

                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">
                                                     
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d109008.62147554052!2d27.27320828890068!3d31.372238373426356!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9c909d0dd2c3625d!2z2K3Zhdin2YUg2YPZhNmK2YjYqNin2KrYsdin!5e0!3m2!1sar!2seg!4v1626883326562!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p> Great trip </p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p> good tour but not worth a long travel.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day  From 10:00 AM to 5:00 PM</h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 400</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("15")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>
                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>

                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/101.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/102.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/103.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/104.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>  From 10:00 AM to 7:00 PM</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at matrouh . </li>


                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to Marsa Matrouh.</li>
                                                            <li> Enjoy a private tour.</li>



                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> complete the tour a relaxing experience in the salt cave at the Bedouin Village .</li>

                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">
                                                     
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d27261.49046625185!2d27.218672150313854!3d31.340035265678193!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x48c5e6fa361244b6!2sSalt%20cave!5e0!3m2!1sar!2seg!4v1626883623021!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p> Great trip </p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p> good relaxation place but not worth a long travel.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day  From 10:00 AM to 7:00 PM</h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 600</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("16")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>

                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>
                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D111.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D112.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D113.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D114.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>5 Days </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>   </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Hotel. </li>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> breakfast, Lunch and dinner at Local restaurant.</li>
                                                            <li> Private Tour "each day has a program". </li>


                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> for a DAY:.... In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will go together in a private air-conditioned vehicle reach to safari land point and start the journey.</li>
                                                            <li> After that enjoy a private tour,After a long drive through the barren landscape of the Western Desert, you won?t believe your eyes when you reach Siwa for the first time</li>



                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> complete the tour .</li>
                                                            <li> for each day there is a plan of the places included at the tour.</li>

                                                            <li>At the end of the day, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">
                                                   
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                  <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13930.473039783481!2d25.535911862978423!3d29.205363803131174!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x147aae52fe92629b%3A0xb41fca4458c46da2!2sSiwa%20Safari%20Gardens%20Hotel!5e0!3m2!1sar!2seg!4v1626884638023!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p> good tour </p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p> recommaned it worth the travel..</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 5 Days</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>5 Days </h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 1000</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("17")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>
                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>

                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D91.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D92.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/101.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/102.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span> From 10:00 AM to 2:00 PM (Cleopatra bath) From 3:00 PM to 6:00 PM (Salt Cave)</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at celopatra Bath . </li>
                                                            <li> Dinner at Local restaurant.</li>

                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to Cleopatra Beach .</li>
                                                            <li> Enjoy a private tour , The sky is bright blue, the sand bright white, the sea perfect, and there's not a soul on the beach. Believed to be the bathing place of Cleopatra and Marcus Antonius.</li>



                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> complete the tour to the Salt Cave .</li>
                                                            <li> Enjoy relaxation with amazing cave  .</li>
                                                            <li> Have a dinner at local restaurant .</li>
                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">
                                                     
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                               <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d873447.4228261914!2d27.99444260833793!3d31.223389094011402!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1ssalt%20cave%20matrouh!5e0!3m2!1sar!2seg!4v1626884822822!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p> Great trip </p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p> good tour ,worth a long travel.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day   From 10:00 AM to 2:00 PM (Cleopatra bath) From 3:00 PM to 6:00 PM (Salt Cave)</h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 800</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("18")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>
                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>

                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D121.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D122.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D123.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D124.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>  From 9:00 AM to 7:00 PM</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at The Temple. </li>


                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to Karnak Temple.</li>
                                                            <li> Enjoy a private tour at the temple to explore its contents.</li>
                                                            <li> Vist the Open-Air Museum</li>
                                                            <li> Go to Khonsu Temple</li>



                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> complete the tour at the Egyptian-Hittite Peace Treaty< .</li>

                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                               <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3594.5801256155755!2d32.65983943566132!3d25.718322316672975!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc71ae8c008c259d8!2z2KfZhNmD2LHZhtmD!5e0!3m2!1sar!2seg!4v1626884977721!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p> enjoyed visiting that temple with my guests from few cuntries
                                                            its beautifull and big
                                                            so good view sitting the barrier and looking at the cournish and the nile during the sun set </p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p>  If you only visit one temple in Luxor, visit Karnak. huge monuments very interest of surviving paint.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day  From 9:00 AM to 7:00 PM</h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 450</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("19")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>
                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>

                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D131.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D132.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D133.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D134.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>  From 9:00 AM to 7:00 PM</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at The Temple. </li>


                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to luxor Temple.</li>
                                                            <li> Enjoy a private tour at the temple to explore its contents.</li>




                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> complete the tour at the Temple .</li>

                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3595.148646205484!2d32.64123958255615!3d25.699501999999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x144915c41edadf61%3A0x7693895c346c7d81!2z2YXYudio2K8g2KfZhNin2YLYtdix!5e0!3m2!1sar!2seg!4v1626885139994!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p> one of my favorite temple in Luxor , it?s location is in the center , you can walk or take a horse carriage to reach it . it is very special temple that has different features from different times and different religions.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p>  It was very impressive - a must see. Better to plan your visit in the morning - less people and cooler temperature.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day  From 9:00 AM to 7:00 PM</h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 450</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("20")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>

                                    <li><a data-toggle="tab" href="#term3">LoCATION</a></li>
                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D142.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D143.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D144.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D145.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>  From 9:00 AM to 7:00 PM</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour . </li>


                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to eldier el-bahari.</li>
                                                            <li> Enjoy a private tour at The vast Temple of Hatshepsut (at Deir el-Bahari) rivals the Pyramids as one of the great funerary monuments of the ancient world.</li>




                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> complete the tour .</li>

                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                             <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14376.029993354043!2d32.61648943329268!3d25.737265615894394!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14491618e3b988d1%3A0x692c0b4a30fc99db!2z2KfZhNiv2YrYsSDYp9mE2KjYrdix2YogKNin2YTZhdi52KjYryDYp9mE2KzZhtin2KbYstmKINmE2K3Yqti02KjYs9mI2KosINmI2YXYudin2KjYryDYotiu2LHZii4uKQ!5e0!3m2!1sar!2seg!4v1626885291140!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p> Impressive location - must see. Please have with you some sun protection as the space is quite empty of shade.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p>  The story of Hatshepsut is one I enjoyed and had looked forward to see her temple. It is impressive when viewed from air via hot air balloon. However there is not much shade at the site. I expected it to be deeper into the mountain, but it isn't that deep.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day  From 9:00 AM to 7:00 PM</h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 500</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("21")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>
                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>

                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D142.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D143.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D124.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D122.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D132.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D133.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>Full Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>  1 Day From 9:00 AM to 12:00 PM (Luxor Temple) From 1:00 PM to 3:00 PM(Karnak Temple) From 4:00 PM to 7:00 PM (Deir el-Bahari)</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour . </li>
                                                            <li> Dinner at Local restaurant.</li>

                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to Luxor Temple.</li>
                                                            <li> Enjoy a private tour at the temple.</li>




                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> Go to Karnak Temple , to complete the tour there .</li>
                                                            <li> Have a dinner at local restaurant.</li>
                                                            <li> Go to Deir el-Bahari, have a private tour there exploring it.</li>
                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14376.029993354043!2d32.61648943329268!3d25.737265615894394!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14491618e3b988d1%3A0x692c0b4a30fc99db!2z2KfZhNiv2YrYsSDYp9mE2KjYrdix2YogKNin2YTZhdi52KjYryDYp9mE2KzZhtin2KbYstmKINmE2K3Yqti02KjYs9mI2KosINmI2YXYudin2KjYryDYotiu2LHZii4uKQ!5e0!3m2!1sar!2seg!4v1626885291140!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p> Impressive location - must see. Please have with you some sun protection as the space is quite empty of shade.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p> It is an excellent tour.our tour guide, was very good and polite. He gave us a lot of good information about each section of the tour.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>Full Day From 9:00 AM to 12:00 PM (Luxor Temple) From 1:00 PM to 3:00 PM (Karnak Temple) From 4:00 PM to 7:00 PM (Deir el-Bahari)  </h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 1000</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("22")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>
                                   <li><a data-toggle="tab" href="#term3">LOCATION</a></li>

                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D151.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D152.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D153.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D154.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>Full Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>  1 Day  From 10:00 AM to 6:00 PM</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at the Temple . </li>


                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to Phiala Temple.</li>
                                                            <li> Enjoy a private tour at the temple.</li>




                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> complete the tour there,explore the sacred site that was built to honor Goddess Isis. Isis, the mother of God Horus and wife of Osiris .</li>

                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14576.600677435348!2d32.89295463332935!3d24.02576908411933!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x143662db2c8977b9%3A0x99f2ac49832be578!2z2YXYudio2K8g2YHZitmE2Yc!5e0!3m2!1sar!2seg!4v1626885561536!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p>Great trip!!.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p> if you have to visit one temple at aswan go to philae temple its amazing.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day  From 10:00 AM to 6:00 PM </h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 400</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("23")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>
                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>

                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D161.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D162.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D163.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D164.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>Full Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>  1 Day  From 10:00 AM to 7:00 PM</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at the Temple . </li>


                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to the Temple.</li>
                                                            <li> Enjoy a private tour at the temple.</li>




                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> complete the tour there,exploring the ancient Egypt from the temple.</li>

                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14527.844034355168!2d32.93718663332053!3d24.45213806752432!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14360fb1581ad7a5%3A0x3cbfefca02f424fc!2z2YXYudio2K8g2YPZiNmFINij2YXYqNmI!5e0!3m2!1sar!2seg!4v1626885725913!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p>Small Temple ,If you'r� going by boat then it is an easy walk , less than 2 minutes to get there. It is significant for its calendar but not one of the bigger temples.!.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p> If you'r� going by boat then it is an easy walk , less than 2 minutes to get there. It is significant for its calendar but not one of the bigger temples.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day  From 10:00 AM to 7:00 PM </h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 450</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("24")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>
                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>

                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D171.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D172.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D173.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D174.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>  1 Day  From 9:00 AM to 6:00 PM</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at the museum . </li>


                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to the Museum .</li>
                                                            <li> Enjoy a private tour at the museum which  was created specifically to preserve the story of this ancient society and also to educate visitors and travelers about their history, both in Egypt and Sudan</li>




                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> complete the tour there,exploring the amazing museum ,The pieces range from the prehistoric to the geological, and they cover every era of Nubian history..</li>

                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3642.6271884065227!2d32.89136358569638!3d24.07942978204538!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x143663597d21e809%3A0xca27e595fe005147!2z2YXYqtit2YEg2KfZhNmG2YjYqNip!5e0!3m2!1sar!2seg!4v1626885856377!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p>good tour,and knowlage we took from our guide!.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p> made us explore the nubian life as we are there its a great.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>1 Day  From 9:00 AM to 6:00 PM </h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 400</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("25")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>
                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>

                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D151.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D152.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D161.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D162.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D173.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D174.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>1 Day </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>  full Day   From 9:00 AM to 12:00 PM (Philae Temple) From 1:00 PM to 3:00 PM (Kom Ombo Temple) From 4:00 PM to 7:00 PM (Nubia Museum</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> Lunch at Local restaurant.</li>
                                                            <li> Private Tour at the museum and the two temples . </li>

                                                            <li> Dinner at Local restaurant.</li>
                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In the morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to the Temple .</li>
                                                            <li> Enjoy a private tour exploring philae Temple.</li>
                                                            <li> Stop the journey for a bit ,to have a lunch at Local restaurant.</li>
                                                            <li> Go with the guide to kom ombo temple ,have a private tour there</li>





                                                            <li> Go with the guide by the vichel to complete the tour at the museum which  was created specifically to preserve the story of this ancient society and also to educate visitors and travelers about their history, both in Egypt and Sudan</li>
                                                            <li> Stop the journey for a bit ,to have a dinner  at Local restaurant.</li>
                                                            <li>At the end of the tour, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3642.6271884065227!2d32.89136358569638!3d24.07942978204538!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x143663597d21e809%3A0xca27e595fe005147!2z2YXYqtit2YEg2KfZhNmG2YjYqNip!5e0!3m2!1sar!2seg!4v1626885959103!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p>good tour,and knowlage we took from our guide!.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p> made us explore the all aswan ,  its a great.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 1 Day</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>Full Day    1 Day From 9:00 AM to 12:00 PM (Philae Temple) From 1:00 PM to 3:00 PM (Kom Ombo Temple) From 4:00 PM to 7:00 PM (Nubia Museum) </h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 1000</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("26")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>

                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>
                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D181.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D182.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D183.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D184.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D185.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>4 Days </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>  4 Days -3 Nights</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li>Hotel</li>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> breakfast,Lunch and dinner at Local restaurant for each day.</li>
                                                            <li> Private Tour . </li>


                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In every  morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to the trip starting point .</li>
                                                            <li> Water Sports From Yoga to Tea with Bedouins</li>
                                                            <li> visit Blue Hole</li>
                                                            <li> visit Laguna</li>
                                                            <li> Light House,The Canyon and Abu Galum</li>



                                                            <li> For each day there is a program of activities to do from the list above  </li>

                                                            <li>At the end of the day, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                 
                                                   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d56103.4298207874!2d34.535445949821!3d28.495673496892632!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x15ab4b29bfad585f%3A0xac65238d793319bf!2z2K_Zh9io2Iwg2LPYp9mG2Kog2YPYp9iq2LHZitmG2Iwg2KzZhtmI2Kgg2LPZitmG2KfYoQ!5e0!3m2!1sar!2seg!4v1626886088193!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p> The top of cleanliness, organization , classy dealings, do not miss booking room in it Close to all services, excellent staff, One of the best places to book, and the price is reasonable, It will be my stay every time.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p>  The top of cleanliness, organization , classy dealings, do not miss booking room in it Close to all services, excellent staff, One of the best places to book, and the price is reasonable, It will be my stay every time.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 4 Days</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>4 Days-3 Nights </h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 1000</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("27")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>

                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>
                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D191.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D192.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D193.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D194.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D195.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>5 Days </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>  5 Days -4 Nights</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li>Hotel</li>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> breakfast,Lunch and dinner at Local restaurant for each day.</li>
                                                            <li> Private Tour for each day. </li>


                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In every  morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to the trip starting point .</li>
                                                            <li> Rafing </li>
                                                            <li> Jet Skiing </li>
                                                            <li> Scuba Diving </li>
                                                            <li>  Tubing</li>
                                                            <li>  Swim with Dolphins</li>
                                                            <li>  Day Cruises</li>


                                                            <li> For each day there is a program of activities to do from the list above  </li>

                                                            <li>At the end of the day, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d112785.17548273502!2d34.4187941245666!3d27.946844025952235!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14533bca3624d2e3%3A0xdd987e9c1945fd9c!2z2LTYsdmFINin2YTYtNmK2K7YjCDZgtiz2YUg2LTYsdmFINin2YTYtNmK2K7YjCDYrNmG2YjYqCDYs9mK2YbYp9ih!5e0!3m2!1sar!2seg!4v1626886190109!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p> Loved it here! The staff are amazing, so friendly and courteous. The food is amazing, no place better. It's nice and quiet, and really adult friendly. There is another Rixos resort for families a few miles away, and you can stay at one and use the other (the adult friendly is only for adults) it's nice and quiet, and they have amazing, professional nightly show</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p> Everything was perfect ..Restraunts variety was imaginary at the reception (Guest Relations) was really helpful ..
                                                            I really recommend this hotel as you can use the facilities of the aqua park and the beach plus the access for many pools and restaurants ..The night show was great as well and so entertaining...</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 5 Days</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>5 Days-4 Nights </h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 1200</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%} else if (trip_id.equals("28")) {%>
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="detail_package clearfix">
                            <div class="col-sm-9 detail_package_left">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#term">DETAILS</a></li>

                                    <li><a data-toggle="tab" href="#term3">LOCATION</a></li>
                                    <li><a data-toggle="tab" href="#review_1">REVIEWS</a></li>

                                </ul>

                                <div class="tab-content clearfix">
                                    <div id="term" class="tab-pane fade in active clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 detail_package_left_inner">
                                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                    <!-- Indicators -->
                                                    <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                                    </ol>

                                                    <!-- Wrapper for slides -->
                                                    <div class="carousel-inner">
                                                        <div class="item">
                                                            <img src="img/D181.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D182.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D183.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D191.jpg" alt="...">

                                                        </div>
                                                        <div class="item active">
                                                            <img src="img/D192.jpg" alt="...">

                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D193.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D194.jpg" alt="...">


                                                        </div>
                                                        <div class="item">
                                                            <img src="img/D195.jpg" alt="...">


                                                        </div>

                                                    </div>

                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                                    </a>
                                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </a>
                                                </div>
                                                <div class="duration clearfix">
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-times-circle-o"></i>Trip Period : <span>7 Days </span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left">
                                                        <p><i class="fa fa-calendar"></i>Trip Validity  <span>  7 Days -6 Nights</span></p>
                                                    </div>
                                                    <div class="col-sm-4 duration_left_1 text-center">
                                                        <p>Trip Pass  <span>12345</span></p>
                                                    </div>
                                                </div>
                                                <div class="conclusion clearfix">
                                                    <div class="col-sm-6 conclusion_left">
                                                        <h5>Trip includes</h5>
                                                        <ul>
                                                            <li>Hotel</li>
                                                            <li> Qualified Egyptologist guide. </li>
                                                            <li> Entry Fees. </li>
                                                            <li> breakfast,Lunch and dinner at Local restaurant for each day.</li>
                                                            <li> Private Tour for each day. </li>


                                                            <li> Transport by private vehicle.</li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-6 conclusion_left border_2">
                                                        <h5>Trip Details</h5>
                                                        <ul>
                                                            <li> In every  morning, your personal tour guide will meet you at your hotel.</li>
                                                            <li> From there, you will travel together in a private air-conditioned vehicle to the trip starting point .</li>
                                                            <li> Stay 3 days in sharm el-shiekh </li>
                                                            <li> Rafing </li>
                                                            <li> Jet Skiing </li>
                                                            <li> Scuba Diving </li>
                                                            <li>  Tubing</li>
                                                            <li>  Swim with Dolphins</li>
                                                            <li>  Day Cruises</li>


                                                            <li> For each day there is a program of activities to do from the list above  </li>
                                                            <li> Go to Dahab stays 4 days there to complete the trip. </li>
                                                            <li> visit Blue Hole. </li>
                                                            <li> visit Laguna. </li>
                                                            <li> Light House,The Canyon and Abu Galum. </li>
                                                            <li> For each day there is a program of activities to do from the list above  </li>
                                                            <li>At the end of the day, your tour guide and driver will transfer you back to your hotel in a private air-conditioned vehicle. . </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="blank clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="term1" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top"><h4>Consectetur Adipiscing <span><i class="fa fa-times-circle"></i> 5 Nights/ 5 Days</span></h4></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term2" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term_1_inner">
                                                <div class="term_1_inner_top_1">
                                                    <p>
                                                        <span class="fa fa-hotel"></span>Augue Semper Porta
                                                        <i class="fa fa-star f1"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </p> 
                                                </div>

                                                <div class="term_1_inner_center border_bottom_1">

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="term3" class="tab-pane fade clearfix">
                                        <div class="click clearfix">
                                            <div class="col-sm-12 term3_inner">
                                                <div class="term3_inner_top clearfix">
                                                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d56103.4298207874!2d34.535445949821!3d28.495673496892632!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x15ab4b29bfad585f%3A0xac65238d793319bf!2z2K_Zh9io2Iwg2LPYp9mG2Kog2YPYp9iq2LHZitmG2Iwg2KzZhtmI2Kgg2LPZitmG2KfYoQ!5e0!3m2!1sar!2seg!4v1626886302158!5m2!1sar!2seg" width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                                                     


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="gallery_1" class="tab-pane fade clearfix gallery_1m">
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/36.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/37.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/38.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gallery_1i clearfix">
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/39.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/40.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="box_inner clearfix">
                                                    <img src="img/41.jpg" alt="abc" style="width:100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="review_1" class="tab-pane fade clearfix review_1m">
                                        <div class="click_1 clearfix">
                                            <div class="menu_2_inner_l clearfix">
                                                <h3>COMMENTS </h3>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Family <span>27 February, 2020 at 4.27 pm</span></h4>
                                                        <p> Loved it here! The staff are amazing, so friendly and courteous. The food is amazing, no place better. It's nice and quiet, and really adult friendly. There is another Rixos resort for families a few miles away, and you can stay at one and use the other (the adult friendly is only for adults) it's nice and quiet, and they have amazing, professional nightly show</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt"> Ammar Sarajevo <span>9 jun, 2020 at 3 pm</span></h4>
                                                        <p> Everything was perfect ..Restraunts variety was imaginary at the reception (Guest Relations) was really helpful ..
                                                            I really recommend this hotel as you can use the facilities of the aqua park and the beach plus the access for many pools and restaurants ..The night show was great as well and so entertaining...</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                                <div class="menu_2_inner_li clearfix">
                                                    <div class="col-sm-3">
                                                        <img src="img/p.jpg" style="width:100%;" alt="abc">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <h4 class="mgt">  Alisson Flores <span>2 octobur, 2020 at 6 pm</span></h4>
                                                        <p>  Amazing time! thank you so much for the lovely pictures you took for us.</p>
                                                        <h5 class="mgt"><a class="button" href="#">Reply</a></h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="menu_2_inner">
                                                <p>There are no reviews yet.</p>
                                                <p>Be the first to review “Sports Bra”<br>
                                                    Your email address will not be published. Required fields are marked *</p>
                                                <span>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                                <textarea placeholder="Your review" class="form-control form_2"></textarea>
                                                <div class="clearfix">
                                                    <div class="col-sm-6 space_left">
                                                        <input class="form-control" placeholder="Name" type="text">
                                                    </div>
                                                    <div class="col-sm-6 space_right">
                                                        <input class="form-control" placeholder="Email" type="text">
                                                    </div>
                                                </div>
                                                <h4 class="mgt"><a class="button" href="#"> SUBMIT</a></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-sm-3 detail_package_right">
                                <div class="detail_package_right_top">
                                    <h4><i class="fa fa-umbrella"></i> Tourist 5 Star Trip <span>for 7 Days</span></h4>
                                    <h5><i class="fa fa-times-circle-o"></i>7 Days-6 Nights "3 days in Sharm and 4 days in Dahab"</h5>
                                </div>
                                <div class="detail_package_right_1">

                                    <h3><span>$</span> 1900</h3>
                                    <div class="book_3 clearfix"><a href="reservation_form.jsp">Book</a></div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%}%>

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
                            <p  class="text-center p2">� 2021 Travel with me in Egypt. All Rights Reserved </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
