<%-- 
    Document   : cotton
    Created on : Mar 22, 2014, 10:01:12 PM
    Author     : gaurav
--%>

<%@page import="beans.yldclusterarraylist"%>
<%@page import="beans.yldcluster"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.dif"%>
<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.*"%>
<%@page import="database.utility"%>
<%@page import="java.util.Date" %>
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
        <title>Minor Project | Industry :: Cotton</title>
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
                font-size:12px; 
                padding-bottom:8px; 
                line-height:14px;
            }
            ol.leading
            {
                margin-top:10px; 
                height:173px;
            }
            ol.leading li
            {
                font-size:16px; 
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
            .featuresBox {margin-top:10px; float:left;}

            ul.features{float:right; width:165px; margin-left:10px;}
            ul.features li{font-size:11px; padding-bottom:6px; line-height:13px;}
            .blank_row
            {
                height: 10px !important; /* Overwrite any previous rules */
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
            String y1, y2;
            String indus;
            float a;
            int b;
            final DefaultPieDataset data1 = new DefaultPieDataset();
            DefaultCategoryDataset categoryDataset = new DefaultCategoryDataset();
            String st;
            String img, img1;
        %> 

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

        <div id='cssmenu' style='height:1000px; float:left;'>
            <ul>
                <li><%--<a href='industry.jsp'><span>Home</span></a>--%>
                    <span>
                        <form action="industry.jsp">
                            <input type="submit" name="cthome" value="Home" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li class='has-sub active'><a href='#'><span>Industries</span></a>
                    <ul>
                        <li class="active"><%--<a href='cotton.jsp'><span>Cotton Industry</span></a>--%>
                            <span>
                                <form action="#">
                                    <input type="submit" name="cot" value="Cotton Industry" style="width:200px;text-align:left;"/>
                                </form>
                            </span>
                        </li>
                        <li><%--<a href='sugar.jsp'><span>Sugar Industry</span></a>--%>
                            <span>
                                <form action="sugar.jsp">
                                    <input type="submit" name="ctsug" value="Sugar Industry" style="width:200px;text-align:left;"/>
                                </form>
                            </span>
                        </li>
                        <li><%--<a href='#'><span>Agriculture Industry</span></a>--%>
                            <span>
                                <form action="agriculture.jsp">
                                    <input type="submit" name="ctagri" value="FoodGrain Industry" style="width:200px;text-align:left;"/>
                                </form>
                            </span>
                        </li>
                        <li><%--<a href='tourism.jsp'><span>Tourism Industry</span></a>--%>
                            <span>
                                <form action="rice.jsp">
                                    <input type="submit" name="cttour" value="Rice Industry" style="width:200px;text-align:left;"/>
                                </form>
                            </span>
                        </li>
                    </ul>
                </li>
                <%--<li>
                    <span>
                        <form action="overview.jsp">
                            <input type="submit" name="ctover" value="Overview" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
</li>--%>
                <li>
                    <span>
                        <form action="about.jsp">
                            <input type="submit" name="ctabt" value="About" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li>
                    <span>
                        <form action="contact.jsp">
                            <input type="submit" name="ctcon" value="Contact" style="width:200px;text-align:left;"/>
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
                <li>
                    <div style="margin-top:20px;">
                        <h3 class="heading">
                            Related News
                        </h3>
                        <%
                            try {
                                int i = 0;
                                DateFormat df = new SimpleDateFormat("dd/MM/yy");
                                Date dateobj = new Date();
                                Document doc1 = Jsoup.connect("http://www.ibef.org/industry/textiles.aspx").get();
                                for (Element table1 : doc1.select("ul.newsPharma"))//right is class name of table
                                {
                                    i++;
                                    Elements tds1 = table1.select("li");
                                    if (tds1.size() > 1 && i == 1) {

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
                    <div style="margin-top: 10px">
                        <h3 class="heading">
                            Related Links
                        </h3>
                        <ol class="news">
                            <%
                                try 
                                {
                                    int i = 0;
                                    Document doc = Jsoup.connect("https://www.google.co.in/search?newwindow=1&es_sm=93&q=cotton+industry+in+india&oq=cotton+indus&gs_l=serp.3.0.0l10.356512.359722.0.361078.12.11.0.1.1.0.249.1608.2j6j3.11.0....0...1c.1.43.serp..3.9.981.jNQaVmnKUmo").userAgent("Chrome").get();
                                    for (Element divv : doc.select("li.g"))//right is class name of table
                                    {
                                       // out.println("aya");
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
                                    } catch (Exception ex) 
                                    {
                                        out.println(ex);
                                    }
                                %>
                        </ol>
                    </div>
                </li>
            </ul>
        </div>    
        <div class="about-top">
            <div class="col span_1_of_about">
                <div class="top-box1">
                    <h4>Cotton Industry</h4>
                </div>
                <div class="about-img" style="margin-top:2px;margin-left:15px;">
                    <img src="images/cott.jpg" alt="">
                </div>
                <div class="about-des" style="margin-top:5px;">
                    <p style="font-size:0.8525em;color: black;">The Cotton industry in India traditionally, after agriculture,
                        is the only industry that has generated huge employment for both skilled and unskilled labor 
                        in textiles. The textile industry continues to be the second largest employment generating 
                        sector in India. It offers direct employment to over 35 million in the country.The share of 
                        textiles in total exports was 11.04% during April–July 2010, as per the Ministry of Textiles. 
                        During 2009-2010, Indian textiles industry was pegged at US$55 billion, 64% of which services 
                        domestic demand.In 2010, there were 2,500 textile weaving factories and 4,135 textile finishing
                        factories in all of India. 
                    </p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
                        <div style="float:right;width:160px;">
               <h5 class="heading">
                            Leading States
                        </h5>    
                            <ol class="leading">
                     <%
            yldclusterarraylist.getyldcluster().clear();
            float min;
            try 
            {
                ResultSet rs,rs1;
                utility ut=new utility();
                String state = null;
                float max = -99999999;
                String qry = "select * from cotton where year = '2013-14'";
                rs = ut.DQL(qry);
               
                float prod = 0;
                    while (rs.next()) 
                    {
                        String fif = rs.getString("yield");
                            float yield=Float.parseFloat(fif);
                            if (max < yield) 
                            {
                                max = yield;
                                state = rs.getString("state");
                            }
                    }
                    rs=ut.DQL(qry);
                    while (rs.next()) 
                    {
                        String fif1 = rs.getString("yield");
                        float prod1 = Float.parseFloat(fif1);
                        String nm = rs.getString("state");
                        yldcluster bc = new yldcluster();
                        bc.setName(nm);
                        bc.setType_value(prod1);
                        bc.setDiff(max-prod1);
                        yldclusterarraylist.getyldcluster().add(bc);
                    }
                    min = max + 1;
                    ArrayList<yldcluster> l = yldclusterarraylist.getyldcluster();
                    ArrayList l2 = new ArrayList();
                    int p = 0;
                    int i;
                    int z;
                    int count = 1;
                    for (i = 0; i < 5; i++) 
                    {
                        count++;
                        z = dif.mindiff();
                        
        %>
        <li>
            <%out.print(l.get(z).getName());%>
        </li>
        <%
                       l.remove(z);
                       
                    }
            } 
            catch (Exception e) 
            {
                out.println(e);
            }
        %>
                            </ol>
</div>               
        <div style="float:left;width:65%;margin-top:10px;margin-left:20px;border-radius:5px;">
            <h1 style="color:black; font-size: 20px;">VIEW HISTORICAL DATA</h1>
            <form action="#" class="values" style="margin-top:10px;">
                <table cellspacing="4" cellpadding="4">
                    <tr>
                        <td>Select Category</td>
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
                        <td>Select State </td>
                        <td><select name="sta" class="dropdown">
                                <option>State</option>
                                <option>Andhra Pradesh</option>
                                <option>Bihar</option>
                                <option>Gujarat</option>
                                <option>Haryana</option>
                                <option>Karnataka</option>
                                <option>Madhya Pradesh</option>
                                <option>Maharashtra</option>
                                <option>Punjab</option>
                                <option>Rajasthan</option>
                                <option>Tamil Nadu</option>
                                <option>Uttar Pradesh</option>
                            </select></td>
                    </tr>
                    <tr class="blank_row">
                        
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" style="margin-top: 10px;" name="bt" class="btn btn-primary btn1"/></td>
                    </tr>
                </table>
                <%
                    if (request.getParameter("bt") != null) {
                        categoryDataset = new DefaultCategoryDataset();
                        try {
                            
                            st = request.getParameter("sta");
                            indus = request.getParameter("ind").toLowerCase();
                            String qry = "select year," + indus + " from cotton where year between '2007-08' and '2013-14'  and state='" + st + "'";
                            // out.println(qry);
                            utility ut = new utility();
                            ResultSet rs = ut.DQL(qry);
                            while (rs.next()) {
                                a = Float.parseFloat(rs.getString("" + indus));
                                b = Math.round(a);
                                categoryDataset.setValue(b, "" + st, "" + rs.getString("year"));
                                data1.setValue("" + rs.getString("year"), b);
                            }
                            JFreeChart chart1 = ChartFactory.createPieChart("" + indus, data1, true, true, false);
                            JFreeChart chart = ChartFactory.createBarChart3D("" + st, // Title
                                    "Year", // X-Axis label
                                    "" + indus,// Y-Axis label
                                    categoryDataset, // Dataset
                                    PlotOrientation.VERTICAL,
                                    true, // Show legend
                                    true,
                                    false
                            );
                            final ChartRenderingInfo info1 = new ChartRenderingInfo(new StandardEntityCollection());
                            final File file2 = new File("F:/JavaAptech/Netbeans 74 applications/MinorProj/web/" + "cot" + st + indus + ".png");
                            img1 = "cot" + st + indus + ".png";
                            ChartUtilities.saveChartAsPNG(file2, chart1, 450, 300, info1);
                            chart1.setBorderVisible(true);

                            final ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());
                            final File file1 = new File("F:/JavaAptech/Netbeans 74 applications/MinorProj/web/" + st + indus  + ".png");
                            img = st + indus + ".png";
                            ChartUtilities.saveChartAsPNG(file1, chart, 600, 400, info);
                            // chart.setBorderVisible(true);
                        } catch (Exception e) {
                %>
                <script>
                    alert("Invalid Input/Data Unavailable");
                </script>
                <%
                        out.println(e);
                    }%>
            </form>
        </div>
        <div style="border:1px solid; float:left;width:70%;margin-top:10px;margin-left:20px;border-radius:5px;height:380px;">
            <%TimeUnit.SECONDS.sleep(5); %> 
            <img style="margin-left: 15px;margin-top:3px;width:450px;height: 350px;"  src=<%=img1%> USEMAP="#chart1"/>
            <img style="margin-top:3px;margin-left:10px;width: 420px;height: 350px;" src=<%=img%> USEMAP="#chart"/>
        </div>
        <%
            }
   //my ob=new my();
%>

        <div class="clear"></div>
    </body>
</html>
