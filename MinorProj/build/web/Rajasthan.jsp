<%-- 
    Document   : Rajasthan
    Created on : Mar 26, 2014, 11:35:01 AM
    Author     : gaurav
--%>

<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="database.utility"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page  import="java.awt.*" %>
<%@ page  import="java.io.*" %>
<%@ page  import="org.jfree.chart.*" %>
<%@ page  import="org.jfree.chart.axis.*" %>
<%@ page  import="org.jfree.chart.entity.*" %>
<%@ page  import="org.jfree.chart.labels.*" %>
<%@ page  import="org.jfree.chart.plot.*" %>
<%@ page  import="org.jfree.chart.renderer.category.*" %>
<%@ page  import="org.jfree.chart.urls.*" %>
<%@ page  import="org.jfree.data.category.*" %>
<%@ page  import="org.jfree.data.general.*" %>
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

            ol.news
            {
                margin-top:10px; 
                height:173px;
            }
            ol.news li
            {
                font-size:12px; 
                padding-bottom:8px; 
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
            .blank_row
            {
                height: 10px !important; 
            }
            .dropdown
            {
                width:170px;
                height: 30px; 
                margin-top: 10px;
                margin-left: 10px;
                font-size: 18px;
            }
            .values
            {
                font-size: 18px;
                color: black;
            }
            .yearbox
            {
                width:170px;
                height: 25px; 
                margin-top: 10px;
                margin-left: 10px;
                font-size: 18px;
            }
        </style>
        <%!
            //com.kushal.utilities
            String qry;
            String y1,y2;
            String indus;
            float a;
            int b;
            final DefaultPieDataset data1 = new DefaultPieDataset();
            DefaultCategoryDataset categoryDataset = new DefaultCategoryDataset();
            String st;
            String img,img1;
        %> 
        <title>Minor Project | States :: Rajasthan</title>
        <link href="cssfiles/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel='stylesheet' type='text/css' href='cssfiles/stylesmenu.css' />
        <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
    </head>
    <body>
        
        <%@include file="htmlfiles/slogoandmenu.html" %>
        
        <div id='cssmenu' style="float:left;">
        <ul>
                <li><%--<a href='index.html'><span>Home</span></a>--%>
                    <span>
                        <form action="states.jsp">
                            <input type="submit" name="shome" value="Home" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li class='has-sub active'><a href='#'><span>States</span></a>
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
                        <li class='has-sub active'><a href='#'><span>Western India</span></a>
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
                                <li class='last active'><%--<a href='#'><span>Tamil Nadu</span></a>--%>
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
                <li>
                    <span>
                        <form action="about.jsp">
                            <input type="submit" name="orabt" value="About" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li>
                    <span>
                        <form action="contact.jsp">
                            <input type="submit" name="orcon" value="Contact" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li>
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
                <li>
                    <div style="margin-top:20px;margin-left: 4px;">
                        <h3 class="heading">
                            Related News
                        </h3>
                        <%
                            try {
                                int i=0;
                                DateFormat df = new SimpleDateFormat("dd/MM/yy");
                                Date dateobj = new Date();
                                Document doc1 = Jsoup.connect("http://www.ibef.org/states/rajasthan.aspx").get();
                                for (Element table1 : doc1.select("ul.newsState"))//right is class name of table
                                {
                                    i++;
                                    Elements tds1 = table1.select("li");
                                   if (tds1.size() > 1 && i==1) 
                                   {
                        %>
                        <ol style="color:black;" class="news">
                            <li><%out.println(tds1.get(0).text());%></li>
                            <li><%out.println(tds1.get(1).text());%></li>
                            <li><%out.println(tds1.get(2).text());%></li>
                            <li><%out.println(tds1.get(3).text());%></li>
                            <li><%out.println(tds1.get(4).text());%></li>
                        </ol>
                        <%
                                    }
                                }
                            } catch (Exception ex) {
                                out.println("" + ex);
                            }
%>
                    </div>
                </li>
                <li>
                    <div style="margin-top:10px;margin-left: 4px;">
                        <h3 class="heading">
                            Related Links
                        </h3>
                        <%
                            try 
                            {
                                int i=0;
                                Document doc = Jsoup.connect("https://www.google.co.in/search?newwindow=1&es_sm=93&q=rajasthan+industries&oq=rajasthandustries&gs_l=serp.3.0.0i13l5j0i13i30l5.82261.86612.0.87904.10.10.0.0.0.0.164.1477.0j10.10.0....0...1c.1.43.serp..0.10.1473.8tMxmeoLBZ4").userAgent("Chrome").get();
                                %>
                                <ol style="color:black;" class="news">
                                <%
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
                                %>
                                </ol>
                                <%
                            } 
                            catch (Exception ex) 
                            {
                                out.println("" + ex);
                            }
%>
                    </div>
                </li>
            </ul>     
        </div>    
        <div class="about-top">
		<div class="col span_1_of_about">
			<div class="top-box1">
				<h4>Rajasthan</h4>
			</div>
			<div class="about-img" style="margin-top:2px;margin-left:20px;">
				<img style="widht:278px; height: 200px;" src="images/raj.jpg" alt="">
			</div>
			<div class="about-des" style="margin-top:5px;">
                            <p style="font-size:0.8525em;color:black;">
                                <%
                                String df;
                                utility ob=new utility();
                                String qry1="select def from def where state='rajasthaN'";
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
		</div>
	</div>
                    <div style="float:left;width:65%;margin-top:10px;margin-left:20px;border-radius:5px;">
                       <h1 style="color:black; font-size: 20px;">VIEW HISTORICAL DATA</h1>
                        <form action="Rajasthan.jsp" method="get" class="values">
                                <table cellspacing="4" cellpadding="4">
                    <tr>
                        <td>Select Industry</td>
                        <td><select name="sta" class="dropdown">
                                <option>Industry</option>
                                <option>Cotton</option>
                                <option>Sugar</option>
                                <option>Foodgrains</option>
                                <option>Rice</option>
                                </select></td>
                    </tr>
                    <tr>
                        <td>Select Category </td>
                        <td><select name="ind" class="dropdown">
                                <option>Category</option>
                                <option>Area</option>
                                <option>Production</option>
                                <option>Yield</option>
                            </select></td>
                    </tr>
                    <tr class="blank_row">
                        
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" style="margin-top: 10px;" name="bt" class="btn btn-primary btn1"/></td>
                    </tr>
</table>
                            
                <%
                    if (request.getParameter("bt") != null) 
                    {
                        categoryDataset = new DefaultCategoryDataset();
                        try 
                        {
                            st=request.getParameter("sta").toLowerCase();
                            indus = request.getParameter("ind").toLowerCase();
                            String qry = "select year,"+indus+" from "+st+" where year between '2005-06' and '2010-11'  and state='Rajasthan'";
                            utility ut = new utility();
                            ResultSet rs = ut.DQL(qry);
                            while (rs.next()) 
                            {
                                a=Float.parseFloat(rs.getString(""+indus));
                                b=Math.round(a);
                                categoryDataset.setValue(b, "" + st, "" + rs.getString("year"));
                                data1.setValue("" + rs.getString("year"), b);
                            }
                            JFreeChart chart1 = ChartFactory.createPieChart(""+indus, data1, true, true, false);
                            JFreeChart chart = ChartFactory.createBarChart3D(""+st, // Title
                                    "Year", // X-Axis label
                                    ""+indus,// Y-Axis label
                                    categoryDataset, // Dataset
                                    PlotOrientation.VERTICAL,
                                    true, // Show legend
                                    true,
                                    false
                            );
                            final ChartRenderingInfo info1 = new ChartRenderingInfo(new StandardEntityCollection());
                            final File file2 = new File("F:/JavaAptech/Netbeans 74 applications/MinorProj/web/" + "raj1" + st + indus + ".png");
                            img1 = "raj1" + st + indus + ".png";
                            ChartUtilities.saveChartAsPNG(file2, chart1, 450, 300, info1);
                            chart1.setBorderVisible(true);
                            
                            final ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());
                            final File file1 = new File("F:/JavaAptech/Netbeans 74 applications/MinorProj/web/" + "raj" + st+indus + ".png");
                            img = "raj"+st+indus + ".png";
                            ChartUtilities.saveChartAsPNG(file1, chart, 600, 400, info);
                            chart.setBorderVisible(true);
                        } 
                        catch (Exception e) 
                        {
                            //out.println(e);
                            %>
                            <script>
                                alert("Invalid Input/Data Unavailable");
                            </script>
                            <%
                        }%>
            </form>
        </div>
<div style="border:1px solid; float:left;width:70%;margin-top:10px;margin-left:20px;border-radius:5px;height:370px;">
    <%TimeUnit.SECONDS.sleep(5); %>
    <%--<IMG SRC=<%=img%> WIDTH="600" HEIGHT="400" BORDER="0" USEMAP="#chart"/>--%>
            <img style="margin-left: 15px;margin-top:3px;width:450px;height: 350px;"  src=<%=img1%> USEMAP="#chart1"/>
            <img style="margin-top:3px;margin-left:10px;width: 420px;height: 350px;"src=<%=img%> USEMAP="#chart"/>
</div>
            <%
            }
   //my ob=new my();
        %>
<div class="clear"></div>
</body>
</html>

