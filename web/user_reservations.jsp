<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="database.MyDB"%>
<%@page import="java.sql.*"%>
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
                                    <li><a class="text_2 active_1" href="user_reservations.jsp">User Reservations</a></li>
                                    <li><a class="text_2" href="contact.jsp">Contact</a></li>
                                </ul>
                            </div><!-- /.navbar-collapse -->
                        </nav>
                    </div>
                </div>
            </div>
        </section>	

        <%
            MyDB db = new MyDB();
            Connection con = db.getCon();
            ResultSet RS = null;
            Statement stmt = con.createStatement();

            int flag = 0;

            RS = stmt.executeQuery("select * from reservation where email = '" + session.getAttribute("customer_email") + "';");
        %>

        <div style="margin-top:10px; margin-bottom:0px ; height: 15px; background-color: red"></div>

        <section id="fare" style="background-color: white">
                    <div class="col-sm-12 box">
                        <div class="col-sm-2 box_1">
                            <p>Reservation ID</p>
                        </div>
                        <div class="col-sm-2 box_1">
                            <p>Trip</p>
                        </div>
                        <div class="col-sm-2 box_1">
                            <p>Price</p>
                        </div>
                        <div class="col-sm-2 box_1">
                            <p>Email</p>
                        </div>
                    </div>
                    <%while (RS.next()){ flag = 1;%>
                    <div class="col-sm-12 box_2">
                        <div class="col-sm-2 box_2_inner_1">
                            <h3><%=RS.getInt("reservation_id")%></h3>
                        </div>
                        <div class="col-sm-2 box_2_inner_1">
                            <h3><%=RS.getString("trip_name")%></h3>
                        </div>
                        <div class="col-sm-2 box_2_inner_1">
                            <h4>$<%=RS.getInt("price")%></h4>
                        </div>
                        <div class="col-sm-2 box_2_inner_1">
                            <h4><%=RS.getString("email")%></h4>
                        </div>
                        <div class="col-sm-2 box_2_inner_3">
                            <p><a href="cancel_reservation?id=<%=RS.getInt("reservation_id")%>">Cancel</a></p>
                        </div>
                    </div>    
                    <%}%>
                    
                    <%
                        if (flag == 0)
                            out.print("<h3 style = 'margin-top:80px; text-align: center;'>There are no reservations.<h3>");
                    %>
        </section>

        <section id="footer_text"  class="border_bottom_3 border_top_3" style="margin-top: 298px">
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
                                        <a href="#"><i class="fa fa-linkedin"></i></a>
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
