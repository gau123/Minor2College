package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.concurrent.TimeUnit;
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

public final class compindus_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


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
        

            String img;
            
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
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
      out.write("jQuery(function(){\n");
      out.write("$(\"#yea\").autocomplete(\"list.jsp\");\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("        ");
      out.write("\n");
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
      out.write("        <div id='cssmenu' style=\"float:left;\">\n");
      out.write("        <ul>\n");
      out.write("                <li>");
      out.write("\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"industry.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"cthome\" value=\"Home\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li class='has-sub'><a href='#'><span>Industries</span></a>\n");
      out.write("                    <ul>\n");
      out.write("                        <li>");
      out.write("\n");
      out.write("                            <span>\n");
      out.write("                                <form action=\"cotton.jsp\">\n");
      out.write("                                    <input type=\"submit\" name=\"cot\" value=\"Cotton Industry\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                </form>\n");
      out.write("                            </span>\n");
      out.write("                        </li>\n");
      out.write("                        <li>");
      out.write("\n");
      out.write("                            <span>\n");
      out.write("                                <form action=\"sugar.jsp\">\n");
      out.write("                                    <input type=\"submit\" name=\"ctsug\" value=\"Sugar Industry\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                </form>\n");
      out.write("                            </span>\n");
      out.write("                        </li>\n");
      out.write("                        <li>");
      out.write("\n");
      out.write("                            <span>\n");
      out.write("                                <form action=\"agriculture.jsp\">\n");
      out.write("                                    <input type=\"submit\" name=\"ctagri\" value=\"FoodGrain Industry\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                </form>\n");
      out.write("                            </span>\n");
      out.write("                        </li>\n");
      out.write("                        <li>");
      out.write("\n");
      out.write("                            <span>\n");
      out.write("                                <form action=\"rice.jsp\">\n");
      out.write("                                    <input type=\"submit\" name=\"cttour\" value=\"Rice Industry\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                </form>\n");
      out.write("                            </span>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li>");
      out.write("\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"overview.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"ctover\" value=\"Overview\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li>");
      out.write("\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"about.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"ctabt\" value=\"About\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li>");
      out.write("\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"contact.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"ctcon\" value=\"Contact\" style=\"width:200px;text-align:left;\"/>\n");
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
      out.write("                <li class=\"active\">\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"#\">\n");
      out.write("                            <input type=\"submit\" name=\"ctcon\" value=\"Compare 2 Industries\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("            </ul>    \n");
      out.write("        </div>    \n");
      out.write("        <div class=\"about-top\">\n");
      out.write("\t\t<div class=\"col span_1_of_about\">\n");
      out.write("\t\t\t<div class=\"top-box1\">\n");
      out.write("                            <h4 style=\"font-size:32px;\">Compare Industries</h4>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"clear\"></div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("                    <div style=\"float:left;width:65%;margin-top:5px;margin-left:30px;height: 200px;border-radius:5px;\">\n");
      out.write("                        <form action=\"compindus.jsp\" class=\"values\"> \n");
      out.write("                            <table cellspacing=\"4\" cellpadding=\"4\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Select State</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"indus\" style=\"width:170px;height: 30px; margin-top: 10px;font-size: 18px;margin-left: 10px;\">\n");
      out.write("                            <option>State</option>\n");
      out.write("                            <option>Andhra Pradesh</option>\n");
      out.write("                            <option>Bihar</option>\n");
      out.write("                            <option>Gujarat</option>\n");
      out.write("                            <option>Haryana</option>\n");
      out.write("                            <option>Karnataka</option>\n");
      out.write("                            <option>Madhya Pradesh</option>\n");
      out.write("                            <option>Maharashtra</option>\n");
      out.write("                            <option>Punjab</option>\n");
      out.write("                            <option>Rajasthan</option>\n");
      out.write("                            <option>Tamil Nadu</option>\n");
      out.write("                            <option>Uttar Pradesh</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr class=\"blank_row\">\n");
      out.write("                    <td>  </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr style=\"margin-top: 10px;\"> \n");
      out.write("                    <td>Select Industry :</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Industry 1</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"st1\" style=\"width:170px;height: 30px; margin-top: 10px;font-size: 18px;margin-left: 10px;\" >\n");
      out.write("                            <option>Industry</option>\n");
      out.write("                            <option>Cotton</option>\n");
      out.write("                            <option>Foodgrains</option>\n");
      out.write("                            <option>Rice</option>\n");
      out.write("                            <option>Sugar</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                    <td style=\"width:80px!important;padding-left: 20px;\">Industry 2</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"st2\" style=\"width:170px;height: 30px; margin-top: 10px;margin-left: 10px;font-size: 18px;\">\n");
      out.write("                            <option>Industry</option>\n");
      out.write("                            <option>Cotton</option>\n");
      out.write("                            <option>Foodgrains</option>\n");
      out.write("                            <option>Rice</option>\n");
      out.write("                            <option>Sugar</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr class=\"blank_row\">\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("                ");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"submit\"  name=\"compare\" value=\"Compare\" style=\"margin-top: 10px;\" class=\"btn btn-primary btn1\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        ");

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
                
      out.write("\n");
      out.write("                <script>\n");
      out.write("                    alert(\"Invalid Input/Data Unavailable\");\n");
      out.write("                </script>\n");
      out.write("                ");

                }
        
      out.write("\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            .table\n");
      out.write("            {\n");
      out.write("                border:1px solid green;\n");
      out.write("                width:100%;\n");
      out.write("            }\n");
      out.write("            .td\n");
      out.write("            {\n");
      out.write("                border:1px solid green;\n");
      out.write("                font-size: 20px;\n");
      out.write("            }\n");
      out.write("            .th\n");
      out.write("            {\n");
      out.write("                background-color:#BDBA04;\n");
      out.write("                color:white;\n");
      out.write("                border:1px solid green;\n");
      out.write("                font-size: 20px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        ");
      out.write("\n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("        <div style=\"border:1px solid; float:left;width:70%;margin-top:10px;margin-left:20px;border-radius:5px;height:380px;\">\n");
      out.write("            \n");
      out.write("        ");
TimeUnit.SECONDS.sleep(5); 
      out.write("    \n");
      out.write("            <img style=\"margin-top:3px;margin-left:10px;width: 600px;height: 350px;\"src=");
      out.print(img);
      out.write(" USEMAP=\"#chart\"/>\n");
      out.write("        </div>\n");
      out.write("        ");

            }
        
      out.write("\n");
      out.write("        <div class=\"clear\"></div>\n");
      out.write("</body>\n");
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
