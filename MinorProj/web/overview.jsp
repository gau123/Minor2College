<%-- 
    Document   : overview
    Created on : Mar 22, 2014, 10:03:19 PM
    Author     : gaurav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Minor Project | industry :: Overview</title>
        <link href="cssfiles/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel='stylesheet' type='text/css' href='cssfiles/stylesmenu.css' />

        <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>

        <%--<script type='text/javascript' src='menu_jquery.js'></script>--%>
        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <%@include file="htmlfiles/ilogoandmenu.html" %>
        <!------End Slider ------------>

        <div id='cssmenu' style='height:1000px; float:left;'>
            <ul>
                <li><%--<a href='industry.jsp'><span>Home</span></a>--%>
                    <span>
                        <form action="industry.jsp">
                            <input type="submit" name="ohome" value="Home" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li class='has-sub'><a href='#'><span>Industries</span></a>
                    <ul>
                        <li><%--<a href='cotton.jsp'><span>Cotton Industry</span></a>--%>
                            <span>
                                <form action="cotton.jsp">
                                    <input type="submit" name="ocot" value="Cotton Industry" style="width:200px;text-align:left;"/>
                                </form>
                            </span>
                        </li>
                        <li><%--<a href='sugar.jsp'><span>Sugar Industry</span></a>--%>
                            <span>
                                <form action="sugar.jsp">
                                    <input type="submit" name="osug" value="Sugar Industry" style="width:200px;text-align:left;"/>
                                </form>
                            </span>
                        </li>
                        <li><%--<a href='#'><span>Agriculture Industry</span></a>--%>
                            <span>
                                <form action="agriculture.jsp">
                                    <input type="submit" name="oagri" value="FoodGrain Industry" style="width:200px;text-align:left;"/>
                                </form>
                            </span>
                        </li>
                        <li><%--<a href='tourism.jsp'><span>Tourism Industry</span></a>--%>
                            <span>
                                <form action="rice.jsp">
                                    <input type="submit" name="otour" value="Rice Industry" style="width:200px;text-align:left;"/>
                                </form>
                            </span>
                        </li>
                    </ul>
                </li>
                <li class="active"><%--<a href='overview.jsp'><span>Overview</span></a>--%>
                    <span>
                        <form action="#">
                            <input type="submit" name="over" value="Overview" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li><%--<a href='about.jsp'><span>About</span></a>--%>
                    <span>
                        <form action="about.jsp">
                            <input type="submit" name="oabt" value="About" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li><%--<a href='contact.jsp'><span>Contact</span></a>--%>
                    <span>
                        <form action="contact.jsp">
                            <input type="submit" name="ocon" value="Contact" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li>
                    <span>
                        <form action="viewdata.jsp">
                            <input type="submit" name="ctcon" value="View Statistical Data" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li>
                    <span>
                        <form action="compindus.jsp">
                            <input type="submit" name="ctcon" value="Compare 2 Industries" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
            </ul>
        </div>   
        <div class="about">
            <div class="about-top">
                <div class="col span_1_of_about">
                    <div class="top-box">
                        <h2 style="color:black;">Overview</h2>
                        <hr>
                        <p style="font-size:0.8525em;color:black;">India is a fast developing country. Since independence she has achieved remarkably in industrial sectors. 
                            Some of the major industry are mentioned below-</p>
                        <br><hr> 
                    </div>
                    <h3 style="margin-left:20px;color:black;">Iron And Steel</h3>
                    <div class="about-img" style="margin-top:5px;margin-left:20px;">
                        <img src="images/iron.jpg" alt="">
                    </div>
                    <div class="about-des" style="margin-top:20px;">
                        <p style="font-size:0.8525em;color:black;">Iron and Steel industries are considered to the backbone of any nation. First Iron and Steel company in India was established 
                            in Kulti (West Bengal) in the year 1874 AD Brakar Iron company was the name of the establishment. But this first modern Iron and 
                            Steel plant was set up by Jamshedji Ta¬ta Sakchi (Jharkhand) in 1907.
                        </p>
                    </div>
                    <div class="clear"></div>
                    <h3 style="margin-left:20px; margin-top:10px;color:black;">Sugar</h3>
                    <div class="about-img" style="margin-top:5px;margin-left:20px;">
                        <img src="images/sug.jpg" alt="">
                    </div>
                    <div class="about-des" style="margin-top:20px;">
                        <p style="font-size:0.8525em;color:black;">Sugar industries is one of the oldestand important industries of India.
                            It is the second largest industry after cotton textile industry among agriculture-based industries in India.
                            India is now the largest producer and consumer of sugar in the world. Maharashtra contributes over one third of the total sugar 
                            output, followed closely by Uttar Pradesh.
                        </p>
                    </div>
                    <div class="clear"></div>
                    <h3 style="margin-left:20px; margin-top:10px;color:black;">Cotton</h3>
                    <div class="about-img" style="margin-top:5px;margin-left:20px;">
                        <img src="images/cotn.jpg" alt="">
                    </div>
                    <div class="about-des" style="margin-top:20px;">
                        <p style="font-size:0.8525em;color:black;">Oldest industry of India, and employees largest number of workers.It is the largest organised and broad-based industry which 
                            accounts for 4% of GDP, 20% of manufacturing value-added and one third of total export earnings.
                        </p>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div> 
        <div class="clear"></div>
    </body>
</html>
