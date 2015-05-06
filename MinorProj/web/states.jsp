<%-- 
    Document   : states
    Created on : Mar 22, 2014, 10:06:20 PM
    Author     : gaurav
--%>

<%@page import="database.utility"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            h3.heading 
            {
                font-family:futura_md_btmedium; 
                font-size:24px; 
                color:#000; 
                font-weight:normal; 
                text-transform:uppercase; 
                padding:12px 0 7px; 
                border-top:4px solid #ece9dd; 
                border-bottom:4px solid #ece9dd; 
                width:100%; 
                position:relative;
            }

            ul.stateNews li
            {
                font-size:13px; 
                margin-top: 4px;
                line-height:15px; 
                list-style-type: circle;
                padding-left:10px;
            }
            ul.stateNews li a
            {
                color:#cc3727;
            }
            ul.stateNews li a:hover
            {
                color:#666; 
            }
            h6.stateName 
            {
                text-transform:uppercase; 
                color:#666; 
                font-size:14px; 
                font-weight:normal; 
                margin-top:10px;
            }
            .noMarR 
            { 
                margin-right:0 !important; 
            }
        </style>
        <title>Minor Project | States :: Home</title>
        <link href="cssfiles/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel='stylesheet' type='text/css' href='cssfiles/stylesmenu.css' />
        <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <%@include file="htmlfiles/slogoandmenu.html" %>
        <!------End Slider ------------>
        <div id='cssmenu' style="float:left;height: 600px;" >
            <ul>
                <li class="active"><%--<a href='index.html'><span>Home</span></a>--%>
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
                                <li><%--<a href='#'><span>Maharashtra</span></a>--%>
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
                <li>
                    <span>
                        <form action="comparest.jsp">
                            <input type="submit" name="orcon" value="Compare 2 states" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                <li>
                <li class='last'>
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
                    <h3 style="margin-left:20px;color:black;">About</h3>
                    <div class="about-img" style="margin-top:20px;margin-left:20px;">
                        <img src="images/ind.jpg" alt="">
                    </div>
                    <div class="about-des" style="margin-top:20px;">
                        <p style="color:black;">The Indian economy has survived the global downturn very well. It has posted one of the highest rates of economic 
                            growth in the world despite other major industrial giants lagging behind.The strongest growth coming from the manufacturing and construction sector 
                            and the weakest section being agriculture. The strong rate of economic growth boosts prospects for the Indian Rupee in the years to come. The drawback
                            of such a rapid economic expansion is a rise in inflation.The economy of India is the eleventh largest economy in the world by nominal GDP. Post 
                            independence the country went into a fast paced economic growth which was further fuelled by the free market principles started in the 1990’s which 
                            welcomed foreign investments.
                        </p>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <div style="width:581px; float:left; margin-left:20px;float: left;">
            <h3 class="heading">
                News
            </h3>
            <div style="float:left; width:251px;margin-left: 10px;">
            
            <%
                try 
                {
                    DateFormat df = new SimpleDateFormat("dd/MM/yy");
                    Date dateobj = new Date();
                    Document doc1 = Jsoup.connect("http://www.ibef.org/states.aspx").get();
                    String s1="",s2="",s3="",s4="";
                    int j=0;
                    String[] st=new String[100];
                    for (Element bx : doc1.select("div.box231")) 
                   {
                       Elements tds2 = bx.select("h6");
                       if(tds2.size()>1)
                       {
                           st[3]=tds2.get(0).text();
                           st[4]=tds2.get(1).text();
                           st[5]=tds2.get(2).text();
                       }
                   }
                    for (Element box : doc1.select("div.box231")) 
                   {
                       Elements tds2 = box.select("h6");
                       if(tds2.size()>1)
                       {
                           st[0]=tds2.get(0).text();
                           st[1]=tds2.get(1).text();
                           st[2]=tds2.get(2).text();
                       }
                    for (Element table1 : box.select("ul.stateNews"))//right is class name of table
                    {
                        Elements tds1 = table1.select("li");
                        %>
                        
                            <h6 class="stateName"><%=st[j]%></h6>
                        <ul class="stateNews">
                        <%
                        for (int i = 0; i < tds1.size(); i++) 
                            {
                    %>

                            <li><a href="#"><%out.println(tds1.get(i).text());%></a></li>


                <%

                    }
                        %>
                        </ul>
                        <%
                j++;
                if(j>2)
                {
                    %>
                    </div>
                    <div style="float:left; width:265px; margin-left: 36px;" >
                    <%
                }
                        }
                    }

                } catch (Exception ex) {
                    out.println("" + ex);
                }
            %>    
            </div>
            
        </div>
            <div style="float:left; width:295px; margin-left: 36px;">
                <h3 class="heading">
                    Related Links
                </h3>
                <ul>
                    <%
                                try 
                                {
                                    int i = 0;
                                    Document doc = Jsoup.connect("https://www.google.co.in/search?newwindow=1&site=&source=hp&q=indian+industrial+state&oq=indian+industrial+state&gs_l=hp.3..0i22i30.3458.21575.0.21730.38.27.8.3.3.0.229.3791.5j21j1.27.0....0...1c.1.43.hp..7.31.2657.0.Gae1mpM2Z0M").userAgent("Chrome").get();
                                    %>
                                        <ul class="stateNews">
                                        <%
                                    for (Element divv : doc.select("li.g"))//right is class name of table
                                    {
                                        for (Element table : divv.select("h3.r")) 
                                        {
                                            String url = table.child(0).attr("abs:href");
                                            Elements dt = table.select("a");
                                            if (dt.size() > 0) 
                                            {
                                                if (i <= 5) 
                                                {
                            %>
                            <li><a href="<%=url%>"><%out.println(dt.get(0).text());%></a></li>
                                <%
                                                    }
                                                    i++;
                                                }
                                            }
                                        }
                                    %>
                                        </ul>
                                        <%
                                    } catch (Exception ex) 
                                    {
                                        out.println(ex);
                                    }
                                %>
                </ul>
            </div>
        <div class="clear"></div>
    </body>
</html>
