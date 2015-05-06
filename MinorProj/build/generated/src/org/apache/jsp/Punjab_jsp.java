package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.concurrent.TimeUnit;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.text.DateFormat;
import java.util.Date;
import org.jsoup.nodes.Document;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
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

public final class Punjab_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            String qry;
            String y1, y2;
            String indus;
            float a;
            int b;
            final DefaultPieDataset data1 = new DefaultPieDataset();
            DefaultCategoryDataset categoryDataset = new DefaultCategoryDataset();
            String st;
            String img,img1;
        
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
      out.write("       \n");
      out.write("        <style>\n");
      out.write("            h3.heading \n");
      out.write("            {\n");
      out.write("                font-family:futura_md_btmedium; \n");
      out.write("                font-size:24px; \n");
      out.write("                color:#000; \n");
      out.write("                font-weight:normal; \n");
      out.write("                text-transform:uppercase; \n");
      out.write("                padding:12px 0 7px; \n");
      out.write("                border-top:4px solid #ece9dd; \n");
      out.write("                border-bottom:4px solid #ece9dd; \n");
      out.write("                width:100%; \n");
      out.write("                position:relative;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            ol.news\n");
      out.write("            {\n");
      out.write("                margin-top:10px; \n");
      out.write("                height:173px;\n");
      out.write("            }\n");
      out.write("            ol.news li\n");
      out.write("            {\n");
      out.write("                font-size:12px; \n");
      out.write("                padding-bottom:10px; \n");
      out.write("                line-height:14px;\n");
      out.write("            }\n");
      out.write("            ol.news li a\n");
      out.write("            {\n");
      out.write("                color:#cc6633;\n");
      out.write("            }\n");
      out.write("            ol.news li a:hover\n");
      out.write("            {\n");
      out.write("                color:#666; \n");
      out.write("            }\n");
      out.write("            .blank_row\n");
      out.write("            {\n");
      out.write("                height: 10px !important; /* Overwrite any previous rules */\n");
      out.write("            }\n");
      out.write("            .dropdown\n");
      out.write("            {\n");
      out.write("                width:170px;\n");
      out.write("                height: 30px; \n");
      out.write("                margin-top: 10px;\n");
      out.write("                margin-left: 10px;\n");
      out.write("                font-size: 18px;\n");
      out.write("            }\n");
      out.write("            .values\n");
      out.write("            {\n");
      out.write("                font-size: 18px;\n");
      out.write("                color: black;\n");
      out.write("            }\n");
      out.write("            .yearbox\n");
      out.write("            {\n");
      out.write("                width:170px;\n");
      out.write("                height: 25px; \n");
      out.write("                margin-top: 10px;\n");
      out.write("                margin-left: 10px;\n");
      out.write("                font-size: 18px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        ");
      out.write(" \n");
      out.write("        <title>Minor Project | States :: Punjab</title>\n");
      out.write("        <link href=\"cssfiles/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <link rel='stylesheet' type='text/css' href='cssfiles/stylesmenu.css' />\n");
      out.write("        <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>\n");
      out.write("<link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
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
      out.write("                <li>");
      out.write("\n");
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
      out.write("                                <li class='last'>");
      out.write("\n");
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
      out.write("                                <li>");
      out.write("\n");
      out.write("                                    <span>\n");
      out.write("                                        <form action=\"gujarat.jsp\">\n");
      out.write("                                            <input type=\"submit\" name=\"orguj\" value=\"Gujarat\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                        </form>\n");
      out.write("                                    </span>\n");
      out.write("                                </li>\n");
      out.write("                                <li>");
      out.write("\n");
      out.write("                                    <span>\n");
      out.write("                                        <form action=\"madhya.jsp\">\n");
      out.write("                                            <input type=\"submit\" name=\"ormadh\" value=\"Madhya Pradesh\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                        </form>\n");
      out.write("                                    </span>\n");
      out.write("                                </li>\n");
      out.write("                                <li>");
      out.write("\n");
      out.write("                                    <span>\n");
      out.write("                                        <form action=\"maharashtra.jsp\">\n");
      out.write("                                            <input type=\"submit\" name=\"ormaha\" value=\"Maharashtra\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                                        </form>\n");
      out.write("                                    </span>\n");
      out.write("                                </li>\n");
      out.write("                                <li class='last'>");
      out.write("\n");
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
      out.write("                ");
      out.write("\n");
      out.write("                <li>");
      out.write("\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"about.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"orabt\" value=\"About\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li>");
      out.write("\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"contact.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"orcon\" value=\"Contact\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li>");
      out.write("\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"comparest.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"orcon\" value=\"Compare 2 States\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"last\">");
      out.write("\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"viewsdata.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"orcon\" value=\"Last 10 Years Data\" style=\"width:200px;text-align:left;\" />\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <div style=\"margin-top:20px;margin-left: 4px;\">\n");
      out.write("                        <h3 class=\"heading\">\n");
      out.write("                            Related News\n");
      out.write("                        </h3>\n");
      out.write("                        ");

                            try {
                                int i=0;
                                DateFormat df = new SimpleDateFormat("dd/MM/yy");
                                Date dateobj = new Date();
                                Document doc1 = Jsoup.connect("http://www.ibef.org/states/punjab.aspx").get();
                                for (Element table1 : doc1.select("ul.newsState"))//right is class name of table
                                {
                                    i++;
                                    Elements tds1 = table1.select("li");
                                   if (tds1.size() > 1 && i==1) 
                                   {
                        
      out.write("\n");
      out.write("                        <ol style=\"color:black;\" class=\"news\">\n");
      out.write("                            <li>");
out.println(tds1.get(0).text());
      out.write("</li>\n");
      out.write("                            <li>");
out.println(" ");
      out.write("</li>\n");
      out.write("                            <li>");
out.println(tds1.get(1).text());
      out.write("</li>\n");
      out.write("                            <li>");
out.println(tds1.get(2).text());
      out.write("</li>\n");
      out.write("                            <li>");
out.println(tds1.get(3).text());
      out.write("</li>\n");
      out.write("                            <li>");
out.println(tds1.get(4).text());
      out.write("</li>\n");
      out.write("                        </ol>\n");
      out.write("                        ");


                                    }
                                }
                            } catch (Exception ex) {
                                out.println("" + ex);
                            }

      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <div style=\"margin-top:10px;margin-left: 4px;\">\n");
      out.write("                        <h3 class=\"heading\">\n");
      out.write("                            Related Links\n");
      out.write("                        </h3>\n");
      out.write("                        ");

                            try 
                            {
                                int i=0;
                                Document doc = Jsoup.connect("https://www.google.co.in/search?newwindow=1&es_sm=93&q=punjab+industries&oq=punjab+industries&gs_l=serp.3..0i7i30l10.1131238.1132118.0.1132388.6.6.0.0.0.0.209.887.1j4j1.6.0....0...1c.1.43.serp..3.3.293.wXSYd-jvuOM").userAgent("Chrome").get();
                                
      out.write("\n");
      out.write("                                <ol style=\"color:black;\" class=\"news\">\n");
      out.write("                                ");

                                for (Element divv : doc.select("li.g"))//right is class name of table
                                {
                                    for(Element table : divv.select("h3.r"))
                                    {
                                        String url=table.child(0).attr("abs:href");
                                        Elements dt = table.select("a");
                                        if(dt.size()>0)
                                        {
                                            if(i<=5)
                                            {
                                                
      out.write("\n");
      out.write("                                                \n");
      out.write("                                                    <li><a href=\"");
      out.print(url);
      out.write('"');
      out.write('>');
out.println(dt.get(0).text());
      out.write("</a></li>\n");
      out.write("                                                \n");
      out.write("                                                ");

                                            }
                                            i++;
                                        }
                                    }
                                }
                                
      out.write("\n");
      out.write("                                </ol>\n");
      out.write("                                ");

                            } 
                            catch (Exception ex) 
                            {
                                out.println("" + ex);
                            }

      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("            </ul>    \n");
      out.write("        </div>    \n");
      out.write("        <div class=\"about-top\">\n");
      out.write("            <div class=\"col span_1_of_about\">\n");
      out.write("                <div class=\"top-box1\">\n");
      out.write("                    <h4>Punjab</h4>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"about-img\" style=\"margin-top:2px;margin-left:20px;\">\n");
      out.write("                    <img style=\"widht:278px; height: 200px;\" src=\"images/punjab.jpg\" alt=\"\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"about-des\" style=\"margin-top:5px;\">\n");
      out.write("                    <p style=\"font-size:0.8525em;color: black;\">\n");
      out.write("                        ");

                            String df;
                            utility ob = new utility();
                            String qry1 = "select def from def where state='punjab'";
                            ResultSet rs1 = ob.DQL(qry1);
                            if (rs1.next()) {
                                df = rs1.getString("def");
                        
      out.write("\n");
      out.write("                        ");
      out.print(df);
      out.write("\n");
      out.write("                        ");

                            }
                        
      out.write("</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"clear\"></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div style=\"float:left;width:65%;margin-top:10px;margin-left:20px;border-radius:5px;\">\n");
      out.write("            <h1 style=\"color:black; font-size: 20px;\">VIEW HISTORICAL DATA</h1>\n");
      out.write("            <form action=\"#\" method=\"get\" class=\"values\">\n");
      out.write("                <table cellspacing=\"4\" cellpadding=\"4\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Select Industry</td>\n");
      out.write("                        <td><select name=\"sta\" class=\"dropdown\">\n");
      out.write("                                <option>Cotton</option>\n");
      out.write("                                <option>Sugar</option>\n");
      out.write("                                <option>Foodgrains</option>\n");
      out.write("                                <option>Rice</option>\n");
      out.write("                            </select></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Select Category </td>\n");
      out.write("                        <td><select name=\"ind\" class=\"dropdown\">\n");
      out.write("                                <option>Area</option>\n");
      out.write("                                <option>Production</option>\n");
      out.write("                                <option>Yield</option>\n");
      out.write("                            </select></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr class=\"blank_row\">\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td><input type=\"submit\" value=\"Submit\" style=\"margin-top: 10px;\" name=\"bt\" class=\"btn btn-primary btn1\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("                ");

                    if (request.getParameter("bt") != null) 
                    {
                      //  categoryDataset = new DefaultCategoryDataset();
                        //in('1960-61','1961-62','1962-63' ,'1963-64','1964-65','1965-66')
                        try 
                        {
                          //  y1 = request.getParameter("yr1");
                          //  y2 = request.getParameter("yr2");
                            st = request.getParameter("sta").toLowerCase();
                            indus = request.getParameter("ind").toLowerCase();
                            String qry = "select year," + indus + " from " + st + " where year between '2005-06' and '2009-10'  and state='Punjab'";
                            utility ut = new utility();
                            ResultSet rs = ut.DQL(qry);
                            while (rs.next()) 
                            {
                                a = Float.parseFloat(rs.getString("" + indus));
                                b = Math.round(a);
                                categoryDataset.setValue(b, "" + st, "" + rs.getString("year"));
                                data1.setValue("" + rs.getString("year"), b);
                            }
                            JFreeChart chart1 = ChartFactory.createPieChart(""+indus, data1, true, true, false);
                            JFreeChart chart = ChartFactory.createBarChart3D("" + st,
                                    "Year",
                                    "" + indus,
                                    categoryDataset,
                                    PlotOrientation.VERTICAL,
                                    true,
                                    true,
                                    false
                            );
                            final ChartRenderingInfo info1 = new ChartRenderingInfo(new StandardEntityCollection());
                            final File file2 = new File("F:/JavaAptech/Netbeans 74 applications/MinorProj/web/" + "pun1" + st + indus +  ".png");
                            img1 = "pun1" + st + indus + ".png";
                            //OutputStream outStream = response.getOutputStream();
                            
                           // ChartUtilities.writeChartAsPNG(outStream, chart1, 600,400);
                            ChartUtilities.saveChartAsPNG(file2, chart1, 450, 300, info1);
                            chart1.setBorderVisible(true);
                            chart1.setBackgroundPaint(Color.white);
                            chart1.getTitle().setPaint(Color.blue);
                            
                            final ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());
                            final File file1 = new File("F:/JavaAptech/Netbeans 74 applications/MinorProj/web/" + "pun" + st + indus + ".png");
                            img = "pun" + st + indus +  ".png";
                           // ChartUtilities.writeChartAsPNG(outStream, chart, 600,400);
                            ChartUtilities.saveChartAsPNG(file1, chart, 600, 400, info);
                            chart.setBorderVisible(true);
                            chart.setBackgroundPaint(Color.white);
                            chart.getTitle().setPaint(Color.blue);
                            CategoryPlot plot = chart.getCategoryPlot();
     
                            plot.setBackgroundPaint(Color.white); 
                        } catch (Exception e) 
                        {
                           out.println(e);
                            
      out.write("\n");
      out.write("                            <script>\n");
      out.write("                                alert(\"Invalid Selection/Data Unaivalable\");\n");
      out.write("                            </script>\n");
      out.write("                            ");

                        }
      out.write("\n");
      out.write("            </form>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div style=\"border:1px solid; float:left;width:70%;margin-top:10px;margin-left:20px;border-radius:5px;height:380px;\">\n");
      out.write("            ");
      out.write("\n");
      out.write("            ");
TimeUnit.SECONDS.sleep(5); 
      out.write(" \n");
      out.write("            <img style=\"margin-left: 15px;margin-top:3px;width:450px;height: 350px;\"  src=");
      out.print(img1);
      out.write(" USEMAP=\"#chart1\"/>\n");
      out.write("            <img style=\"margin-top:3px;margin-left:10px;width: 420px;height: 350px;\"src=");
      out.print(img);
      out.write(" USEMAP=\"#chart\"/>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        ");

            }
        
      out.write("\n");
      out.write("        \n");
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
