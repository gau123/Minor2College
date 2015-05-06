<%-- 
    Document   : trend
    Created on : May 11, 2014, 12:28:17 AM
    Author     : gaurav
--%>

<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.text.DecimalFormat"%>
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
        <script>
            jQuery(function() {
                $("#yea").autocomplete("list.jsp");
            });
        </script>
        
        
        <style>
            .blank_row
            {
                height: 10px !important; /* Overwrite any previous rules */
            }
            .values
            {
                font-size: 18px;
                color: black;
            }
        </style>
        <title>Minor Project | States :: Compare</title>
        <link href="cssfiles/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel='stylesheet' type='text/css' href='cssfiles/stylesmenu.css' />
        <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <%!
            int count1 = 0, count2 = 0;
            String[] yl1 = new String[500];
            int i;
            ResultSet rs;
            int k=0;
            int flag=0;
            String img;
            float sesq;
            double se;
            float fut;
            DecimalFormat numberFormat = new DecimalFormat("#0.00");
            String eqn;
            String xv="";
            float prev;
            int n = 0;
            String indus,state;
                        
        %>
        <%@include file="htmlfiles/slogoandmenu.html" %>

        <div id='cssmenu' style="float:left;">
            <ul>
                <li>
                    <span>
                        <form action="states.jsp">
                            <input type="submit" name="shome" value="Home" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li class='has-sub active'><a href='#'><span>States</span></a>
                    <ul>
                        <li class='has-sub active'><a href='#'><span>North India</span></a>
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
                                <li class="active">
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
                                <li class='last'>
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
                                <li>
                                    <span>
                                        <form action="gujarat.jsp">
                                            <input type="submit" name="orguj" value="Gujarat" style="width:200px;text-align:left;"/>
                                        </form>
                                    </span>
                                </li>
                                <li>
                                    <span>
                                        <form action="madhya.jsp">
                                            <input type="submit" name="ormadh" value="Madhya Pradesh" style="width:200px;text-align:left;"/>
                                        </form>
                                    </span>
                                </li>
                                <li>
                                    <span>
                                        <form action="maharashtra.jsp">
                                            <input type="submit" name="ormaha" value="Maharashtra" style="width:200px;text-align:left;"/>
                                        </form>
                                    </span>
                                </li>
                                <li class='last'>
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
                <li><%--<a href='overviewstates.html'><span>Overview</span></a>--%>
                    <span>
                        <form action="overviewstates.jsp">
                            <input type="submit" name="orover" value="Overview" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
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
                        <form action="#">
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
        <div class="about-top">
            <div class="col span_1_of_about">
                <div class="top-box1">
                    <h4 style="font-size:32px;">Trend Analysis</h4>
                    
                </div>
                <p style="margin-left: 40px;margin-top: 20px;">
                    An analysis and growth of different industries across various states of India..
                    Get significant insights into industrial market to guide and boost your investment, 
                    and administration objectives. Gain the competitive advantage with Step2Growth's 
                    Trend Analysis methods.
                </p>
                <div class="clear"></div>
            </div>
        </div>
        <div style="float:left;width:65%;margin-top:5px;margin-left:30px;height: 350px;border-radius:5px;">
            <form action="#" class="values"> 
                <table cellspacing="4" cellpadding="4">
                    <tr>
                        <td style="padding-left: 20px;">
                            Select Industry
                        </td>
                        <td><select name="indus" class="dropdown">
                                <option>Industry</option>
                                <option>Cotton</option>
                                <option>Sugar</option>
                                <option>Foodgrains</option>
                                <option>Rice</option>
                            </select>
                        </td>
                    </tr>
                    <tr class="blank_row">

                    </tr>
                    <tr>
                        <td style="padding-left: 20px;">Select State </td>
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
            </form>
            <%
                if (request.getParameter("bt") != null) 
                {
                    try 
                    {
                        indus=request.getParameter("indus");
                        state=request.getParameter("sta");
                        DefaultCategoryDataset line_chart_dataset = new DefaultCategoryDataset();
                        utility ut = new utility();
                        int MAXN = 1000;
                        Float[] val=new Float[MAXN];
                        float[] x = new float[MAXN];
                        float[] y = new float[MAXN];
                        String[] st1=new String[20];
                        int j = 1;
                        float sumx = 0, sumy = 0, sumx2 = 0;
                        String qry;
                        
                        qry = "select production from "+indus+" where state='"+state+"'";
                        ResultSet rs;
                        rs = ut.DQL(qry);
                        while (rs.next()) 
                        {
                            x[n] = j;
                            y[n] = Float.parseFloat(rs.getString("production"));
                            j++;
                            sumx = sumx + x[n];
                            sumx2 = sumx2 + x[n] * x[n];
                            sumy = sumy + y[n];
                            n++;
                        }
                        qry="select production from "+indus+" where state='"+state+"' and year='2012-13'";
                        rs=ut.DQL(qry);
                        if(rs.next())
                        {
                            prev=Float.parseFloat(rs.getString("production"));
                        }
                        float xbar = sumx / n;
                       // out.println("xbar is " + xbar);
                        float ybar = sumy / n;
                       // out.println("ybar is " + ybar);

                        float xxbar = 0, yybar = 0, xybar = 0;
                        for (int i = 0; i < n; i++) 
                        {
                            xxbar += (x[i] - xbar) * (x[i] - xbar);
                            yybar += (y[i] - ybar) * (y[i] - ybar);
                            xybar += (x[i] - xbar) * (y[i] - ybar);
                        }
                        DecimalFormat numberFormat = new DecimalFormat("#0.00");
                        float beta1 = xybar / xxbar;
                        float beta0 = ybar - beta1 * xbar;
                        numberFormat.format(beta1);
                        numberFormat.format(beta0);
                        sesq=(yybar-(beta1*xybar))/(n-2);
                        se= Math.sqrt(sesq);
                        numberFormat.format(sesq);
                        i = 0;
                        for(i=0;i<n;i++)
                        {
                            val[i]=beta1*i+beta0;
                        }
                        qry="select year from "+indus+" where state='"+state+"'";
                        rs=ut.DQL(qry);
                        i=0;
                        while (rs.next()) 
                        {
                            yl1[i] = rs.getString("year");
                            line_chart_dataset.addValue(val[i], "" + state,rs.getString("year"));
                            
                            i++;
                        }
                        ut = new utility();
                        JFreeChart lineChartObject = ChartFactory.createLineChart("Trend " + indus,
                                "Year",
                                "Production",
                                line_chart_dataset, PlotOrientation.VERTICAL, true, true, false);
                        st1=state.split(" ");
                        final File file2 = new File("F:/JavaAptech/Netbeans 74 applications/MinorProj/web/" + st1[0] + indus + "trend.png");
                        img = st1[0] + indus + "trend.png";
                        int width = 640; /* Width of the image */
                        int height = 480; /* Height of the image */
                        ChartUtilities.saveChartAsPNG(file2, lineChartObject, width, height);
                        lineChartObject.setBorderVisible(true);
                    } 
                    catch (Exception ex) 
                    {
                        out.println("" + ex);
            %>
            <script>
                alert("Invalid Input/Data Unavailable");
            </script>
            <%
                }
            %>
            <p style="margin-top:20px;">
                         Acc. to the analysis done on the data available, <%=indus%> industry in the <%=state%> follows a 
                         linear trend which is represented in the following figure :
            </p>
        <div style=" float:left;width:100%;margin-top:10px;margin-left:10px;border-radius:5px;height:500px;">
            <%TimeUnit.SECONDS.sleep(7); %> 
            <img style="margin-top:3px;margin-left:5px;width: 900px;height: 450px;"src=<%=img%> USEMAP="#chart"/>
            <p style="margin-left: 300px;font-size: 12px;">Figure 1 : Trend in total <%=indus%> production from 1975 to 2013</p>    
        </div>
        
        </div>
        <%
            }
        %>
        <div class="clear"></div>
    </body>
</html>


