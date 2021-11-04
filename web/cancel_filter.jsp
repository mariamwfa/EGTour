<!DOCTYPE html>
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
                                    <li><a class="text_2" href="user_reservations.jsp">User Reservations</a></li>
                                    <li><a class="text_2" href="contact.jsp">Contact</a></li>
                                </ul>
                            </div>

                        </nav>
                    </div>
                </div>
            </div>
        </section>	

        <div style="margin-top:10px; margin-bottom:0px ; height: 15px; background-color: red"></div>

        <%
            String governorate = (String) session.getAttribute("city");

            MyDB db = new MyDB();
            Connection con = db.getCon();
            ResultSet RS_1 = null;
            Statement stmt = con.createStatement();
        %>

        <section id="package">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">

                        <div class="trip_detail clearfix">

                            <ul class="nav nav-tabs tab_trip">
                                <li class="active"><a data-toggle="tab" href="#home_1">All trips</a></li>
                                <li><a data-toggle="tab" href="#home_2">Cultural trips</a></li>
                                <li><a data-toggle="tab" href="#home_3">medical trips</a></li>
                                <li><a data-toggle="tab" href="#home_4">Leisure trips</a></li>
                            </ul>
                            <div class="tab-content clearfix">

                                <!-- home 1 -->

                                <div id="home_1" class="tab-pane fade in active clearfix">
                                    <%
                                        if (governorate.equals("All")) {
                                            RS_1 = stmt.executeQuery("select * from trips;");
                                        } else {
                                            RS_1 = stmt.executeQuery("select * from trips where city_1 = '" + governorate + "' or city_2 = '" + governorate + "';");
                                        }

                                        int[] pricess = new int[28];
                                        int[] price = new int[28];
                                        int[] placess = new int[28];
                                        int[] place = new int[28];

                                        int j = 0;
                                        int k = 0; // counter for price
                                        int u = 0; // counter for place

                                        while (RS_1.next()) {
                                            pricess[j] = RS_1.getInt("price");
                                            placess[j] = RS_1.getInt("number_of_places");
                                            j++;
                                        }

                                        // Sort the array
                                        int temp = 0;
                                        for (int i = 0; i < j; i++) {
                                            for (int L = 0; L < j; L++) {
                                                if (pricess[i] < pricess[L]) { // price
                                                    temp = pricess[i];
                                                    pricess[i] = pricess[L];
                                                    pricess[L] = temp;
                                                }

                                                if (placess[i] < placess[L]) { // place
                                                    temp = placess[i];
                                                    placess[i] = placess[L];
                                                    placess[L] = temp;
                                                }
                                            }
                                        }

                                        // Remove duplicates
                                        for (int i = 0; i < j; i++) {
                                            if (i + 1 != j && pricess[i] != pricess[i + 1]) { // price
                                                price[k] = pricess[i];
                                                k++;
                                            } else if (i == j - 1) {
                                                price[k] = pricess[i];
                                                k++;
                                            }

                                            if (i + 1 != j && placess[i] != placess[i + 1]) { // place
                                                place[u] = placess[i];
                                                u++;
                                            } else if (i == j - 1) {
                                                place[u] = placess[i];
                                                u++;
                                            }
                                        }

                                    %>
                                    <div class="package_1 clarfix">
                                        <div class="col-sm-6 package_1_inner">
                                            <p><span><%=j%></span> Holiday Tours</p>
                                        </div>
                                        <form action="filter.jsp">
                                            <div class="package_1 clarfix text-right">
                                                Select your price
                                                <select name="price" style="margin-right: 7px">
                                                    <option value="All">____</option>
                                                    <%for (int i = 0; i < k; i++) {%>
                                                    <option value="<%=price[i]%>"><%=price[i]%></option>
                                                    <%}%>
                                                </select>

                                                Select number of places
                                                <select name="place" style="margin-right: 7px">
                                                    <option value="All">____</option>
                                                    <%for (int i = 0; i < u; i++) {%>
                                                    <option value="<%=place[i]%>"><%=place[i]%></option>
                                                    <%}%>
                                                </select>

                                                <input type="hidden" name="trip_type" value="All">
                                                <input type="submit" value="Let's Go" style="background-color: green; color: white">
                                            </div>
                                        </form>
                                        <form action="sort.jsp">
                                            <div class="package_1 clarfix text-right">
                                                Sort By
                                                <select name="sort" style="margin-right: 7px">
                                                    <option value="All">___________________</option>
                                                    <option value="date">date</option>
                                                    <option value="quality (L to H)">quality (Low to High)</option>
                                                    <option value="quality (H to L)">quality (High to Low)</option>
                                                </select>

                                                <input type="hidden" name="trip_type" value="All">
                                                <input type="submit" value="Sort" style="background-color: green; color: white; padding-left: 18px; padding-right: 18px">   
                                            </div>
                                        </form>
                                    </div>
                                    <%
                                        if (governorate.equals("All")) {
                                            RS_1 = stmt.executeQuery("select * from trips;");
                                        } else {
                                            RS_1 = stmt.executeQuery("select * from trips where city_1 = '" + governorate + "' or city_2 = '" + governorate + "';");
                                        }
                                    %>
                                    <%while (RS_1.next()) {%>

                                    <div class="click clearfix">
                                        <div class="col-sm-3 trip_detail_left_main">
                                            <div class="trip_detail_main clearfix">
                                                <div class="trip_detail_image"><img src = "<%=RS_1.getString("img_name")%>" style="width: 100%; height: 237px"></div>
                                            </div>
                                        </div>
                                        <div class="col-sm-9 trip_detail_right_main" style="border: 2px solid black">
                                            <div class="trip_detail_right clearfix">
                                                <div class="col-sm-9 clearfix trip_detail_right_inner">
                                                    <h3><a href="details.jsp?id=<%=RS_1.getString("href")%>"><i class="fa fa-umbrella"></i><%=RS_1.getString("trip_name")%></a></h3>
                                                    <p style="margin-top: 5px;color: blue;"><%=RS_1.getString("start_end_date")%>
                                                        <span style="margin-left: 30px; color: red;"><%=RS_1.getInt("number_of_days")%> Day <%=RS_1.getString("start_end_time")%></span>
                                                    </p>
                                                    <p><%=RS_1.getString("trip_description")%></p>
                                                </div>
                                                <div class="col-sm-3 clearfix trip_detail_right_inner_1">
                                                    <p class="text-right"><i class="fa fa-times-circle-o"></i> 1D</p>
                                                    <h2 class="text-right"> <i class="fa fa-dollar"></i><%=RS_1.getInt("price")%></h2>
                                                    <br>
                                                    <h4 class="text-right enquiry"><a href="details.jsp?id=<%=RS_1.getString("href")%>">More</a></h4>
                                                </div>
                                            </div>
                                            <div class="clearfix">
                                                <div class="col-sm-8 trip_detail_last_1">
                                                    <span class="span_star">
                                                        <%for (int i = 1; i <= RS_1.getInt("quality"); i++) {%>
                                                        <i class="fa fa-star"></i>
                                                        <%}%>

                                                        <%for (int i = RS_1.getInt("quality") + 1; i <= 5; i++) {%>
                                                        <i class="fa fa-star-o"></i>
                                                        <%}%>

                                                        <span style="color: red; margin-left: 3px">Tourist <%=RS_1.getInt("quality")%> Star Trip</span>
                                                    </span>  
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <%}%>

                                </div>

                                <!-- home 2 -->

                                <div id="home_2" class="tab-pane fade in clearfix">
                                    <%
                                        if (governorate.equals("All")) {
                                            RS_1 = stmt.executeQuery("select * from trips where trip_type1 = 'cultural' or trip_type2 = 'cultural';");
                                        } else {
                                            RS_1 = stmt.executeQuery("select * from trips where (trip_type1 = 'cultural' or trip_type2 = 'cultural') and (city_1 = '" + governorate + "' or city_2 = '" + governorate + "');");
                                        }

                                        j = 0;
                                        k = 0; // counter for price
                                        u = 0; // counter for place

                                        while (RS_1.next()) {
                                            pricess[j] = RS_1.getInt("price");
                                            placess[j] = RS_1.getInt("number_of_places");
                                            j++;
                                        }

                                        // Sort the array
                                        temp = 0;
                                        for (int i = 0; i < j; i++) {
                                            for (int L = 0; L < j; L++) {
                                                if (pricess[i] < pricess[L]) { // price
                                                    temp = pricess[i];
                                                    pricess[i] = pricess[L];
                                                    pricess[L] = temp;
                                                }

                                                if (placess[i] < placess[L]) { // place
                                                    temp = placess[i];
                                                    placess[i] = placess[L];
                                                    placess[L] = temp;
                                                }
                                            }
                                        }

                                        // Remove duplicates
                                        for (int i = 0; i < j; i++) {
                                            if (i + 1 != j && pricess[i] != pricess[i + 1]) { // price
                                                price[k] = pricess[i];
                                                k++;
                                            } else if (i == j - 1) {
                                                price[k] = pricess[i];
                                                k++;
                                            }

                                            if (i + 1 != j && placess[i] != placess[i + 1]) { // place
                                                place[u] = placess[i];
                                                u++;
                                            } else if (i == j - 1) {
                                                place[u] = placess[i];
                                                u++;
                                            }
                                        }

                                    %>
                                    <div class="package_1 clarfix">
                                        <div class="col-sm-6 package_1_inner">
                                            <p><span><%=j%></span> Holiday Tours</p>
                                        </div>                                        
                                        <form action="filter.jsp">
                                            <div class="package_1 clarfix text-right">
                                                Select your price
                                                <select name="price" style="margin-right: 7px">
                                                    <option value="All">____</option>
                                                    <%for (int i = 0; i < k; i++) {%>
                                                    <option value="<%=price[i]%>"><%=price[i]%></option>
                                                    <%}%>
                                                </select>

                                                Select number of places
                                                <select name="place" style="margin-right: 7px">
                                                    <option value="All">____</option>
                                                    <%for (int i = 0; i < u; i++) {%>
                                                    <option value="<%=place[i]%>"><%=place[i]%></option>
                                                    <%}%>
                                                </select>

                                                <input type="hidden" name="trip_type" value="cultural">
                                                <input type="submit" value="Let's Go" style="background-color: green; color: white">
                                            </div>
                                        </form>
                                        <form action="sort.jsp">
                                            <div class="package_1 clarfix text-right">
                                                Sort By
                                                <select name="sort" style="margin-right: 7px">
                                                    <option value="All">___________________</option>
                                                    <option value="date">date</option>
                                                    <option value="quality (L to H)">quality (Low to High)</option>
                                                    <option value="quality (H to L)">quality (High to Low)</option>
                                                </select>

                                                <input type="hidden" name="trip_type" value="cultural">
                                                <input type="submit" value="Sort" style="background-color: green; color: white; padding-left: 18px; padding-right: 18px">   
                                            </div>
                                        </form>
                                    </div>
                                    <%
                                        if (governorate.equals("All")) {
                                            RS_1 = stmt.executeQuery("select * from trips where trip_type1 = 'cultural' or trip_type2 = 'cultural';");
                                        } else {
                                            RS_1 = stmt.executeQuery("select * from trips where (trip_type1 = 'cultural' or trip_type2 = 'cultural') and (city_1 = '" + governorate + "' or city_2 = '" + governorate + "');");
                                        }
                                    %>
                                    <%while (RS_1.next()) {%>

                                    <div class="click clearfix">
                                        <div class="col-sm-3 trip_detail_left_main">
                                            <div class="trip_detail_main clearfix">
                                                <div class="trip_detail_image"><img src = "<%=RS_1.getString("img_name")%>" style="width: 100%; height: 237px"></div>
                                            </div>
                                        </div>
                                        <div class="col-sm-9 trip_detail_right_main" style="border: 2px solid black">
                                            <div class="trip_detail_right clearfix">
                                                <div class="col-sm-9 clearfix trip_detail_right_inner">
                                                    <h3><a href="details.jsp?id=<%=RS_1.getString("href")%>"><i class="fa fa-umbrella"></i><%=RS_1.getString("trip_name")%></a></h3>
                                                    <p style="margin-top: 5px;color: blue;"><%=RS_1.getString("start_end_date")%>
                                                        <span style="margin-left: 30px; color: red;"><%=RS_1.getInt("number_of_days")%> Day <%=RS_1.getString("start_end_time")%></span>
                                                    </p>
                                                    <p><%=RS_1.getString("trip_description")%></p>
                                                </div>
                                                <div class="col-sm-3 clearfix trip_detail_right_inner_1">
                                                    <p class="text-right"><i class="fa fa-times-circle-o"></i> 1D</p>
                                                    <h2 class="text-right"> <i class="fa fa-dollar"></i><%=RS_1.getInt("price")%></h2>
                                                    <br>
                                                    <h4 class="text-right enquiry"><a href="details.jsp?id=<%=RS_1.getString("href")%>">More</a></h4>
                                                </div>
                                            </div>
                                            <div class="clearfix">
                                                <div class="col-sm-8 trip_detail_last_1">
                                                    <span class="span_star">
                                                        <%for (int i = 1; i <= RS_1.getInt("quality"); i++) {%>
                                                        <i class="fa fa-star"></i>
                                                        <%}%>

                                                        <%for (int i = RS_1.getInt("quality") + 1; i <= 5; i++) {%>
                                                        <i class="fa fa-star-o"></i>
                                                        <%}%>

                                                        <span style="color: red; margin-left: 3px">Tourist <%=RS_1.getInt("quality")%> Star Trip</span>
                                                    </span>  
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <%}%>

                                </div>

                                <!-- home 3 -->

                                <div id="home_3" class="tab-pane fade in clearfix">
                                    <%
                                        if (governorate.equals("All")) {
                                            RS_1 = stmt.executeQuery("select * from trips where trip_type1 = 'medical' or trip_type2 = 'medical';");
                                        } else {
                                            RS_1 = stmt.executeQuery("select * from trips where (trip_type1 = 'medical' or trip_type2 = 'medical') and (city_1 = '" + governorate + "' or city_2 = '" + governorate + "');");
                                        }

                                        j = 0;
                                        k = 0; // counter for price
                                        u = 0; // counter for place

                                        while (RS_1.next()) {
                                            pricess[j] = RS_1.getInt("price");
                                            placess[j] = RS_1.getInt("number_of_places");
                                            j++;
                                        }

                                        // Sort the array
                                        temp = 0;
                                        for (int i = 0; i < j; i++) {
                                            for (int L = 0; L < j; L++) {
                                                if (pricess[i] < pricess[L]) { // price
                                                    temp = pricess[i];
                                                    pricess[i] = pricess[L];
                                                    pricess[L] = temp;
                                                }

                                                if (placess[i] < placess[L]) { // place
                                                    temp = placess[i];
                                                    placess[i] = placess[L];
                                                    placess[L] = temp;
                                                }
                                            }
                                        }

                                        // Remove duplicates
                                        for (int i = 0; i < j; i++) {
                                            if (i + 1 != j && pricess[i] != pricess[i + 1]) { // price
                                                price[k] = pricess[i];
                                                k++;
                                            } else if (i == j - 1) {
                                                price[k] = pricess[i];
                                                k++;
                                            }

                                            if (i + 1 != j && placess[i] != placess[i + 1]) { // place
                                                place[u] = placess[i];
                                                u++;
                                            } else if (i == j - 1) {
                                                place[u] = placess[i];
                                                u++;
                                            }
                                        }

                                    %>
                                    <div class="package_1 clarfix">
                                        <div class="col-sm-6 package_1_inner">
                                            <p><span><%=j%></span> Holiday Tours</p>
                                        </div>                                        
                                        <form action="filter.jsp">
                                            <div class="package_1 clarfix text-right">
                                                Select your price
                                                <select name="price" style="margin-right: 7px">
                                                    <option value="All">____</option>
                                                    <%for (int i = 0; i < k; i++) {%>
                                                    <option value="<%=price[i]%>"><%=price[i]%></option>
                                                    <%}%>
                                                </select>

                                                Select number of places
                                                <select name="place" style="margin-right: 7px">
                                                    <option value="All">____</option>
                                                    <%for (int i = 0; i < u; i++) {%>
                                                    <option value="<%=place[i]%>"><%=place[i]%></option>
                                                    <%}%>
                                                </select>

                                                <input type="hidden" name="trip_type" value="medical">
                                                <input type="submit" value="Let's Go" style="background-color: green; color: white">
                                            </div>
                                        </form>
                                        <form action="sort.jsp">
                                            <div class="package_1 clarfix text-right">
                                                Sort By
                                                <select name="sort" style="margin-right: 7px">
                                                    <option value="All">___________________</option>
                                                    <option value="date">date</option>
                                                    <option value="quality (L to H)">quality (Low to High)</option>
                                                    <option value="quality (H to L)">quality (High to Low)</option>
                                                </select>

                                                <input type="hidden" name="trip_type" value="medical">
                                                <input type="submit" value="Sort" style="background-color: green; color: white; padding-left: 18px; padding-right: 18px">   
                                            </div>
                                        </form>
                                    </div>
                                    <%
                                        if (governorate.equals("All")) {
                                            RS_1 = stmt.executeQuery("select * from trips where trip_type1 = 'medical' or trip_type2 = 'medical';");
                                        } else {
                                            RS_1 = stmt.executeQuery("select * from trips where (trip_type1 = 'medical' or trip_type2 = 'medical') and (city_1 = '" + governorate + "' or city_2 = '" + governorate + "');");
                                        }
                                    %>
                                    <%while (RS_1.next()) {%>

                                    <div class="click clearfix">
                                        <div class="col-sm-3 trip_detail_left_main">
                                            <div class="trip_detail_main clearfix">
                                                <div class="trip_detail_image"><img src = "<%=RS_1.getString("img_name")%>" style="width: 100%; height: 237px"></div>
                                            </div>
                                        </div>
                                        <div class="col-sm-9 trip_detail_right_main" style="border: 2px solid black">
                                            <div class="trip_detail_right clearfix">
                                                <div class="col-sm-9 clearfix trip_detail_right_inner">
                                                    <h3><a href="details.jsp?id=<%=RS_1.getString("href")%>"><i class="fa fa-umbrella"></i><%=RS_1.getString("trip_name")%></a></h3>
                                                    <p style="margin-top: 5px;color: blue;"><%=RS_1.getString("start_end_date")%>
                                                        <span style="margin-left: 30px; color: red;"><%=RS_1.getInt("number_of_days")%> Day <%=RS_1.getString("start_end_time")%></span>
                                                    </p>
                                                    <p><%=RS_1.getString("trip_description")%></p>
                                                </div>
                                                <div class="col-sm-3 clearfix trip_detail_right_inner_1">
                                                    <p class="text-right"><i class="fa fa-times-circle-o"></i> 1D</p>
                                                    <h2 class="text-right"> <i class="fa fa-dollar"></i><%=RS_1.getInt("price")%></h2>
                                                    <br>
                                                    <h4 class="text-right enquiry"><a href="details.jsp?id=<%=RS_1.getString("href")%>">More</a></h4>
                                                </div>
                                            </div>
                                            <div class="clearfix">
                                                <div class="col-sm-8 trip_detail_last_1">
                                                    <span class="span_star">
                                                        <%for (int i = 1; i <= RS_1.getInt("quality"); i++) {%>
                                                        <i class="fa fa-star"></i>
                                                        <%}%>

                                                        <%for (int i = RS_1.getInt("quality") + 1; i <= 5; i++) {%>
                                                        <i class="fa fa-star-o"></i>
                                                        <%}%>

                                                        <span style="color: red; margin-left: 3px">Tourist <%=RS_1.getInt("quality")%> Star Trip</span>
                                                    </span>  
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <%}%>
                                </div>

                                <!-- home 4 -->

                                <div id="home_4" class="tab-pane fade in clearfix">
                                    <%
                                        if (governorate.equals("All")) {
                                            RS_1 = stmt.executeQuery("select * from trips where trip_type1 = 'leisure' or trip_type2 = 'leisure';");
                                        } else {
                                            RS_1 = stmt.executeQuery("select * from trips where (trip_type1 = 'leisure' or trip_type2 = 'leisure') and (city_1 = '" + governorate + "' or city_2 = '" + governorate + "');");
                                        }

                                        j = 0;
                                        k = 0; // counter for price
                                        u = 0; // counter for place

                                        while (RS_1.next()) {
                                            pricess[j] = RS_1.getInt("price");
                                            placess[j] = RS_1.getInt("number_of_places");
                                            j++;
                                        }

                                        // Sort the array
                                        temp = 0;
                                        for (int i = 0; i < j; i++) {
                                            for (int L = 0; L < j; L++) {
                                                if (pricess[i] < pricess[L]) { // price
                                                    temp = pricess[i];
                                                    pricess[i] = pricess[L];
                                                    pricess[L] = temp;
                                                }

                                                if (placess[i] < placess[L]) { // place
                                                    temp = placess[i];
                                                    placess[i] = placess[L];
                                                    placess[L] = temp;
                                                }
                                            }
                                        }

                                        // Remove duplicates
                                        for (int i = 0; i < j; i++) {
                                            if (i + 1 != j && pricess[i] != pricess[i + 1]) { // price
                                                price[k] = pricess[i];
                                                k++;
                                            } else if (i == j - 1) {
                                                price[k] = pricess[i];
                                                k++;
                                            }

                                            if (i + 1 != j && placess[i] != placess[i + 1]) { // place
                                                place[u] = placess[i];
                                                u++;
                                            } else if (i == j - 1) {
                                                place[u] = placess[i];
                                                u++;
                                            }
                                        }

                                    %>
                                    <div class="package_1 clarfix">
                                        <div class="col-sm-6 package_1_inner">
                                            <p><span><%=j%></span> Holiday Tours</p>
                                        </div>                                        
                                        <form action="filter.jsp">
                                            <div class="package_1 clarfix text-right">
                                                Select your price
                                                <select name="price" style="margin-right: 7px">
                                                    <option value="All">____</option>
                                                    <%for (int i = 0; i < k; i++) {%>
                                                    <option value="<%=price[i]%>"><%=price[i]%></option>
                                                    <%}%>
                                                </select>

                                                Select number of places
                                                <select name="place" style="margin-right: 7px">
                                                    <option value="All">____</option>
                                                    <%for (int i = 0; i < u; i++) {%>
                                                    <option value="<%=place[i]%>"><%=place[i]%></option>
                                                    <%}%>
                                                </select>

                                                <input type="hidden" name="trip_type" value="leisure">
                                                <input type="submit" value="Let's Go" style="background-color: green; color: white">
                                            </div>
                                        </form>
                                        <form action="sort.jsp">
                                            <div class="package_1 clarfix text-right">
                                                Sort By
                                                <select name="sort" style="margin-right: 7px">
                                                    <option value="All">___________________</option>
                                                    <option value="date">date</option>
                                                    <option value="quality (L to H)">quality (Low to High)</option>
                                                    <option value="quality (H to L)">quality (High to Low)</option>
                                                </select>

                                                <input type="hidden" name="trip_type" value="leisure">
                                                <input type="submit" value="Sort" style="background-color: green; color: white; padding-left: 18px; padding-right: 18px">   
                                            </div>
                                        </form>
                                    </div>
                                    <%
                                        if (governorate.equals("All")) {
                                            RS_1 = stmt.executeQuery("select * from trips where trip_type1 = 'leisure' or trip_type2 = 'leisure';");
                                        } else {
                                            RS_1 = stmt.executeQuery("select * from trips where (trip_type1 = 'leisure' or trip_type2 = 'leisure') and (city_1 = '" + governorate + "' or city_2 = '" + governorate + "');");
                                        }
                                    %>
                                    <%while (RS_1.next()) {%>

                                    <div class="click clearfix">
                                        <div class="col-sm-3 trip_detail_left_main">
                                            <div class="trip_detail_main clearfix">
                                                <div class="trip_detail_image"><img src = "<%=RS_1.getString("img_name")%>" style="width: 100%; height: 237px"></div>
                                            </div>
                                        </div>
                                        <div class="col-sm-9 trip_detail_right_main" style="border: 2px solid black">
                                            <div class="trip_detail_right clearfix">
                                                <div class="col-sm-9 clearfix trip_detail_right_inner">
                                                    <h3><a href="details.jsp?id=<%=RS_1.getString("href")%>"><i class="fa fa-umbrella"></i><%=RS_1.getString("trip_name")%></a></h3>
                                                    <p style="margin-top: 5px;color: blue;"><%=RS_1.getString("start_end_date")%>
                                                        <span style="margin-left: 30px; color: red;"><%=RS_1.getInt("number_of_days")%> Day <%=RS_1.getString("start_end_time")%></span>
                                                    </p>
                                                    <p><%=RS_1.getString("trip_description")%></p>
                                                </div>
                                                <div class="col-sm-3 clearfix trip_detail_right_inner_1">
                                                    <p class="text-right"><i class="fa fa-times-circle-o"></i> 1D</p>
                                                    <h2 class="text-right"> <i class="fa fa-dollar"></i><%=RS_1.getInt("price")%></h2>
                                                    <br>
                                                    <h4 class="text-right enquiry"><a href="details.jsp?id=<%=RS_1.getString("href")%>">More</a></h4>
                                                </div>
                                            </div>
                                            <div class="clearfix">
                                                <div class="col-sm-8 trip_detail_last_1">
                                                    <span class="span_star">
                                                        <%for (int i = 1; i <= RS_1.getInt("quality"); i++) {%>
                                                        <i class="fa fa-star"></i>
                                                        <%}%>

                                                        <%for (int i = RS_1.getInt("quality") + 1; i <= 5; i++) {%>
                                                        <i class="fa fa-star-o"></i>
                                                        <%}%>

                                                        <span style="color: red; margin-left: 3px">Tourist <%=RS_1.getInt("quality")%> Star Trip</span>
                                                    </span>  
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <%}%>

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