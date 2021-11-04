<%-- 
    Document   : newjsp
    Created on : Jul 11, 2021, 4:08:06 AM
    Author     : Mohamed
--%>

<%@page import="database.MyDB"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
            String city = (String) session.getAttribute("city");

            String trip_type = request.getParameter("trip_type");
            session.setAttribute("trip_type", trip_type);

            String price = request.getParameter("price");

            String place = request.getParameter("place");
           
            MyDB db = new MyDB();
            Connection con = db.getCon();
            ResultSet RS = null;
            Statement stmt = con.createStatement();

            int flag = 0;
     
            if (price.equals("All") && place.equals("All")) {
                RS = stmt.executeQuery("select * from trips;");
                response.sendRedirect("cancel_filter.jsp");
            }
            else if (city.equals("All") && trip_type.equals("All") && price.equals("All")) {
                RS = stmt.executeQuery("select * from trips where number_of_places = " + place + ";");
            } else if (city.equals("All") && trip_type.equals("All") && place.equals("All")) {
                RS = stmt.executeQuery("select * from trips where price = " + price + ";");
            } else if (city.equals("All") && price.equals("All") && place.equals("All")) {
                RS = stmt.executeQuery("select * from trips where trip_type1 = '" + trip_type + "' or trip_type2 = '" + trip_type + "';");
            } else if (trip_type.equals("All") && price.equals("All") && place.equals("All")) {
                RS = stmt.executeQuery("select * from trips where city_1 = '" + city + "' or city_2 = '" + city + "';");
            } else if (city.equals("All") && trip_type.equals("All")) {
                RS = stmt.executeQuery("select * from trips where price = " + price + " and number_of_places = " + place + ";");
            } else if (city.equals("All") && price.equals("All")) {
                RS = stmt.executeQuery("select * from trips where (trip_type1 = '" + trip_type + "' or trip_type2 = '" + trip_type + "') and number_of_places = " + place + ";");
            } else if (city.equals("All") && place.equals("All")) {
                RS = stmt.executeQuery("select * from trips where (trip_type1 = '" + trip_type + "' or trip_type2 = '" + trip_type + "') and price = " + price + ";");
            } else if (trip_type.equals("All") && price.equals("All")) {
                RS = stmt.executeQuery("select * from trips where (city_1 = '" + city + "' or city_2 = '" + city + "') and number_of_places = " + place + ";");
            } else if (trip_type.equals("All") && place.equals("All")) {
                RS = stmt.executeQuery("select * from trips where (city_1 = '" + city + "' or city_2 = '" + city + "') and price = " + price + ";");
            } else if (city.equals("All")) {
                RS = stmt.executeQuery("select * from trips where (trip_type1 = '" + trip_type + "' or trip_type2 = '" + trip_type + "') and price = " + price + " and number_of_places = " + place + ";");
            } else if (trip_type.equals("All")) {
                RS = stmt.executeQuery("select * from trips where (city_1 = '" + city + "' or city_2 = '" + city + "') and price = " + price + " and number_of_places = " + place + ";");
            } else if (price.equals("All")) {
                RS = stmt.executeQuery("select * from trips where (city_1 = '" + city + "' or city_2 = '" + city + "') and (trip_type1 = '" + trip_type + "' or trip_type2 = '" + trip_type + "') and number_of_places = " + place + ";");
            } else if (place.equals("All")) {
                RS = stmt.executeQuery("select * from trips where (city_1 = '" + city + "' or city_2 = '" + city + "') and (trip_type1 = '" + trip_type + "' or trip_type2 = '" + trip_type + "') and price = " + price + ";");
            } else {
                RS = stmt.executeQuery("select * from trips where (city_1 = '" + city + "' or city_2 = '" + city + "') and (trip_type1 = '" + trip_type + "' or trip_type2 = '" + trip_type + "') and number_of_places = " + place + " and price = " + price + ";");
            }
        %>

        <section id="package">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="package_1 clarfix">
                            <div class="col-sm-6 package_1_inner_1 text-right">
                            </div>
                        </div>
                        <div class="trip_detail clearfix">

                            <ul class="nav nav-tabs tab_trip" style="margin-bottom: 20px">
                                <li class="active"><a data-toggle="tab" href="#home_1">All trips</a></li>    
                                <li><p style="margin: 10px">You choose <span style = "color: red"><%=city%></span> city with <span style = "color: red"><%=trip_type%></span> tourism type in price <span style = "color: red">$<%=price%></span> and <span style = "color: red"><%=place%></span> places</a></li>
                                <li><a href="cancel_filter.jsp">Cancel your choice</a></li>
                            </ul>


                            <%while (RS.next()) {
                                    flag = 1;%>

                            <div class="click clearfix">
                                <div class="col-sm-3 trip_detail_left_main">
                                    <div class="trip_detail_main clearfix">
                                        <div class="trip_detail_image"><img src = "<%=RS.getString("img_name")%>" style="width: 100%; height: 237px"></div>
                                    </div>
                                </div>
                                <div class="col-sm-9 trip_detail_right_main" style="border: 2px solid black">
                                    <div class="trip_detail_right clearfix">
                                        <div class="col-sm-9 clearfix trip_detail_right_inner">
                                            <h3><a href="details.jsp?id=<%=RS.getString("href")%>"><i class="fa fa-umbrella"></i><%=RS.getString("trip_name")%></a></h3>
                                            <p style="margin-top: 5px;color: blue;"><%=RS.getString("start_end_date")%>
                                                <span style="margin-left: 30px; color: red;"><%=RS.getInt("number_of_days")%> Day <%=RS.getString("start_end_time")%></span>
                                            </p>
                                            <p><%=RS.getString("trip_description")%></p>
                                        </div>
                                        <div class="col-sm-3 clearfix trip_detail_right_inner_1">
                                            <p class="text-right"><i class="fa fa-times-circle-o"></i> 1D</p>
                                            <h2 class="text-right"> <i class="fa fa-dollar"></i><%=RS.getInt("price")%></h2>
                                            <br>
                                            <h4 class="text-right enquiry"><a href="details.jsp?id=<%=RS.getString("href")%>">More</a></h4>
                                        </div>
                                    </div>
                                    <div class="clearfix">
                                        <div class="col-sm-8 trip_detail_last_1">
                                            <span class="span_star">
                                                <%for (int i = 1; i <= RS.getInt("quality"); i++) {%>
                                                <i class="fa fa-star"></i>
                                                <%}%>

                                                <%for (int i = RS.getInt("quality") + 1; i <= 5; i++) {%>
                                                <i class="fa fa-star-o"></i>
                                                <%}%>

                                                <span style="color: red; margin-left: 3px">Tourist <%=RS.getInt("quality")%> Star Trip</span>
                                            </span>  
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <%}%>

                            <%
                                if (flag == 0) {
                                    out.print("<p style=color:blue;font-size:20px;margin:20px> There are no trips </p>");
                                }
                            %>

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
