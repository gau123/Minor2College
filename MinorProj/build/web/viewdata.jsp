<%-- 
    Document   : viewdata
    Created on : Mar 24, 2014, 2:21:04 PM
    Author     : gaurav
--%>

<%@page import="java.util.*"%>
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
            jQuery(function() {
                $("#year").autocomplete("list.jsp");
            });
        </script>
        <title>JSP Page</title>
    </head>
    <body>

        <%@include file="htmlfiles/ilogoandmenu.html" %>
        <!------End Slider ------------>
        <div id='cssmenu' style='height:1000px; float:left;'>
            <ul>
                <li><%--<a href='industry.jsp'><span>Home</span></a>--%>
                    <span>
                        <form action="industry.jsp">
                            <input type="submit" name="cthome" value="Home" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li class='has-sub'><a href='#'><span>Industries</span></a>
                    <ul>
                        <li><%--<a href='cotton.jsp'><span>Cotton Industry</span></a>--%>
                            <span>
                                <form action="cotton.jsp">
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
                <li><%--<a href='overview.jsp'><span>Overview</span></a>--%>
                    <span>
                        <form action="overview.jsp">
                            <input type="submit" name="ctover" value="Overview" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li><%--<a href='about.jsp'><span>About</span></a>--%>
                    <span>
                        <form action="about.jsp">
                            <input type="submit" name="ctabt" value="About" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li><%--<a href='contact.jsp'><span>Contact</span></a>--%>
                    <span>
                        <form action="contact.jsp">
                            <input type="submit" name="ctcon" value="Contact" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li class="active">
                    <span>
                        <form action="#">
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
            </ul>
        </div>
        <div class="about-top">
            <div class="col span_1_of_about">
                <div class="top-box1">
                    <h4>View Statistical Data</h4>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div style="float:left;width:65%;margin-top:5px;margin-left:30px;height: 1000px;border-radius:5px;">
            <form action="viewdata.jsp" class="values"> 
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
                        <td>Input Year Range:</td>
                    </tr>
                    <tr>
                        <td>Year 1 </td>
                        <td><input value="" type="text" id="year" name="y1" style="width:170px;height: 25px; margin-top: 10px;margin-left: 10px;font-size: 18px;" required="true"/></td>
                        <td style="padding-left: 20px;">Year 2</td>
                        <td><input type="text" id="year" name="y2" style="width:170px;height: 25px; margin-top: 10px;margin-left: 10px;font-size: 18px;" required="true"/></td>    
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
                            y1 = request.getParameter("y1");
                            y2 = request.getParameter("y2");
                            st1 = request.getParameter("st1");
                            ind = request.getParameter("indus");
             if (request.getParameter("compare") != null) {
                
                    try {
                     utility ut = new utility();
                        
                     qry1 = "select * from " + ind + " where state='" + st1 + "' and year between '" + y1 + "' and '" + y2 + "'";
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
                    <th class="td" rowspan="3" style="text-align:center;" ><%=yr1[j]%>
                        
                    </th>
                    <td class="td">Area</td>
                    <td class="td"><%=ar1[j]%>
                        </td>
                </tr>
                <tr style="border: 1px solid;text-align: center;">
                    <td class="td">Production</td>
                    <td class="td"><%=pr1[j]%>
                        
                    </td>
                </tr>
                <tr style="border: 1px solid;text-align: center;">
                    <td class="td">Yield</td>
                    <td class="td"><%=yl1[j]%>
                        
                    </td>
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
