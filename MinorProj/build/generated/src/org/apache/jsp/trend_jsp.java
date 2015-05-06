package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.concurrent.TimeUnit;
import java.text.DecimalFormat;
import java.sql.ResultSet;
import database.utility;
import java.awt.*;
import java.io.*;
import org.jfree.chart.*;
import org.jfree.chart.axis.*;
import org.jfree.chart.entity.*;
import org.jfree.chart.labels.*;
import org.jfree.chart.plot.*;
import org.jfree.chart.renderer.category.*;
import org.jfree.chart.urls.*;
import org.jfree.data.category.*;
import org.jfree.data.general.*;

public final class trend_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


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
                        
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/htmlfiles/slogoandmenu.html");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <script>\n");
      out.write("            jQuery(function() {\n");
      out.write("                $(\"#yea\").autocomplete(\"list.jsp\");\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            .blank_row\n");
      out.write("            {\n");
      out.write("                height: 10px !important; /* Overwrite any previous rules */\n");
      out.write("            }\n");
      out.write("            .values\n");
      out.write("            {\n");
      out.write("                font-size: 18px;\n");
      out.write("                color: black;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <title>Minor Project | States :: Compare</title>\n");
      out.write("        <link href=\"cssfiles/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <link rel='stylesheet' type='text/css' href='cssfiles/stylesmenu.css' />\n");
      out.write("        <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
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
      out.write("        <title>Minor Project :: States</title>\r\n");
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
      out.write("                        <li><a href=\"industry.jsp\"><span>Industry</span></a></li>\r\n");
      out.write("                        <li  class=\"active\"><a href=\"states.jsp\"><span>States</span></a></li>\r\n");
      out.write("                        <li class=\"last\"><a href=\"contact.jsp\"><span>Contact</span></a></li>\r\n");
      out.write("                        <div class=\"clear\"></div>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div id='cssmenu' style=\"float:left;\">\n");
      out.write("            <ul>\n");
      out.write("                <li>\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"states.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"shome\" value=\"Home\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li class='has-sub active'><a href='#'><span>States</span></a>\n");
      out.write("                    <ul>\n");
      out.write("                        <li class='has-sub active'><a href='#'><span>North India</span></a>\n");
      out.write("                            <ul>\n");
      out.write("                                <li>\n");
      out.write("                                    <span>\n");
      out.write("                                        <form action=\"bihar.jsp\">\n");
      out.write("                                            <input type=\"submit\" name=\"ordel\" value=\"Bihar\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                        </form>\n");
      out.write("                                    </span>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <span>\n");
      out.write("                                        <form action=\"haryana.jsp\">\n");
      out.write("                                            <input type=\"submit\" name=\"orhar\" value=\"Haryana\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                        </form>\n");
      out.write("                                    </span>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"active\">\n");
      out.write("                                    <span>\n");
      out.write("                                        <form action=\"Punjab.jsp\">\n");
      out.write("                                            <input type=\"submit\" name=\"orpun\" value=\"Punjab\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                        </form>\n");
      out.write("                                    </span>\n");
      out.write("                                </li>\n");
      out.write("                                <li class='last'>\n");
      out.write("                                    <span>\n");
      out.write("                                        <form action=\"up.jsp\">\n");
      out.write("                                            <input type=\"submit\" name=\"orup\" value=\"Uttar Pradesh\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                        </form>\n");
      out.write("                                    </span>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li class='has-sub'><a href='#'><span>South India</span></a>\n");
      out.write("                            <ul>\n");
      out.write("                                <li>\n");
      out.write("                                    <span>\n");
      out.write("                                        <form action=\"andhra.jsp\">\n");
      out.write("                                            <input type=\"submit\" name=\"orandh\" value=\"Andhra Pradesh\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                        </form>\n");
      out.write("                                    </span>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <span>\n");
      out.write("                                        <form action=\"karnataka.jsp\">\n");
      out.write("                                            <input type=\"submit\" name=\"orkarn\" value=\"Karnataka\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                        </form>\n");
      out.write("                                    </span>\n");
      out.write("                                </li>\n");
      out.write("                                <li class='last'>\n");
      out.write("                                    <span>\n");
      out.write("                                        <form action=\"tamil.jsp\">\n");
      out.write("                                            <input type=\"submit\" name=\"ortam\" value=\"Tamil Nadu\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                        </form>\n");
      out.write("                                    </span>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li class='has-sub'><a href='#'><span>Western India</span></a>\n");
      out.write("                            <ul>\n");
      out.write("                                <li>\n");
      out.write("                                    <span>\n");
      out.write("                                        <form action=\"gujarat.jsp\">\n");
      out.write("                                            <input type=\"submit\" name=\"orguj\" value=\"Gujarat\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                        </form>\n");
      out.write("                                    </span>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <span>\n");
      out.write("                                        <form action=\"madhya.jsp\">\n");
      out.write("                                            <input type=\"submit\" name=\"ormadh\" value=\"Madhya Pradesh\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                        </form>\n");
      out.write("                                    </span>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <span>\n");
      out.write("                                        <form action=\"maharashtra.jsp\">\n");
      out.write("                                            <input type=\"submit\" name=\"ormaha\" value=\"Maharashtra\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                        </form>\n");
      out.write("                                    </span>\n");
      out.write("                                </li>\n");
      out.write("                                <li class='last'>\n");
      out.write("                                    <span>\n");
      out.write("                                        <form action=\"Rajasthan.jsp\">\n");
      out.write("                                            <input type=\"submit\" name=\"ortam\" value=\"Rajasthan\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                        </form>\n");
      out.write("                                    </span>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li>");
      out.write("\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"overviewstates.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"orover\" value=\"Overview\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"about.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"orabt\" value=\"About\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"contact.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"orcon\" value=\"Contact\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"#\">\n");
      out.write("                            <input type=\"submit\" name=\"orcon\" value=\"Compare 2 States\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"viewsdata.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"orcon\" value=\"Last 10 Years Data\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("            </ul>    \n");
      out.write("        </div>    \n");
      out.write("        <div class=\"about-top\">\n");
      out.write("            <div class=\"col span_1_of_about\">\n");
      out.write("                <div class=\"top-box1\">\n");
      out.write("                    <h4 style=\"font-size:32px;\">Compare States</h4>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"clear\"></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div style=\"float:left;width:65%;margin-top:5px;margin-left:30px;height: 350px;border-radius:5px;\">\n");
      out.write("            <form action=\"#\" class=\"values\"> \n");
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
      out.write("            </form>\n");
      out.write("            ");

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
                        qry="select production from "+indus+" where state='"+state+"' and year='2013-14'";
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
                       // out.println("yybar is "+numberFormat.format(yybar));
                       // out.println("xybar is "+numberFormat.format(xybar));
                        float beta0 = ybar - beta1 * xbar;
                        numberFormat.format(beta1);
                       // out.println("beta1 is "+numberFormat.format(beta1));
                        numberFormat.format(beta0);
                        sesq=(yybar-(beta1*xybar))/(n-2);
                       // out.println("sesq is "+sesq);
                       // out.println(n);
                        se= Math.sqrt(sesq);
                        numberFormat.format(sesq);
                       // out.println(" sss"+numberFormat.format(sesq));
                       // out.println("se is "+se);
                        i = 0;
                        for(i=0;i<n;i++)
                        {
                            val[i]=beta1*i+beta0;
                           // out.println(val[i]+"\t");
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
                        final File file2 = new File("F:/JavaAptech/Netbeans 74 applications/MinorProj/web/" + state + indus + "trend.png");
                        img = state + indus + "trend.png";
                        int width = 640; /* Width of the image */

                        int height = 480; /* Height of the image */

                        ChartUtilities.saveChartAsPNG(file2, lineChartObject, width, height);
                        lineChartObject.setBorderVisible(true);
                    } 
                    catch (Exception ex) 
                    {
                        out.println("" + ex);
            
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("            <p style=\"margin-top:20px;\">\n");
      out.write("                         Acc. to the analysis done on the data available, ");
      out.print(indus);
      out.write(" industry in the ");
      out.print(state);
      out.write(" follows a \n");
      out.write("                         linear trend which is represented in the following figure :\n");
      out.write("            </p>\n");
      out.write("        \n");
      out.write("        <div style=\" float:left;width:100%;margin-top:10px;margin-left:20px;border-radius:5px;height:500px;\">\n");
      out.write("            ");
TimeUnit.SECONDS.sleep(5); 
      out.write(" \n");
      out.write("            <img style=\"margin-top:3px;margin-left:10px;width: 800px;height: 450px;\"src=");
      out.print(img);
      out.write(" USEMAP=\"#chart\"/>\n");
      out.write("                <p style=\"margin-top: 20px;\">\n");
      out.write("            It has also been interpreted that production of ");
      out.print(indus);
      out.write(" industry in ");
      out.print(state);
      out.write(" in the year 2014-15 is\n");
      out.write("            expected to be around ");
      out.print(prev-(n-2)*se);
      out.write(" 000 Bales of 170 Kgs. each. ");
      out.print(prev);
      out.write("\n");
      out.write("</p>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("        ");

            }
        
      out.write("\n");
      out.write("        <div class=\"clear\"></div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
