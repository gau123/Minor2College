<%-- 
    Document   : viewsdata
    Created on : Mar 29, 2014, 6:20:11 PM
    Author     : gaurav
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="database.utility"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="cssfiles/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel='stylesheet' type='text/css' href='cssfiles/stylesmenu.css' />
        <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
        <%--<script type='text/javascript' src='menu_jquery.js'></script>--%>
        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>

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
        <script>
jQuery(function(){
$("#year").autocomplete("list.jsp");
});
</script>
        <title>Minor Project :: States 10 Years Data</title>
    </head>
    <body>
        
        <%@include file="htmlfiles/slogoandmenu.html" %>
        <!------End Slider ------------>
        <div id='cssmenu' style='height:1000px; float:left;'>
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
                <li><%--<a href='overviewstates.html'><span>Overview</span></a>--%>
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
                <li>
                    <span>
                        <form action="comparest.jsp">
                            <input type="submit" name="orcon" value="Compare 2 States" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li class="active">
                    <span>
                        <form action="#">
                            <input type="submit" name="orcon" value="Last 10 Years Stats" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
            </ul>
        </div>
        <div class="about-top">
            <div class="col span_1_of_about">
                <div class="top-box1">
                    <h4>Last 10 Years Data</h4>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div style="float:left;width:65%;margin-top:5px;margin-left:30px;height: 1000px;border-radius:5px;">
            <form action="viewsdata.jsp" class="values"> 
                <table cellspacing="4" cellpadding="4">
                    <tr>
                        <td>Select Industry</td>
                        <td>
                            <select name="indus" style="width:170px;height: 30px; margin-top: 10px;font-size: 18px;margin-left: 10px;">
                                <option>Industry</option>
                                <option>FoodGrains</option>
                                <option>Rice</option>
                                <option>Cotton</option>
                                <option>Sugar</option>
                            </select>
                        </td>
                    </tr>
                    <tr class="blank_row">
                        <td>  </td>
                    </tr>
                    <tr style="margin-top: 10px;"> 
                        <td>Select State :</td>
                        <td>
                            <select  name="st1" style="width:170px;height: 30px; margin-top: 10px;font-size: 18px;margin-left: 10px;" >
                                <option selected="true">State</option>
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
                            </select>
                        </td>
                    </tr>
                    <tr class="blank_row">

                    </tr>
                    <tr>
                        <td>
                            <input type="submit" name="compare" value="View Data" style="margin-top: 10px;" class="btn btn-primary btn1"/>
                        </td>
                    </tr>
                </table>
            </form>
                    <%!
            String st1, ind;
            int j;
            String[] sta1 = new String[100];
            String[] yr1 = new String[50];
            String[] ar1 = new String[100];
            String[] pr1 = new String[100];
            String[] yl1 = new String[50];
            String qry1;
            int i;
            String in;
            String y1, y2;
            ResultSet rs;
        %>
            <%
                        st1 = request.getParameter("st1");
                        ind = request.getParameter("indus");
                if (request.getParameter("compare") != null) 
                {
                    try {
                        utility ut = new utility();
                        
                        qry1 = "select * from " + ind + " where state='" + st1 + "' and year between '2000-01' and '2011-12'";
                        rs = ut.DQL(qry1);
                        i = 0;
                        while (rs.next()) 
                        {
                            yr1[i] = rs.getString("year");
                            ar1[i] = rs.getString("area");
                            pr1[i] = rs.getString("production");
                            yl1[i] = rs.getString("yield");
                            i++;
                        }
                    } 
                    catch (Exception ex) 
                    {
                        %>
                        <script>
                            alert("Invalid Input/Data Unavailable");
                        </script>
                        <%
                       // out.println("" + ex);
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
            <table cellspacing="4" cellpadding="4" style="border: 1px solid;margin-top: 20px;" class="table">
                <tr style="background-color: yellowgreen;">
                    <td colspan="3" class="th" style="text-align:center;font-size: 24px;height: 30px;"><%=st1%></td> 
                </tr>
                <tr style="border: 1px solid ;"> 
                    <th class="th">Year</th>
                    <th class="th">Category</th>
                    <th class="th">Data</th>
                </tr>
                <%
                    for (j = 0; j < i; j++) 
                    {
                %>
                <tr style="border: 1px solid;text-align: center;">
                    <th class="td" rowspan="3" style="text-align:center;" ><%=yr1[j]%></td>
                    <td class="td">Area</td>
                    <td class="td"><%=ar1[j]%></td>
                </tr>
                <tr style="border: 1px solid;text-align: center;">
                    <td class="td">Production</td>
                    <td class="td"><%=pr1[j]%></td>
                </tr>
                <tr style="border: 1px solid;text-align: center;">
                    <td class="td">Yield</td>
                    <td class="td"><%=yl1[j]%></td>
                </tr>
                <%
                    }
                %>
            </table>
            <%
                }
            %>
        </div>
        <div class="clear"></div>

    </body>
</body>
</html>

