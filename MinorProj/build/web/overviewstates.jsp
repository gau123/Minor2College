<%-- 
    Document   : overviewstates
    Created on : Mar 22, 2014, 10:04:55 PM
    Author     : gaurav
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="database.utility"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Minor Project | States :: Overview</title>
        <link href="cssfiles/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel='stylesheet' type='text/css' href='cssfiles/stylesmenu.css' />
        <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <%!
        String df;
        %>
        <%@include file="htmlfiles/slogoandmenu.html" %>
        <!------End Slider ------------>

        <div id='cssmenu' style="float:left;">
            <ul>
                <li><%--<a href='index.html'><span>Home</span></a>--%>
                    <span>
                        <form action="states.jsp">
                            <input type="submit" name="shome" value="Home" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li class='has-sub'><a href='#'><span>States</span></a>
                    <ul>
                        <li class='has-sub'><a href='#'><span>North India</span></a>
                            <ul>
                                <li>
                                    <span>
                                        <form action="bihar.jsp">
                                            <input type="submit" name="ordel" value="Bihar" style="width:200px;text-align:left;"/>
                                        </form>
                                    </span>
                                </li>
                                <li>
                                    <span>
                                        <form action="haryana.jsp">
                                            <input type="submit" name="orhar" value="Haryana" style="width:200px;text-align:left;"/>
                                        </form>
                                    </span>
                                </li>
                                <li>
                                    <span>
                                        <form action="Punjab.jsp">
                                            <input type="submit" name="orpun" value="Punjab" style="width:200px;text-align:left;"/>
                                        </form>
                                    </span>
                                </li>
                                <li class='last'>
                                    <span>
                                        <form action="up.jsp">
                                            <input type="submit" name="orup" value="Uttar Pradesh" style="width:200px;text-align:left;"/>
                                        </form>
                                    </span>
                                </li>
                            </ul>
                        </li>
                        <li class='has-sub'><a href='#'><span>South India</span></a>
                            <ul>
                                <li>
                                    <span>
                                        <form action="andhra.jsp">
                                            <input type="submit" name="orandh" value="Andhra Pradesh" style="width:200px;text-align:left;"/>
                                        </form>
                                    </span>
                                </li>
                                <li>
                                    <span>
                                        <form action="karnataka.jsp">
                                            <input type="submit" name="orkarn" value="Karnataka" style="width:200px;text-align:left;"/>
                                        </form>
                                    </span>
                                </li>
                                <li class='last'><%--<a href='#'><span>Tamil Nadu</span></a>--%>
                                    <span>
                                        <form action="tamil.jsp">
                                            <input type="submit" name="ortam" value="Tamil Nadu" style="width:200px;text-align:left;"/>
                                        </form>
                                    </span>
                                </li>
                            </ul>
                        </li>
                        <li class='has-sub'><a href='#'><span>Western India</span></a>
                            <ul>
                                <li><%--<a href='#'><span>Gujarat</span></a>--%>
                                    <span>
                                        <form action="gujarat.jsp">
                                            <input type="submit" name="orguj" value="Gujarat" style="width:200px;text-align:left;"/>
                                        </form>
                                    </span>
                                </li>
                                <li><%--<a href='#'><span>Madhya Pradesh</span></a>--%>
                                    <span>
                                        <form action="madhya.jsp">
                                            <input type="submit" name="ormadh" value="Madhya Pradesh" style="width:200px;text-align:left;"/>
                                        </form>
                                    </span>
                                </li>
                                <li ><%--<a href='#'><span>Maharashtra</span></a>--%>
                                    <span>
                                        <form action="maharashtra.jsp">
                                            <input type="submit" name="ormaha" value="Maharashtra" style="width:200px;text-align:left;"/>
                                        </form>
                                    </span>
                                </li>
                                <li class='last'><%--<a href='#'><span>Tamil Nadu</span></a>--%>
                                    <span>
                                        <form action="Rajasthan.jsp">
                                            <input type="submit" name="ortam" value="Rajasthan" style="width:200px;text-align:left;"/>
                                        </form>
                                    </span>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="active"><%--<a href='overviewstates.html'><span>Overview</span></a>--%>
                    <span>
                        <form action="overviewstates.jsp">
                            <input type="submit" name="orover" value="Overview" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li><%--<a href='about.html'><span>About</span></a>--%>
                    <span>
                        <form action="about.jsp">
                            <input type="submit" name="orabt" value="About" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li><%--<a href='contact'><span>Contact</span></a>--%>
                    <span>
                        <form action="contact.jsp">
                            <input type="submit" name="orcon" value="Contact" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li><%--<a href='contact'><span>Contact</span></a>--%>
                    <span>
                        <form action="comparest.jsp">
                            <input type="submit" name="orcon" value="Compare 2 States" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li>
                    <span>
                        <form action="viewsdata.jsp">
                            <input type="submit" name="orcon" value="Last 10 Years Data" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
            </ul>
        </div>   
        <div class="about">
            <div class="about-top">
                <div class="col span_1_of_about">
                    <div class="top-box">
                        <h2 style="color: black;">States Of India</h2>
                        <hr>
                        <p style="font-size:0.8525em;color: black;">India is a federal union of states comprising twenty-eight states and seven union territories. The states and union territories 
                            are further subdivided into districts and so on.Major states are--</p>
                        <br><hr> 
                    </div>
                    <h3 style="margin-left:20px;color: black;">West Bengal</h3>
                    <div class="about-img" style="margin-top:5px;margin-left:20px;">
                        <img src="images/bengal.jpg" alt="">
                    </div>
                    <div class="about-des" style="margin-top:20px;">
                        <p style="font-size:0.8525em;color: black;"><%--Though agriculture is the leading occupation, service industries have been the largest contributor to the gross domestic 
product of the state.The state has promoted foreign direct investment, which has mostly come in the software and electronics fields.--%>
                            <%
                                
                                utility ob=new utility();
                                String qry1="select def from def where state='west-bengal'";
                                ResultSet rs1=ob.DQL(qry1);
                                if(rs1.next())
                                {
                                    df=rs1.getString("def");
                                    %>
                                    <%=df%>
                                    <%
                                }
                                %>
                        </p>
                    </div>
                    <div class="clear"></div>
                    <h3 style="margin-left:20px; margin-top:10px;color: black;">Delhi</h3>
                    <div class="about-img" style="margin-top:5px;margin-left:20px;">
                        <img src="images/delhi.jpg" alt="">
                    </div>
                    <div class="about-des" style="margin-top:20px;">
                        <p style="font-size:0.8525em;color: black;">Delhi is a metropolitan region  and largest commercial centre in northern India. With a population of 22 million in 2011, it is the world's second most populous city
and the largest city in India in terms of area.It has one of India's largest and fastest growing retail industries.
                        </p>
                    </div>
                    <div class="clear"></div>
                    <h3 style="margin-left:20px; margin-top:10px;color: black;">Maharashtra</h3>
                    <div class="about-img" style="margin-top:5px;margin-left:20px;">
                        <img src="images/Maharashtra.jpg" alt="">
                    </div>
                    <div class="about-des" style="margin-top:20px;">
                        <p style="font-size:0.8525em;color: black;"><%--Maharashtra has three of fifteen most important cities of India. These include Mumbai, Pune and Nagpur. Over 41 per cent of 
                            the CNX 500 conglomerates have corporate offices in Maharashtra.Maharashtra is India's leading industrial state contributing 
15 per cent of national industrial output and over 40 per cent of India's national revenue.--%>
                          <%
                                
                                ob=new utility();
                                qry1="select def from def where state='maharashtra'";
                                rs1=ob.DQL(qry1);
                                if(rs1.next())
                                {
                                    df=rs1.getString("def");
                                    %>
                                    <%=df%>
                                    <%
                                }
                                %>  
                        </p>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div> 
        <div class="clear"></div>
    </body>
</html>
