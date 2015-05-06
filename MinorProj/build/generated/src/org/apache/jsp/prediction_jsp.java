package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.DecimalFormat;
import java.sql.ResultSet;
import database.utility;

public final class prediction_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


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
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/htmlfiles/links.html");
    _jspx_dependants.add("/htmlfiles/ilogoandmenu.html");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Minor Project :: Industry Prediction</title>\n");
      out.write("        ");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!--\r\n");
      out.write("To change this license header, choose License Headers in Project Properties.\r\n");
      out.write("To change this template file, choose Tools | Templates\r\n");
      out.write("and open the template in the editor.\r\n");
      out.write("-->\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>TODO supply a title</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width\">\r\n");
      out.write("        <link href=\"cssfiles/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>\r\n");
      out.write("        <!--slider-->\r\n");
      out.write("        <link rel='stylesheet' type='text/css' href='cssfiles/stylesmenu.css' />\r\n");
      out.write("        <link href=\"slider.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\"/>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"jquery-1.9.0.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"jquery.nivo.slider.js\"></script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("                .table\n");
      out.write("                {\n");
      out.write("                    border:1px solid green;\n");
      out.write("                    width:100%;\n");
      out.write("                    \n");
      out.write("                }\n");
      out.write("                .td\n");
      out.write("                {\n");
      out.write("                    margin-top: 2px;\n");
      out.write("                    border:1px solid green;\n");
      out.write("                    font-size: 18px;\n");
      out.write("                    color: black;\n");
      out.write("                }\n");
      out.write("                .th\n");
      out.write("                {\n");
      out.write("                    background-color:#BDBA04;\n");
      out.write("                    color:white;\n");
      out.write("                    border:1px solid green;\n");
      out.write("                    font-size: 20px;\n");
      out.write("                }\n");
      out.write("            </style>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!--\r\n");
      out.write("To change this license header, choose License Headers in Project Properties.\r\n");
      out.write("To change this template file, choose Tools | Templates\r\n");
      out.write("and open the template in the editor.\r\n");
      out.write("-->\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Minor Project :: Industries</title>\r\n");
      out.write("        <link href=\"cssfiles/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>\r\n");
      out.write("        <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>\r\n");
      out.write("        <script type='text/javascript' src='menu_jquery.js'></script>\r\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"header\">\t\r\n");
      out.write("            <div class=\"wrap\"> \r\n");
      out.write("                <div class=\"header-top\">\r\n");
      out.write("                    <div class=\"logo\">\r\n");
      out.write("                        <h1><a href=\"index.jsp\">Industrial Analysis</a></h1>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"clear\"></div> \r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\t\r\n");
      out.write("        </div>\r\n");
      out.write("        <!------ Slider ------------>\r\n");
      out.write("        <div class=\"about-banner\">\r\n");
      out.write("            <div class=\"wrap\">\r\n");
      out.write("                <div class=\"cssmenu\">\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li><a href=\"index.jsp\"><span>Home</span></a></li>\r\n");
      out.write("                        <li><a href=\"about.jsp\"><span>About us</span></a></li>\r\n");
      out.write("                        <li class=\"active\"><a href=\"industry.jsp\"><span>Industry</span></a></li>\r\n");
      out.write("                        <li ><a href=\"states.jsp\"><span>States</span></a></li>\r\n");
      out.write("                        <li class=\"last\"><a href=\"contact.jsp\"><span>Contact</span></a></li>\r\n");
      out.write("                        <div class=\"clear\"></div>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\n");
      out.write("        \n");
      out.write("        <!------End Slider ------------>\n");
      out.write("\n");
      out.write("        <div id='cssmenu' style='height:1000px; float:left;'>\n");
      out.write("            <ul>\n");
      out.write("                <li class=\"active\">");
      out.write("\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"#\">\n");
      out.write("                            <input type=\"submit\" name=\"home\" value=\"Home\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li class='has-sub'><a href='#'><span>Industries</span></a>\n");
      out.write("                    <ul>\n");
      out.write("                        <li>");
      out.write("\n");
      out.write("                            <span>\n");
      out.write("                                <form action=\"cotton.jsp\">\n");
      out.write("                                    <input type=\"submit\" name=\"hcot\" value=\"Cotton Industry\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                </form>\n");
      out.write("                            </span>\n");
      out.write("                        </li>\n");
      out.write("                        <li>");
      out.write("\n");
      out.write("                            <span>\n");
      out.write("                                <form action=\"sugar.jsp\">\n");
      out.write("                                    <input type=\"submit\" name=\"hsug\" value=\"Sugar Industry\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                </form>\n");
      out.write("                            </span>\n");
      out.write("                        </li>\n");
      out.write("                        <li>");
      out.write("\n");
      out.write("                            <span>\n");
      out.write("                                <form action=\"agriculture.jsp\">\n");
      out.write("                                    <input type=\"submit\" name=\"hagri\" value=\"Agriculture Industry\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                </form>\n");
      out.write("                            </span>\n");
      out.write("                        </li>\n");
      out.write("                        <li>");
      out.write("\n");
      out.write("                            <span>\n");
      out.write("                                <form action=\"rice.jsp\">\n");
      out.write("                                    <input type=\"submit\" name=\"htour\" value=\"Rice Industry\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                </form>\n");
      out.write("                            </span>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li>");
      out.write("\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"overview.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"hover\" value=\"Overview\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li>");
      out.write("\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"about.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"habt\" value=\"About\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li>");
      out.write("\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"contact.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"hcon\" value=\"Contact\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"viewdata.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"ctcon\" value=\"View Statistical Data\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"last\">\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"compindus.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"ctcon\" value=\"Compare 2 Industries\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"about-top\">\n");
      out.write("            <div class=\"col span_1_of_about\">\n");
      out.write("                <div class=\"top-box1\">\n");
      out.write("                    <h4 style=\"font-size:32px;\">Data Prediction</h4>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <p style=\"margin-top:20px; margin-left: 30px;\" class=\"values\">\n");
      out.write("                Growth in the industrial sector is one of the vital figures that affect the Gross Domestic Product (GDP)\n");
      out.write("                in India. This section predicts the future production of any industry in a particular state.\n");
      out.write("                </p>\n");
      out.write("                <p class=\"values\" style=\"margin-left: 30px;\">\n");
      out.write("                We have the best tools which helps you to predict the future production with the utmost accuracy..You can \n");
      out.write("                check these predicted values by selecting the industry and state of your choice\n");
      out.write("                </p>\n");
      out.write("                <div class=\"clear\"></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div style=\"float:left;width:65%;margin-left:20px;border-radius:5px;\">\n");
      out.write("            \n");
      out.write("            <form action=\"#\" class=\"values\" style=\"margin-top:10px;\">\n");
      out.write("                <table cellspacing=\"4\" cellpadding=\"4\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td style=\"padding-left: 20px;\">\n");
      out.write("                            Select Industry\n");
      out.write("                        </td>\n");
      out.write("                        <td><select name=\"indus\" class=\"dropdown\">\n");
      out.write("                                <option>Industry</option>\n");
      out.write("                                <option>Cotton</option>\n");
      out.write("                                <option>Sugar</option>\n");
      out.write("                                <option>Foodgrains</option>\n");
      out.write("                                <option>Rice</option>\n");
      out.write("                            </select>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr class=\"blank_row\">\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td style=\"padding-left: 20px;\">Select State </td>\n");
      out.write("                        <td><select name=\"sta\" class=\"dropdown\">\n");
      out.write("                                <option>State</option>\n");
      out.write("                                <option>Andhra Pradesh</option>\n");
      out.write("                                <option>Bihar</option>\n");
      out.write("                                <option>Gujarat</option>\n");
      out.write("                                <option>Haryana</option>\n");
      out.write("                                <option>Karnataka</option>\n");
      out.write("                                <option>Madhya Pradesh</option>\n");
      out.write("                                <option>Maharashtra</option>\n");
      out.write("                                <option>Punjab</option>\n");
      out.write("                                <option>Rajasthan</option>\n");
      out.write("                                <option>Tamil Nadu</option>\n");
      out.write("                                <option>Uttar Pradesh</option>\n");
      out.write("                            </select></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr class=\"blank_row\">\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><input type=\"submit\" value=\"Submit\" style=\"margin-top: 10px;\" name=\"bt\" class=\"btn btn-primary btn1\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("                ");

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
                            if (rmse < rmsexp) 
                            {
                                futfin = futexp;
                            } 
                            else 
                            {
                                futfin = smp;
                            }
                           //out.println("Final Future value is " + futfin);
                           //out.println("Max value is " + totmax + " and Min value is " + totmin);
                           //out.println("Average Production is " + totavg);

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
                           // out.println("web service chl rhi h "+r1);
                            //yrdiff = yd + ".0";
                            //r1 = (Math.pow((p1 / p2), (1.0 / Double.parseDouble(yrdiff))) - 1) * 100;
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
                        
                        
      out.write("\n");
      out.write("                        <p style=\"margin-top:20px;\">\n");
      out.write("                         Acc. to the analysis done on the data available, it comes out that the production of ");
      out.print(indus);
      out.write(" Industry in ");
      out.print(state);
      out.write("\n");
      out.write("                         has a growth rate of ");
      out.print(numberFormat.format(r1));
      out.write("% and the predicted value of production in the year 2014-15 \n");
      out.write("                         is as shown in the table :\n");
      out.write("                        </p>                 \n");
      out.write("            <table cellspacing=\"4\" cellpadding=\"10\" style=\"border: 1px solid;margin-top: 20px;\" class=\"table\">\n");
      out.write("                <tr style=\"background-color: yellowgreen;\">\n");
      out.write("                    <td colspan=\"6\" class=\"th\" style=\"text-align:center;font-size: 24px;height: 30px;\">Production Prediction</td> \n");
      out.write("                </tr>\n");
      out.write("                <tr style=\"border: 1px solid ;\"> \n");
      out.write("                    <th class=\"th\">Predicted (2014-15)</th>\n");
      out.write("                    <th class=\"th\">Previous (2013-14)</th>\n");
      out.write("                    <th class=\"th\">Highest</th>\n");
      out.write("                    <th class=\"th\">Lowest</th>\n");
      out.write("                    <th class=\"th\">Dates</th>\n");
      out.write("                    <th class=\"th\">Unit</th>\n");
      out.write("                </tr>\n");
      out.write("                <tr style=\"border: 1px solid;text-align: center;height: 30px;\">\n");
      out.write("                    \n");
      out.write("                    <td class=\"td\" style=\"color:black;\">");
      out.print(futfin);
      out.write("</td>\n");
      out.write("                    <td class=\"td\">");
      out.print(p1);
      out.write("</td>\n");
      out.write("                    <td class=\"td\">");
      out.print(totmax);
      out.write("</td>\n");
      out.write("                    <td class=\"td\">");
      out.print(totmin);
      out.write("</td>\n");
      out.write("                    <td class=\"td\">1976-77 to 2013-14</td>\n");
      out.write("                    <td class=\"td\">'000 Bales of 170 Kgs. each</td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("                    <p style=\"margin-top: 20px;\">\n");
      out.write("                        Apart from this, the probable values of production of ");
      out.print(indus);
      out.write(" industry in ");
      out.print(state);
      out.write("\n");
      out.write("                        for the next three years may be estimated as follows :\n");
      out.write("                    </p>\n");
      out.write("             <table cellspacing=\"4\" cellpadding=\"4\" style=\"margin-left: 200px;margin-top: 20px;border:1px solid green; width: 30%;\" >\n");
      out.write("                    <tr style=\"border: 1px solid ;\"> \n");
      out.write("                        <th class=\"th\">2015-16</th>\n");
      out.write("                           <td class=\"td\" style=\"text-align: center;\">");
      out.print(futyr[0]);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr style=\"border: 1px solid ;\"> \n");
      out.write("                        <th class=\"th\">2016-17</th>\n");
      out.write("                        <td class=\"td\" style=\"text-align: center;\">");
      out.print(futyr[1]);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr style=\"border: 1px solid ;\"> \n");
      out.write("                        <th class=\"th\">2017-18</th>\n");
      out.write("                           <td class=\"td\" style=\"text-align: center;\">");
      out.print(futyr[2]);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("                        ");

                    }
                
      out.write("\n");
      out.write("            </form>\n");
      out.write("        </div>    \n");
      out.write("        <div class=\"clear\"></div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
