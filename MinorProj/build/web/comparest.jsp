<%-- 
    Document   : comparest
    Created on : Mar 26, 2014, 3:42:31 PM
    Author     : gaurav
--%>


<%@page import="java.util.concurrent.TimeUnit"%>
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
        <%!
            String st1, st2, ind;
            int j, k;
            int count1 = 0, count2 = 0;
            String[] sta1 = new String[100];
            String[] sta2 = new String[100];
            String[] yr1 = new String[50];
            String[] yr2 = new String[100];
            String[] ar1 = new String[100];
            String[] ar2 = new String[100];
            String[] pr1 = new String[100];
            String[] pr2 = new String[100];
            String[] yl1 = new String[50];
            String[] yl2 = new String[100];
            String qry1, qry2;
            int i;
            String in;
            String y1, y2;
            ResultSet rs;
        %>
        <script type="text/javascript">
        var auto_refresh = setInterval(
        function ()
        {
        $('#load_me').load('showdata.jsp').fadeIn("slow");
        }, 10000); // autorefresh the content of the div after
                   //every 10000 milliseconds(10sec)
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
            String img;
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
                    <h4 style="font-size:32px;">Compare States</h4>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div style="float:left;width:65%;margin-top:5px;margin-left:30px;height: 250px;border-radius:5px;">
            <form action="comparest.jsp" class="values"> 
                <%@include file="comp.html" %>
            </form>
            <%
                if (request.getParameter("compare") != null) {
                    try {
                        DefaultCategoryDataset line_chart_dataset = new DefaultCategoryDataset();
                        utility ut = new utility();
                       // y1=request.getParameter("y1");
                        // y2=request.getParameter("y2");
                        st1 = request.getParameter("st1");
                        st2 = request.getParameter("st2");
                        ind = request.getParameter("indus");
                        qry1 = "select * from " + ind + " where state='" + st1 + "' and year between '2005-06' and '2011-12'";
                        rs = ut.DQL(qry1);
                        i = 0;
                        while (rs.next()) {
                            //yr1[i]=rs.getString("year");
                            ar1[i] = rs.getString("area");
                            pr1[i] = rs.getString("production");
                            yl1[i] = rs.getString("yield");
                            line_chart_dataset.addValue(Integer.parseInt(rs.getString("production")), "" + st1, rs.getString("year"));
                            /* out.println(yr1[i]);
                             out.println(ar1[i]);
                             out.println(pr1[i]);
                             out.println(yl1[i]);*/
                            i++;
                        }
                        ut = new utility();
                        qry2 = "select * from " + ind + " where state='" + st2 + "' and year between '2005-06' and '2011-12'";
                        rs = ut.DQL(qry2);
                        k = 0;
                        while (rs.next()) {
                            // yr2[k]=rs.getString("year");
                            ar2[k] = rs.getString("area");
                            pr2[k] = rs.getString("production");
                            yl2[k] = rs.getString("yield");
                            line_chart_dataset.addValue(Integer.parseInt(rs.getString("production")), "" + st2, rs.getString("year"));
                            /* out.println(yr2[k]);
                             out.println(ar2[k]);
                             out.println(pr2[k]);
                             out.println(yl2[k]);*/
                            k++;
                        }
                        JFreeChart lineChartObject = ChartFactory.createLineChart("States Comparison " + ind,
                                "Year",
                                "Production",
                                line_chart_dataset, PlotOrientation.VERTICAL, true, true, false);
                        final File file2 = new File("F:/JavaAptech/Netbeans 74 applications/MinorProj/web/" + st1 + st2 + ind + ".png");
                        img = st1 + st2 + ind + ".png";
                        int width = 640; /* Width of the image */

                        int height = 480; /* Height of the image */

                        ChartUtilities.saveChartAsPNG(file2, lineChartObject, width, height);
                        lineChartObject.setBorderVisible(true);
                    } catch (Exception ex) {
                       // out.println("" + ex);
            %>
            <script>
    alert("Invalid Input/Data Unavailable");
            </script>
            <%
                }
            %>
            <style type="text/css">
                .table
                {
                    border:1px solid green;
                    width:100%;
                }
                .td
                {
                    border:1px solid green;
                    font-size: 20px;
                }
                .th
                {
                    background-color:#BDBA04;
                    color:white;
                    border:1px solid green;
                    font-size: 20px;
                }
            </style>
            <%--<table cellspacing="4" cellpadding="4" style="border: 1px solid;margin-top: 20px;" class="table">
                   <tr style="border: 1px solid;"> 
                <th class="th">Year</th>
                <th class="th">Category</th>
                <th class="th"><%=st1%></th>
                <th class="th"><%=st2%></th>
                <th class="th">Better State</th>
            </tr>
                <%
                    for(j=0;j<i;j++)
                    {
                        %>
                     
                <tr style="border: 1px solid;text-align: center;">
                    <th class="td" rowspan="3" style="text-align:center;" ><%=yr1[j]%></td>
                    <td class="td">Area</td>
                    <td class="td"><%=ar1[j]%></td>
                     <td class="td"><%=ar2[j]%></td>
                     <%
                        if(Float.parseFloat(ar1[j])>Float.parseFloat(ar2[j]))
                        {
                            count1++;
                            %>
                            <td class="td"><%=st1%></td>
                            <%
                        }
                        else
                        {
                            count2++;
                            %>
                            <td class="td"><%=st2%></td>
                            <%
                        }
                     %>
                </tr>
                <tr style="border: 1px solid;text-align: center;">
                    <td class="td">Production</td>
                    <td class="td"><%=pr1[j]%></td>
                    <td class="td"><%=pr2[j]%></td>
                    <%
                        if(Float.parseFloat(pr1[j])>Float.parseFloat(pr2[j]))
                        {
                            count1++;
                            %>
                            <td class="td"><%=st1%></td>
                            <%
                        }
                        else
                        {
                            count2++;
                            %>
                            <td class="td"><%=st2%></td>
                            <%
                        }
                     %>
                </tr>
                <tr style="border: 1px solid;text-align: center;">
                    <td class="td">Yield</td>
                    <td class="td"><%=yl1[j]%></td>
                    <td class="td"><%=yl2[j]%></td>
                       <%
                        if(Float.parseFloat(yl1[j])>Integer.parseInt(yl2[j]))
                        {
                            count1++;
                            %>
                            <td class="td"><%=st1%></td>
                            <%
                        }
                        else
                        {
                            count2++;
                            %>
                            <td class="td"><%=st2%></td>
                            <%
                        }
    %>
                </tr>
                        <%
                    }
                %>
                   <tr style="text-align:center;">
                       <td colspan="4" class="th" style="height:30px;">Overall Better State</td>
                    <%
                        if(count1>count2)
                        {
                            %>
                            <td class="th"><%=st1%></td>
                            <%
                        }
                        else
                        {
                            %>
                            <td class="th"><%=st2%></td>
                            <%
                        }
                     %>
    </tr>
    </table>--%>

        </div>
        <div style=" float:left;width:70%;margin-top:10px;margin-left:20px;border-radius:5px;height:500px;">
            
                    <%TimeUnit.SECONDS.sleep(5); %> 
            <img style="margin-top:3px;margin-left:10px;width: 600px;height: 450px;"src=<%=img%> USEMAP="#chart"/>
        </div>
        <%
            }
        %>
        <div class="clear"></div>
    </body>
</html>

