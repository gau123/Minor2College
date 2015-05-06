<%-- 
    Document   : compindus
    Created on : Mar 29, 2014, 4:05:38 PM
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
jQuery(function(){
$("#yea").autocomplete("list.jsp");
});
</script>
        <%!
            String st1, st2, ind;
            int j,k;
            int count1=0,count2=0;
            String[] sta1 = new String[100];
            String[] sta2 = new String[100];
            String[] yr1=new String[50];
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
            String y1,y2 ;
            ResultSet rs;
        %>
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
        <%@include file="htmlfiles/ilogoandmenu.html" %>
        
        <div id='cssmenu' style="float:left;">
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
                <li>
                    <span>
                        <form action="viewdata.jsp">
                            <input type="submit" name="ctcon" value="View Statistical Data" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
                <li class="active">
                    <span>
                        <form action="#">
                            <input type="submit" name="ctcon" value="Compare 2 Industries" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
                </li>
            </ul>    
        </div>    
        <div class="about-top">
		<div class="col span_1_of_about">
			<div class="top-box1">
                            <h4 style="font-size:32px;">Compare Industries</h4>
			</div>
			<div class="clear"></div>
		</div>
	</div>
                    <div style="float:left;width:65%;margin-top:5px;margin-left:30px;height: 200px;border-radius:5px;">
                        <form action="compindus.jsp" class="values"> 
                            <table cellspacing="4" cellpadding="4">
                <tr>
                    <td>Select State</td>
                    <td>
                        <select name="indus" style="width:170px;height: 30px; margin-top: 10px;font-size: 18px;margin-left: 10px;">
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
                        </select>
                    </td>
                </tr>
                <tr class="blank_row">
                    <td>  </td>
                </tr>
                <tr style="margin-top: 10px;"> 
                    <td>Select Industry :</td>
                </tr>
                <tr>
                    <td>Industry 1</td>
                    <td>
                        <select name="st1" style="width:170px;height: 30px; margin-top: 10px;font-size: 18px;margin-left: 10px;" >
                            <option>Industry</option>
                            <option>Cotton</option>
                            <option>Foodgrains</option>
                            <option>Rice</option>
                            <option>Sugar</option>
                        </select>
                    </td>
                    <td style="width:80px!important;padding-left: 20px;">Industry 2</td>
                    <td>
                        <select name="st2" style="width:170px;height: 30px; margin-top: 10px;margin-left: 10px;font-size: 18px;">
                            <option>Industry</option>
                            <option>Cotton</option>
                            <option>Foodgrains</option>
                            <option>Rice</option>
                            <option>Sugar</option>
                        </select>
                    </td>
                </tr>
                <tr class="blank_row">
                    
                </tr>
                <%--<tr>
                    <td>Input Year Range:</td>
                </tr>
                <tr>
                    <td>Year 1 </td>
                    <td><input type="text" id="yea" name="y1" style="width:170px;height: 25px; margin-top: 10px;margin-left: 10px;font-size: 18px;" required="true"/></td>
                    <td style="padding-left: 20px;">Year 2</td>
                    <td><input type="text" id="yea" name="y2" style="width:170px;height: 25px; margin-top: 10px;margin-left: 10px;font-size: 18px;" required="true"/></td>    
</tr>--%>
                <tr>
                    <td>
                        <input type="submit"  name="compare" value="Compare" style="margin-top: 10px;" class="btn btn-primary btn1"/>
                    </td>
                </tr>
            </table>
        </form>
        <%
            if (request.getParameter("compare") != null) 
            {
                try 
                {
                    DefaultCategoryDataset line_chart_dataset = new DefaultCategoryDataset();
                    utility ut = new utility();
                   // y1=request.getParameter("y1");
                   // y2=request.getParameter("y2");
                    st1 = request.getParameter("st1");
                    st2 = request.getParameter("st2");
                    ind = request.getParameter("indus");
                    qry1 = "select * from " + st1 + " where state='" + ind + "' and year between '2005-06' and '2011-12'";
                    //out.println(qry1);
                    rs = ut.DQL(qry1);
                    i=0;
                    while (rs.next()) 
                    {
                       // yr1[i]=rs.getString("year");
                        ar1[i] = rs.getString("area");
                        // out.println("data aya");
                        pr1[i] = rs.getString("production");
                        yl1[i] = rs.getString("yield");
                        line_chart_dataset.addValue(Integer.parseInt(rs.getString("production")), ""+st1,rs.getString("year"));
                        i++;
                    }
                    ut = new utility();
                    qry2 = "select * from " + st2 + " where state='" + ind + "' and year between '2005-06' and '2011-12'";
                    rs = ut.DQL(qry2);
                    k=0;
                    while (rs.next()) 
                    {
                        //out.println("data aya");
                        //yr2[k]=rs.getString("year");
                        ar2[k] = rs.getString("area");
                        pr2[k] = rs.getString("production");
                        yl2[k] = rs.getString("yield");
                       /* out.println(yr2[k]);
                        out.println(ar2[k]);
                        out.println(pr2[k]);
                        out.println(yl2[k]);*/
                        line_chart_dataset.addValue(Integer.parseInt(rs.getString("production")), ""+st2,rs.getString("year"));
                        
                        k++;
                    }
                    JFreeChart lineChartObject=ChartFactory.createLineChart
                                        ("Industries Comparison "+ind,
                                         "Year",
                                         "Production",
                                         line_chart_dataset,PlotOrientation.VERTICAL,true,true,false);  
                    final File file2 = new File("F:/JavaAptech/Netbeans 74 applications/MinorProj/web/"+ st1 + st2 + ind + ".png");
                    img=st1+st2+ind+".png";
                    int width=640; /* Width of the image */
                 int height=480; /* Height of the image */                
                 ChartUtilities.saveChartAsPNG(file2,lineChartObject,width,height); 
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
        <%-- <table cellspacing="4" cellpadding="4" style="border: 1px solid;margin-top: 20px;" class="table">
         <tr style="background-color: yellowgreen;">
                    <td colspan="5" class="th" style="text-align:center;font-size: 24px;height: 30px;"><%=ind%></td> 
                </tr>
            <tr style="border: 1px solid;"> 
            <th class="th">Year</th>
            <th class="th">Category</th>
            <th class="th"><%=st1%></th>
            <th class="th"><%=st2%></th>
            <th class="th">Better Industry</th>
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
                    if(Integer.parseInt(yl1[j])>Integer.parseInt(yl2[j]))
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
                   <td colspan="4" class="th" style="height:30px;">Overall Better Industry</td>
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
        <div style="border:1px solid; float:left;width:70%;margin-top:10px;margin-left:20px;border-radius:5px;height:380px;">
            
        <%TimeUnit.SECONDS.sleep(5); %>    
            <img style="margin-top:3px;margin-left:10px;width: 600px;height: 350px;"src=<%=img%> USEMAP="#chart"/>
        </div>
        <%
            }
        %>
        <div class="clear"></div>
</body>
</html>


