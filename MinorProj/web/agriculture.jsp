<%-- 
    Document   : agriculture
    Created on : Mar 22, 2014, 9:56:09 PM
    Author     : gaurav
--%>

<%@page import="beans.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date" %>
<%@page import="java.sql.*"%>
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
        <title>Minor Project | industry :: Foodgrain</title>
        <style>
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
            ol.news
            {
                margin-top:10px; 
                height:173px;
            }
            ol.news li
            {
                font-size:12px; 
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
        <link href="cssfiles/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel='stylesheet' type='text/css' href='cssfiles/stylesmenu.css' />
        <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <%@include file="htmlfiles/ilogoandmenu.html" %>
        <div id='cssmenu' style='float:left;' fflush="true">
            <ul>
                <li>
                    <span>
                        <form action="industry.jsp">
                            <input type="submit" name="ahome" value="Home" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li class='has-sub active'><a href='#'><span>Industries</span></a>
                    <ul>
                        <li>
                            <span>
                                <form action="cotton.jsp">
                                    <input type="submit" name="acot" value="Cotton Industry" style="width:200px;text-align:left;"/>
                                </form>
                            </span>
                        </li>
                        <li>
                            <span>
                                <form action="sugar.jsp">
                                    <input type="submit" name="asug" value="Sugar Industry" style="width:200px;text-align:left;"/>
                                </form>
                            </span>
                        </li>
                        <li class='active'>
                            <span>
                                <form action="#">
                                    <input type="submit" name="aagri" value="Foodgrain Industry" style="width:200px;text-align:left;"/>
                                </form>
                            </span>
                        </li>
                        <li>
                            <span>
                                <form action="rice.jsp">
                                    <input type="submit" name="atour" value="Rice Industry" style="width:200px;text-align:left;"/>
                                </form>
                            </span>
                        </li>
                    </ul>
                </li>
                <li>
                    <span>
                        <form action="about.jsp">
                            <input type="submit" name="abt" value="About" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li>
                    <span>
                        <form action="contact.jsp">
                            <input type="submit" name="acon" value="Contact" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li>
                    <span>
                        <form action="viewdata.jsp">
                            <input type="submit" name="vsd" value="View Statistical Data" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li class='last'>
                    <span>
                        <form action="compindus.jsp">
                            <input type="submit" name="vsd" value="Compare 2 Industries" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li>
                    <div style="margin-top:20px;">
                        <h3 class="heading">
                            Related News
                        </h3>
                        <%
                            try 
                            {
                                int i=0;
                                DateFormat df = new SimpleDateFormat("dd/MM/yy");
                                Date dateobj = new Date();
                                Document doc1 = Jsoup.connect("http://www.ibef.org/industry/agriculture-india.aspx").get();
                                for (Element table1 : doc1.select("ul.newsPharma"))//right is class name of table
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
                    <div style="margin-top: 20px">
                        <h3 class="heading">
                            Related Links
                        </h3>
                        <ol class="news">
                            <%
                                try 
                                {
                                    int i = 0;
                                    Document doc = Jsoup.connect("https://www.google.co.in/search?newwindow=1&q=agriculture+industry+analysis+india&oq=agriculture+industry+an&gs_l=serp.3.1.0l4j0i22i30l6.1011523.1020688.0.1021796.19.16.1.2.2.0.210.2123.3j12j1.16.0....0...1c.1.42.serp..3.16.1622.dLL3aksrHQM").userAgent("Chrome").get();
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
                        </ol>
                    </div>
                   
                </li>
            </ul>
        </div>    
        <div class="about-top">
            <div class="col span_1_of_about">
                <div class="top-box1">
                    <h4>FoodGrain Industry</h4>
                </div>
                <div class="about-img" style="margin-top:2px;margin-left:20px;">
                    <img src="images/agg.jpg" alt="">
                </div>
                <div class="about-des" style="margin-top:5px;">
                    <p style="font-size:0.8525em;color: black;">India is principally an agricultural country. Agriculture, 
                        with its allied sectors, is unquestionably the largest livelihood provider in India. 
                        Most of the industries also depend upon the sector for their raw materials. Steady 
                        investments in technology development, irrigation infrastructure, emphasis on modern 
                        agricultural practices and provision of agricultural credit and subsidies are the 
                        major factors contributed to agriculture growth.
                    </p>
                    <p style="font-size:0.8525em;color: black;">
                        Indian foodgrain industry has undergone rapid transformation in the past two decades. The 
                        policy of globalisation and liberalisation has opened up new avenues for agricultural 
                        modernisation.
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
                String qry = "select * from foodgrains where year = '2012-13'";
                rs = ut.DQL(qry);
                while (rs.next()) 
                {
                    String prod = rs.getString("yield");
                        float prodctn=Float.parseFloat(prod);
                        if (max < prodctn) 
                        {
                            max = prodctn;
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
                        //out.print("Name:" + l.get(z).getName());
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
            <form action="agriculture.jsp" class="values">
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
                    if (request.getParameter("bt") != null) 
                    {
                        categoryDataset = new DefaultCategoryDataset();
                        try 
                        {
                            st=request.getParameter("sta");
                            indus = request.getParameter("ind").toLowerCase();
                            String qry = "select year,"+indus+" from agriculture where year between '2006-07' and '2012-13'  and state='"+st+"'";
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
                            final File file2 = new File("F:/JavaAptech/Netbeans 74 applications/MinorProj/web/"+ "ag"+ st + indus + ".png");
                            img1 =  "ag"+st + indus + ".png";
                            ChartUtilities.saveChartAsPNG(file2, chart1, 450, 300, info1);
                            chart1.setBorderVisible(true);
                            
                            final ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());
                            final File file1 = new File("F:/JavaAptech/Netbeans 74 applications/MinorProj/web/" +"ag1"+ st+indus + ".png");
                            img ="ag1" +st+indus + ".png";
                            ChartUtilities.saveChartAsPNG(file1, chart, 600, 400, info);
                            chart.setBorderVisible(true);
                        } 
                        catch (Exception e) 
                        {
                            out.println(e);
                            %>
                        <script>
                            alert("Invalid Input/Data Unaivalable");
                        </script>
                            <%
                        }
                            %>
            </form>
        </div>
        <div style="border:1px solid; float:left;width:70%;margin-top:10px;margin-left:20px;border-radius:5px;height:380px;">
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
