<%-- 
    Document   : index
    Created on : Mar 21, 2014, 6:11:07 PM
    Author     : gaurav
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@page import=""%>--%>

<!DOCTYPE HTML>
<html>
    <head>
        <title>Minor Project</title>
        
        <%@include file="htmlfiles/links.html" %>
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

            ul.news
            {
                margin-top:10px; 
                height:173px;
                color:#cc6633;
            }
            ul.news li
            {
                font-size:11px; 
                padding-bottom:8px; 
                line-height:14px;
            }
            ul.news li a
            {
                color:#cc6633;
            }
            ul.news li a:hover
            {
                color:#666; 
            }
            h3.ind a 
            {
                color:black;
            }
            a.indus div h3:hover
            {
                color: black;
            }
            a.indus div:hover
            {
                color:yellowgreen;
            }
            #slideshome {
width: 740px;
height: 300px;
float: left;
position: relative;
z-index: 0;
}
            .featuresBox {margin-top:10px; float:left;}

            ul.features{float:right; width:165px; margin-left:10px;}
            ul.features li{font-size:11px; padding-bottom:6px; line-height:13px;}
        </style>
        <script type="text/javascript">
            $(window).load(function()
            {
                $('#slider').nivoSlider();
            });
        </script>
    </head>
    <body>
        <%!
        String urll;
        %>
        <%@include file="htmlfiles/logo.html" %>
        <!------ Slider ------------>
        <div class="banner" style="height:22px;">
            <div class="wrap" >
                <div class="cssmenu">
                    <ul>
                        <li class="active"><a href="index.jsp"><span>Home</span></a></li>
                        <li><a href="about.jsp"><span>About us</span></a></li>
                        <li><a href="industry.jsp"><span>Industry</span></a></li>
                        <li class="has-sub"><a href="states.jsp"><span>States</span></a></li>
                        <li class="last"><a href="contact.jsp"><span>Contact</span></a></li>
                        <div class="clear"></div>
                    </ul>
                </div>
                
                <%--<div class="slider">
                    <div class="slider-wrapper theme-default">
                        <div id="slider" class="nivoSlider">
                            <img src="images/agriculture.jpg" alt="Agriculture Industry" />
                            <img src="images/cotton.jpg" alt="" />
                            <img src="images/sugercane.jpg" alt="" />
                            <img src="images/tourism1.jpg" alt="" />
                        </div>
                    </div>
</div>--%>
                </div>
                
        </div>
                <div>
                    <%-- <div class="slider" style="margin-left:150px;float: left;width: 60%!important;margin-top: 20px;">
                    <div class="slider-wrapper theme-default">
                        <div id="slider" class="nivoSlider">
                            <img src="images/agriculture.jpg" alt="Agriculture Industry" />
                            <img src="images/cotton.jpg" alt="" />
                            <img src="images/sugercane.jpg" alt="" />
                            <img src="images/tourism1.jpg" alt="" />
                        </div>
                    </div>
</div>--%>
                    <div style="width:40%;">
                </div>
                </div>
                
                <div class="main">
            <div class="wrap">
                <div class="content-top">
                    <div class="top-box">
                         <h2 style="color: black;">Industrialization in India</h2>
                    </div>
                    <div class="section group">
                        <div class="col_1_of_5 span_1_of_5 ">
                            <div class="grid_img" >
                                <img src="images/cot.jpg"  alt=""/>
                            </div>
                            <h3 style="color: black;margin-left: 30px;" class="ind"><a href="cotton.jsp">Cotton Industry</a></h3>
                            <p style="color: black;">Only industry after agriculture that has generated huge employment for both skilled and unskilled labor</p>
                        </div>
                        <div class="col_1_of_5 span_1_of_5">
                            <div class="grid_img">
                                <img src="images/sugar.jpg" alt=""/>
                            </div>
                            <h3 style="color: black;margin-left: 30px;" class="ind"><a href="sugar.jsp">Sugar Industry</a></h3>
                            <p style="color: black;">India ranked as No.1 in this industry in 7 over past 10 years..</p>
                        </div>
                         <div class="col_1_of_5 span_1_of_5">
                            <div class="grid_img">
                                <img src="images/tour.jpg" alt=""/>
                            </div>
                             <h3 style="color: black;" class="ind"><a href="index.jsp" >Tourism Industry</a></h3>
                            <p style="color: black;">Pride of India and showcase of Indian natural and man made beauty..</p>
</div>
                        <div class="col_1_of_5 span_1_of_5">
                            <div class="grid_img">
                                <img src="images/agri.jpg" alt=""/>
                            </div>
                            <h3 style="color: black;" class="ind"><a href="agriculture.jsp">Agriculture Industry</a></h3>
                            <p style="color: black;">Largest industry that has created employment for both skilled and unskilled labour..</p>
                        </div>
                        <div class="col_1_of_5 span_1_of_5">
                            <div class="grid_img">
                                <img src="images/rice1.jpg" alt=""/>
                            </div>
                            <h3 style="color: black;margin-left: 45px;" class="ind"><a href="rice.jsp">Rice Industry</a></h3>
                            <p style="color: black;margin-left: 20px;">Rice production in India is an important part of the national economy...</p>
                        </div>
                        <div class="clear"></div>
                    </div>
</div>
                <div class="content-bottom">
                    <div class="top-box">
                        <h2 style="color: black;">Operations</h2>
                        <hr>
                        <p style="color:black;">This is a business website which help users to choose the business best suitable for them and gives them the most advantage. This site also predicts the future grwoth of a particular business. </p>
                    </div>
                    <div class="section group">
                        <div class="col_1_of_4 span_1_of_4">
                            <div class="hover_img">

                            </div>
                            <a href="viewdata.jsp" class="indus"><div class="caption" onmouseover="this.style.background='#E4E24F';" onmouseout="this.style.background='#2f292b';">
                                <h3 style="color: white;">VIEW DATA</h3><br>
                                <hr class="hr">
                                <P> Explore last 10 years data.. <P>
                            </div></a>
                        </div>
                        
                        <div class="col_1_of_4 span_1_of_4">
                            <div class="hover_img">

                            </div>
                            <a href="comparest.jsp" class="indus"><div class="caption" onmouseover="this.style.background='#E4E24F';" onmouseout="this.style.background='#2f292b';">
                            
                                <h3 style="color: white;">COMPARISON OF STATES </h3><br>
                                <hr class="hr">
                                <p>Compare two states within a Industry... </p>
                                </div></a>
                        </div>
                        <div class="col_1_of_4 span_1_of_4">
                            <div class="hover_img">

                            </div>
                            <a href="prediction.jsp" class="indus"><div class="caption" onmouseover="this.style.background='#E4E24F';" onmouseout="this.style.background='#2f292b';">
                            
                                <h3 style="color: white;">DATA FORECASTING</h3><br>
                                <hr class="hr">
                                <p>Forecast future values.. </p>
                            </div>
                            </a>
                        </div>
                        <div class="col_1_of_4 span_1_of_4">
                            <div class="hover_img">

                            </div>
                            <a href="trend.jsp" class="indus"><div class="caption" onmouseover="this.style.background='#E4E24F';" onmouseout="this.style.background='#2f292b';">
                            
                                <h3 style="color: white;">GRAPHICAL OBSERVATION</h3><br>
                                <hr class="hr">
                                <p>Observe the growth of data graphically.. </p>
                            </div>
                            </a>
                        </div>
                        <div class="clear"></div>
                    </div>
</div>
                <div style="width:245px; margin-left: 30px;font-size: 14px;float:left;">
                <h3 class="heading">
                    News
                </h3>
                    <ul class="news">
                <%
                    try 
                    {
                        int i=0;
                        DateFormat df = new SimpleDateFormat("dd/MM/yy");
                        Date dateobj = new Date();
                        Document doc1 = Jsoup.connect("http://www.ibef.org/").get();
                        for (Element table1 : doc1.select("ul.news"))//right is class name of table
                        {
                            for(Element lii : table1.select("li"))
                            {
                                urll=lii.child(0).attr("abs:href");
                                Elements dt = lii.select("a");
                                if(dt.size()>0)
                                {
                                    if(i<=5)
                                    {
                                        %>
                                        <li><a href="news.jsp?link=<%=urll%>">
                                                <%out.println(dt.get(0).text());%>
                                            </a>
                                        </li>
                                        <%
                                    }
                                    i++;
                                }
                            }
                        }
                    }
                    catch (Exception ex) 
                    {
                        out.println(""+ex);
                    }
                %>
                </ul>
            </div>
            <div style="width:245px; margin-left: 40px;font-size: 14px;float: left;">
                <h3 class="heading">
                    Features
                </h3>
                <%
                    try {
                        
                        DateFormat df = new SimpleDateFormat("dd/MM/yy");
                        Date dateobj = new Date();
                        Document doc1 = Jsoup.connect("http://www.ibef.org/").get();
                        %>
                        <ul class="news">
                    <li><%out.println(df.format(dateobj));%></li>
                        <%
                        for (Element table1 : doc1.select("ul.features"))//right is class name of table
                        {
                           // System.out.println("aaaa");
                            Elements tds1 = table1.select("li");
                            Elements td2=table1.select("p");
                            if (tds1.size() > 1) 
                            {
                                
                %>
                
                    <li><%out.println(tds1.get(0).text());%></li>
                    <li><%out.println(tds1.get(1).text());%></li>
                    <li><%out.println(tds1.get(2).text());%></li>
                <%
                               
                            }
                        }
                        %>
                        </ul>
                        <%
                    } 
                    catch (Exception ex) 
                    {
                        out.println(""+ex);
                    }
                %>
            </div>
                 <div style="width:245px; margin-left: 40px;font-size: 14px;float: left;">
                <h3 class="heading">
                    Updates
                </h3>   
                <div>
                    <ul class="news">
                        <li><a href="viewdata.jsp">View Data : Explore our data for free</a></li>
                        <li><a href="comparest.jsp">Compare States : Compare 2 states within a Industry</a></li>
                        <li><a href="compindus.jsp">Compare Industry : Compare 2 Industries within a State</a></li>
                        <li><a href="industry.jsp">Historical Data : View historical data of specified category</a></li>
                        <li><a href="prediction.jsp">Forecasted Data : View forecasted data for next year</a></li>
                        <li><a href="trend.jsp">Trend Analysis : Analyze data to find trends of various industries</a></li>
                    </ul>
                </div>
            </div>
            <div style="width:245px; margin-left: 40px;font-size: 14px; float: left;">
                <h3 class="heading">
                    Important Links
                </h3>
                <ul class="news">
        <%
            try
    { 
        int i=0;
        Document doc = Jsoup.connect("https://www.google.co.in/search?newwindow=1&q=indian+industry+analysis&oq=indian+industry+an&gs_l=serp.3.0.0l6j0i22i30l4.26790.33454.0.34589.24.19.2.3.3.0.257.2598.5j12j2.19.0....0...1c.1.42.serp..4.20.1796.arLoyCFxGhA").userAgent("Chrome").get();
        
            for (Element divv : doc.select("li.g"))//right is class name of table
                {
                    
                   for(Element table : divv.select("h3.r"))
                   {
                       String url=table.child(0).attr("abs:href");
                       Elements dt = table.select("a");
                       if(dt.size()>0)
                       {
                           if(i<=5)
                           {
                               %>
                           <li><a href="<%=url%>"><%out.println(dt.get(0).text());%></a></li>
                           <%
                           }
                           
                           i++;
                       }
                       
                   }


                }
        
         
    }
    catch(Exception ex)
    {
        out.println(ex); 
    }
            %>
            </ul>
</div>
            </div>
        </div>
        
            
        
    </body>
</html>
