<%-- 
    Document   : industry
    Created on : Mar 22, 2014, 10:02:22 PM
    Author     : gaurav
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="beans.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.yldcluster"%>
<%@page import="database.utility"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="beans.yldclusterarraylist"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%--<title>Minor Project | industry :: Home</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel='stylesheet' type='text/css' href='stylesmenu.css' />

        <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>

        <script type='text/javascript' src='menu_jquery.js'></script>
        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>--%>
        <title>Minor Project :: Industry About</title>
        <%@include file="htmlfiles/links.html" %>
    
    </head>
    
    <body>
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
            h5.heading 
            {
                font-family:futura_md_btmedium; 
                font-size:16px; 
                color:#000; 
                font-weight:normal; 
                text-transform:uppercase; 
                padding:12px 0 7px; 
                border-top:4px solid #ece9dd; 
                border-bottom:4px solid #ece9dd; 
                width:100%; 
                position:relative;
            }
            ol.news
            {
                margin-top:10px; 
                height:173px;
            }
            ol.news li
            {
                font-size:13px; 
                padding-bottom:10px; 
                line-height:14px;
            }
            ol.news li a
            {
                color:#cc6633;
            }
            ol.news li a:hover
            {
                color:#666; 
            }
        </style>
        <%@include file="htmlfiles/ilogoandmenu.html" %>
        <!------End Slider ------------>

        <div id='cssmenu' style='height:600px; float:left;'>
            <ul>
                <li class="active"><%--<a href='industry.jsp'><span>Home</span></a>--%>
                    <span>
                        <form action="#">
                            <input type="submit" name="home" value="Home" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li class='has-sub'><a href='#'><span>Industries</span></a>
                    <ul>
                        <li><%--<a href='cotton.jsp'><span>Cotton Industry</span></a>--%>
                            <span>
                                <form action="cotton.jsp">
                                    <input type="submit" name="hcot" value="Cotton Industry" style="width:200px;text-align:left;"/>
                                </form>
                            </span>
                        </li>
                        <li><%--<a href='sugar.jsp'><span>Sugar Industry</span></a>--%>
                            <span>
                                <form action="sugar.jsp">
                                    <input type="submit" name="hsug" value="Sugar Industry" style="width:200px;text-align:left;"/>
                                </form>
                            </span>
                        </li>
                        <li><%--<a href='#'><span>Agriculture Industry</span></a>--%>
                            <span>
                                <form action="agriculture.jsp">
                                    <input type="submit" name="hagri" value="Agriculture Industry" style="width:200px;text-align:left;"/>
                                </form>
                            </span>
                        </li>
                        <li><%--<a href='tourism.jsp'><span>Tourism Industry</span></a>--%>
                            <span>
                                <form action="rice.jsp">
                                    <input type="submit" name="htour" value="Rice Industry" style="width:200px;text-align:left;"/>
                                </form>
                            </span>
                        </li>
                    </ul>
                </li>
                <li><%--<a href='about.jsp'><span>About</span></a>--%>
                    <span>
                        <form action="about.jsp">
                            <input type="submit" name="habt" value="About" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li><%--<a href='contact.jsp'><span>Contact</span></a>--%>
                    <span>
                        <form action="contact.jsp">
                            <input type="submit" name="hcon" value="Contact" style="width:200px;text-align:left;"/>
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
                <li class="last">
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
                    <h3 style="margin-left:20px;color:black;">About</h3>
                    <div class="about-img" style="margin-top:10px;margin-left:20px;">
                        <img src="images/ind.jpg" alt="">
                    </div>
                    <div class="about-des" style="margin-top:10px;">
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
                    Document doc1 = Jsoup.connect("http://www.ibef.org/industry.aspx").get();
                    String s1="",s2="",s3="",s4="";
                    int j=0;
                    String[] st1=new String[100];
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
                       Elements tds2 = box.select("h3.industryHeading");
                       st[0]=tds2.get(0).text();
                       st1=st[0].split("More");
                    for (Element table1 : box.select("ul.industryText"))//right is class name of table
                    {
                       Elements tds1 = table1.select("li");
                        %>
                        
                            <h6 class="stateName"><%=st1[0].toUpperCase()%></h6>
                        <ol class="news">
                        <%
                        for (int i = 0; i < tds1.size(); i++) 
                            {
                    %>

                            <li><a href="#"><%out.println(tds1.get(i).text());%></a></li>


                <%

                    }
                        %>
                        </ol>
                        <%
                j++;
                if(j>0)
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
                                    Document doc = Jsoup.connect("https://www.google.co.in/search?newwindow=1&q=indian+industries&oq=indian+indus&gs_l=serp.3.1.0l10.87353.91457.0.92754.18.15.3.0.0.0.221.1805.7j3j5.15.0....0...1c.1.43.serp..3.15.1185.4YpaZrt_TpY").userAgent("Chrome").get();
                                    %>
                                        <ol class="news">
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
                                        </ol>
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
