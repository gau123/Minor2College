<%-- 
    Document   : prediction
    Created on : May 10, 2014, 6:07:07 PM
    Author     : gaurav
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="database.utility"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Minor Project :: Industry Prediction</title>
        <%@include file="htmlfiles/links.html" %>
        <%!
            String qry;
            float afdiffsqsum = 0;
            float prodsum = 0;
            float totmax = 0, totmin = 0;
            //float totavg;
            float futfin;
            float rmse;
            float smp = 0;
            Float[] afdiffsq = new Float[500];
            Float[] afdiff = new Float[500];
            Float[] prod = new Float[500];
            Float[] avg = new Float[500];
            int n = 0;
            int i = 1, j = 1;
            Float[] futyr=new Float[5];
            int k = 0;
            double r1;
            double nxtyr = 0;
            String yrdiff;
            int yd = 0;
            String y1, y2;
            double p1 = 0, p2 = 0;
            DecimalFormat numberFormat = new DecimalFormat("#0.00");
            Double[] dtftdif = new Double[6000];
            Double[] dtftdifsq = new Double[6000];
            double sumdtdtdifsq;
            double rmsexp;
            int ie = 0;
            double c = 0.7, dt = 0, ft = 0;
            double[] aa = new double[60];
            float futexp;
            String sql;
            double sumprod = 0;
            int ne = 0;
            float avge;
            String state,indus;
        %>
    </head>
    <style type="text/css">
                .table
                {
                    border:1px solid green;
                    width:100%;
                    
                }
                .td
                {
                    margin-top: 2px;
                    border:1px solid green;
                    font-size: 18px;
                    color: black;
                }
                .th
                {
                    background-color:#BDBA04;
                    color:white;
                    border:1px solid green;
                    font-size: 20px;
                }
            </style>
    <body>

        <%@include file="htmlfiles/ilogoandmenu.html" %>
        
        <!------End Slider ------------>

        <div id='cssmenu' style='height:1000px; float:left;'>
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
                <li><%--<a href='overview.jsp'><span>Overview</span></a>--%>
                    <span>
                        <form action="overview.jsp">
                            <input type="submit" name="hover" value="Overview" style="width:200px;text-align:left;"/>
                        </form>
                    </span>
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
        <div class="about-top">
            <div class="col span_1_of_about">
                <div class="top-box1">
                    <h4 style="font-size:32px;">Data Prediction</h4>
                    
                </div>
                <p style="margin-top:20px; margin-left: 30px;" class="values">
                Growth in the industrial sector is one of the vital figures that affect the Gross Domestic Product (GDP)
                in India. This section predicts the future production of any industry in a particular state.
                </p>
                <p class="values" style="margin-left: 30px;">
                We have the best tools which helps you to predict the future production with the utmost accuracy..You can 
                check these predicted values by selecting the industry and state of your choice
                </p>
                <div class="clear"></div>
            </div>
        </div>
        <div style="float:left;width:65%;margin-left:20px;border-radius:5px;">
            
            <form action="#" class="values" style="margin-top:10px;">
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
                <%
                    if (request.getParameter("bt") != null) 
                    {
                        try 
                        {
                            state=request.getParameter("sta");
                            indus=request.getParameter("indus");
                            

                            utility ut = new utility();
                            qry = "select * from "+indus+" where state='"+state+"' order by year asc";
                            ResultSet rs = ut.DQL(qry);
                            while (rs.next()) 
                            {
                                prod[i] = Float.parseFloat(rs.getString("production"));
                                prodsum = prodsum + prod[i];
                                i++;
                                n++;
                            }
                           // totavg = prodsum / n;
                            for (j = 1; j < i - 2; j++) 
                            {
                                avg[j + 3] = (prod[j] + prod[j + 1] + prod[j + 2]) / 3;
                                smp = avg[j + 3];
                               // out.println("Average " + avg[j + 3] + " " + (j + 3));

                                if ((j + 3) < 29) 
                                {
                                    afdiff[j + 3] = prod[j + 3] - avg[j + 3];
                                    afdiffsq[j + 3] = afdiff[j + 3] * afdiff[j + 3];
                                    afdiffsqsum = afdiffsqsum + afdiffsq[j + 3];
                                }
                            }
                            //out.println("Future simple is " + smp);
                            //out.println(afdiffsqsum);
                            rmse = (float) Math.sqrt(afdiffsqsum / n);
                            //out.println("RMSE is " + rmse);

                            //exponential starts
                            
                            utility ob = new utility();
                            sql = "select production from "+indus+" where state='"+state+"'";
                            rs = ob.DQL(sql);
                            while (rs.next()) 
                            {
                                sumprod = sumprod + Double.parseDouble(rs.getString("production"));
                                ne++;
                            }
                            avge = (float) (sumprod / ne);
                            //out.println(avge);
                            sql = "SELECT Production, Year,max(production),min(production) FROM "+indus+" where state='"+state+"'";
                            
                            sumdtdtdifsq = 0;
                            ie = 0;
                            rs = ob.DQL(sql);
                            while (rs.next()) 
                            {
                                dt = rs.getInt("Production");
                                totmax = Float.parseFloat(rs.getString(3));
                                totmin = Float.parseFloat(rs.getString(4));
                                if (ie == 0) 
                                {
                                    ft = avge;
                                    dtftdif[ie] = avge - dt;
                                    dtftdifsq[ie] = dtftdif[ie] * dtftdif[ie];
                                    sumdtdtdifsq = sumdtdtdifsq + dtftdifsq[ie];
                                    aa[ie] = ft;
                                } 
                                else 
                                {
                                    ft = c * dt + (1 - c) * ft;
                                    dtftdif[ie] = dt - ft;
                                    dtftdifsq[ie] = dtftdif[ie] * dtftdif[ie];
                                    sumdtdtdifsq = sumdtdtdifsq + dtftdifsq[ie];
                                    aa[ie] = ft;
                                }
                                ie++;
                            }
                            rmsexp = Math.sqrt(sumdtdtdifsq / ie);
                            ft = c * dt + (1 - c) * ft;
                            futexp = (float) ft;
                            //out.println("Future exp is : " + futexp);
                            //out.println("RMSE for exponential smoothing is " + rmsexp);
                            if (rmse > rmsexp) 
                            {
                                futfin = futexp;
                            } 
                            else 
                            {
                                futfin = smp;
                            }
                           
                           //cagr calc vaala
                            
                            mypack.CAGRService service = new mypack.CAGRService();
                            mypack.CAGR port = service.getCAGRPort();
                            
                            numberFormat.format(2.5);
                            qry = "select * from "+indus+" where state='"+state+"' and year='2013-14'";
                            rs = ut.DQL(qry);
                            if (rs.next()) 
                            {
                                p1 = Double.parseDouble(rs.getString("production"));
                                y1 = rs.getString("year");
                            }
                            qry = "select * from "+indus+" where state='"+state+"' order by year asc limit 1";
                            rs = ut.DQL(qry);
                            if (rs.next()) 
                            {
                                p2 = Double.parseDouble(rs.getString("production"));
                                y2 = rs.getString("year");
                            }
                            qry = "select count(*) from "+indus+" where state='"+state+"'";
                            rs = ut.DQL(qry);
                            if (rs.next()) 
                            {
                                yd = Integer.parseInt(rs.getString(1)) - 1;
                            }
                            r1=port.calc(p2,p1,yd);//p1 latest value //p2 base year value 
                            while (k < 3) 
                            {
                                if (k == 0) 
                                {
                                    nxtyr = futfin + (futfin * r1) / 100;
                                   // out.println(k + " pe value " + nxtyr);
                                    futyr[k]=(float)nxtyr;
                                } 
                                else 
                                {
                                    nxtyr = nxtyr + (nxtyr * r1) / 100;
                                   // out.println(k + " pe value " + nxtyr);
                                    futyr[k]=(float)nxtyr;
                                }
                                k++;
                            }
                        } 
                        catch (Exception ex) 
                        {
                            out.println(ex);
                        }
                        
                        %>
                        <p style="margin-top:20px;">
                         Acc. to the analysis done on the data available, it comes out that the production of <%=indus%> Industry in <%=state%>
                         has a growth rate of <%=numberFormat.format(r1)%>% and the predicted value of production in the year 2014-15 
                         is as shown in the table :
                        </p>                 
            <table cellspacing="4" cellpadding="10" style="border: 1px solid;margin-top: 20px;" class="table">
                <tr style="background-color: yellowgreen;">
                    <td colspan="6" class="th" style="text-align:center;font-size: 24px;height: 30px;">Production Prediction</td> 
                </tr>
                <tr style="border: 1px solid ;"> 
                    <th class="th">Predicted (2014-15)</th>
                    <th class="th">Previous (2013-14)</th>
                    <th class="th">Highest</th>
                    <th class="th">Lowest</th>
                    <th class="th">Dates</th>
                    <th class="th">Unit</th>
                </tr>
                <tr style="border: 1px solid;text-align: center;height: 30px;">
                    
                    <td class="td" style="color:black;"><%=futfin%></td>
                    <td class="td"><%=p1%></td>
                    <td class="td"><%=totmax%></td>
                    <td class="td"><%=totmin%></td>
                    <td class="td">1976-77 to 2013-14</td>
                    <td class="td">'000 Bales of 170 Kgs. each</td>
                </tr>
            </table>
                    <p style="margin-top: 20px;">
                        Apart from this, the probable values of production of <%=indus%> industry in <%=state%>
                        for the next three years may be estimated as follows :
                    </p>
             <table cellspacing="4" cellpadding="4" style="margin-left: 200px;margin-top: 20px;border:1px solid green; width: 30%;" >
                    <tr style="border: 1px solid ;"> 
                        <th class="th">2015-16</th>
                           <td class="td" style="text-align: center;"><%=futyr[0]%></td>
                    </tr>
                    <tr style="border: 1px solid ;"> 
                        <th class="th">2016-17</th>
                        <td class="td" style="text-align: center;"><%=futyr[1]%></td>
                    </tr>
                    <tr style="border: 1px solid ;"> 
                        <th class="th">2017-18</th>
                           <td class="td" style="text-align: center;"><%=futyr[2]%></td>
                    </tr>
                </table>
                        <%
                    }
                %>
            </form>
        </div>    
        <div class="clear"></div>
    </body>
</html>
