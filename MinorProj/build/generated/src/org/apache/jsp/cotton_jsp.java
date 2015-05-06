package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import beans.batclusterarraylist;
import beans.batcluster;
import java.util.ArrayList;
import beans.rand;
import java.util.concurrent.TimeUnit;
import org.jsoup.select.Elements;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Document;
import org.jsoup.Jsoup;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.sql.*;
import database.utility;
import java.util.Date;
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

public final class cotton_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            //com.kushal.utilities
            String qry;
            String y1, y2;
            String indus;
            float a;
            int b;
            final DefaultPieDataset data1 = new DefaultPieDataset();
            DefaultCategoryDataset categoryDataset = new DefaultCategoryDataset();
            String st;
            String img, img1;
        
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
      out.write("        <title>Minor Project | Industry :: Cotton</title>\n");
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
      out.write("            h5.heading \n");
      out.write("            {\n");
      out.write("                font-family:futura_md_btmedium; \n");
      out.write("                font-size:16px; \n");
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
      out.write("                padding-bottom:8px; \n");
      out.write("                line-height:14px;\n");
      out.write("            }\n");
      out.write("            ol.leading\n");
      out.write("            {\n");
      out.write("                margin-top:10px; \n");
      out.write("                height:173px;\n");
      out.write("            }\n");
      out.write("            ol.leading li\n");
      out.write("            {\n");
      out.write("                font-size:14px; \n");
      out.write("                padding-bottom:8px; \n");
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
      out.write("            .featuresBox {margin-top:10px; float:left;}\n");
      out.write("\n");
      out.write("            ul.features{float:right; width:165px; margin-left:10px;}\n");
      out.write("            ul.features li{font-size:11px; padding-bottom:6px; line-height:13px;}\n");
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
      out.write("\n");
      out.write("        <link href=\"cssfiles/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <link rel='stylesheet' type='text/css' href='cssfiles/stylesmenu.css' />\n");
      out.write("\n");
      out.write("        <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
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
      out.write("\n");
      out.write("        <div id='cssmenu' style='height:1000px; float:left;'>\n");
      out.write("            <ul>\n");
      out.write("                <li>");
      out.write("\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"industry.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"cthome\" value=\"Home\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li class='has-sub active'><a href='#'><span>Industries</span></a>\n");
      out.write("                    <ul>\n");
      out.write("                        <li class=\"active\">");
      out.write("\n");
      out.write("                            <span>\n");
      out.write("                                <form action=\"#\">\n");
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
      out.write("                ");
      out.write("\n");
      out.write("                <li>\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"about.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"ctabt\" value=\"About\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
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
      out.write("                <li>\n");
      out.write("                    <span>\n");
      out.write("                        <form action=\"compindus.jsp\">\n");
      out.write("                            <input type=\"submit\" name=\"ctcon\" value=\"Compare 2 Industries\" style=\"width:200px;text-align:left;\"/>\n");
      out.write("                        </form>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("\n");
      out.write("                    <div style=\"margin-top:20px;\">\n");
      out.write("                        <h3 class=\"heading\">\n");
      out.write("                            Relted News\n");
      out.write("                        </h3>\n");
      out.write("                        ");

                            try {
                                int i = 0;
                                DateFormat df = new SimpleDateFormat("dd/MM/yy");
                                Date dateobj = new Date();
                                Document doc1 = Jsoup.connect("http://www.ibef.org/industry/textiles.aspx").get();
                                for (Element table1 : doc1.select("ul.newsPharma"))//right is class name of table
                                {
                                    i++;
                                    Elements tds1 = table1.select("li");
                                    if (tds1.size() > 1 && i == 1) {

                        
      out.write("\n");
      out.write("                        <ol style=\"color:black;\" class=\"news\">\n");
      out.write("                            <li>");
out.println(tds1.get(0).text());
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
      out.write("                    <div style=\"margin-top: 20px\">\n");
      out.write("                        <h3 class=\"heading\">\n");
      out.write("                            Related Links\n");
      out.write("                        </h3>\n");
      out.write("                        <ol class=\"news\">\n");
      out.write("                            ");

                                try 
                                {
                                    int i = 0;
                                    Document doc = Jsoup.connect("https://www.google.co.in/search?newwindow=1&es_sm=93&q=cotton+industry+in+india&oq=cotton+indus&gs_l=serp.3.0.0l10.356512.359722.0.361078.12.11.0.1.1.0.249.1608.2j6j3.11.0....0...1c.1.43.serp..3.9.981.jNQaVmnKUmo").userAgent("Chrome").get();
                                    for (Element divv : doc.select("li.g"))//right is class name of table
                                    {
                                       // out.println("aya");
                                        for (Element table : divv.select("h3.r")) 
                                        {
                                            String url = table.child(0).attr("abs:href");
                                            Elements dt = table.select("a");
                                            if (dt.size() > 0) 
                                            {
                                                if (i <= 5) 
                                                {
                            
      out.write("\n");
      out.write("                            <li><a href=\"");
      out.print(url);
      out.write('"');
      out.write('>');
out.println(dt.get(0).text());
      out.write("</a></li>\n");
      out.write("                                ");

                                                    }
                                                    i++;
                                                }
                                            }
                                        }
                                    } catch (Exception ex) 
                                    {
                                        out.println(ex);
                                    }
                                
      out.write("\n");
      out.write("                        </ol>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div>    \n");
      out.write("        <div class=\"about-top\">\n");
      out.write("            <div class=\"col span_1_of_about\">\n");
      out.write("                <div class=\"top-box1\">\n");
      out.write("                    <h4>Cotton Industry</h4>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"about-img\" style=\"margin-top:2px;margin-left:20px;\">\n");
      out.write("                    <img src=\"images/cott.jpg\" alt=\"\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"about-des\" style=\"margin-top:5px;\">\n");
      out.write("                    <p style=\"font-size:0.8525em;color: black;\">The Cotton industry in India traditionally, after agriculture,\n");
      out.write("                        is the only industry that has generated huge employment for both skilled and unskilled labor \n");
      out.write("                        in textiles. The textile industry continues to be the second largest employment generating \n");
      out.write("                        sector in India. It offers direct employment to over 35 million in the country.The share of \n");
      out.write("                        textiles in total exports was 11.04% during April–July 2010, as per the Ministry of Textiles. \n");
      out.write("                        During 2009-2010, Indian textiles industry was pegged at US$55 billion, 64% of which services \n");
      out.write("                        domestic demand.In 2010, there were 2,500 textile weaving factories and 4,135 textile finishing\n");
      out.write("                        factories in all of India. \n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"clear\"></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("                        <div style=\"float:right;width:160px;\">\n");
      out.write("               <h5 class=\"heading\">\n");
      out.write("                            Leading States\n");
      out.write("                        </h5>    \n");
      out.write("                            <ol class=\"leading\">\n");
      out.write("                     ");

            batclusterarraylist.getbatcluster().clear();
            float min;

            try 
            {
                ResultSet rs,rs1;
                utility ut=new utility();
                String state = null;
                float max = -99999999;
                String qry = "select * from sugar where year = '2013-14'";
                rs = ut.DQL(qry);
               
                float prod = 0;
                    while (rs.next()) 
                    {
                        String fif = rs.getString("production");
                        //  out.println(fif);
                        
                            
                            float fifty=Float.parseFloat(fif);
                            if (max < fifty) 
                            {
                                max = fifty;
                                state = rs.getString("state");
                            }
                    }
                    rs=ut.DQL(qry);
                    while (rs.next()) 
                    {
                        String fif1 = rs.getString("production");
                        float prod1 = Float.parseFloat(fif1);
                        String nm = rs.getString("state");
                        batcluster bc = new batcluster();
                        bc.setName(nm);
                        bc.setType_value(prod1);
                        bc.setDiff(max-prod1);
                        batclusterarraylist.getbatcluster().add(bc);
                    }
                    min = max + 1;
                    ArrayList<batcluster> l = batclusterarraylist.getbatcluster();
                    ArrayList l2 = new ArrayList();
                    int p = 0;
                    int i;
                    int z;
                    int count = 1;
                    for (i = 0; i < 5; i++) 
                    {
                        count++;
                        z = rand.mindiff();
                        //out.print("Name:" + l.get(z).getName());
        
      out.write("\n");
      out.write("        <li>\n");
      out.write("            ");
out.print(l.get(z).getName());
      out.write("\n");
      out.write("        </li>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("        ");

                       l.remove(z);
                       
                    }
                   // out.print("coumnt:" + count);
                

            } 
            catch (Exception e) 
            {
                out.println(e);
            }
        
      out.write("\n");
      out.write("                            </ol>\n");
      out.write("</div>               \n");
      out.write("        <div style=\"float:left;width:65%;margin-top:10px;margin-left:20px;border-radius:5px;\">\n");
      out.write("            <h1 style=\"color:black; font-size: 20px;\">VIEW HISTORICAL DATA</h1>\n");
      out.write("            <form action=\"#\" class=\"values\" style=\"margin-top:10px;\">\n");
      out.write("                <table cellspacing=\"4\" cellpadding=\"4\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Select Category</td>\n");
      out.write("                        <td><select name=\"ind\" class=\"dropdown\">\n");
      out.write("                                <option>Category</option>\n");
      out.write("                                <option>Area</option>\n");
      out.write("                                <option>Production</option>\n");
      out.write("                                <option>Yield</option>\n");
      out.write("                            </select></td>\n");
      out.write("                        \n");
      out.write("                    </tr>\n");
      out.write("                    <tr class=\"blank_row\">\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Select State </td>\n");
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
      out.write("                        \n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><input type=\"submit\" value=\"Submit\" style=\"margin-top: 10px;\" name=\"bt\" class=\"btn btn-primary btn1\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("                ");

                    if (request.getParameter("bt") != null) {
                        categoryDataset = new DefaultCategoryDataset();
                        try {
                            
                            st = request.getParameter("sta");
                            indus = request.getParameter("ind").toLowerCase();
                            String qry = "select year," + indus + " from cotton where year between '2007-08' and '2013-14'  and state='" + st + "'";
                            // out.println(qry);
                            utility ut = new utility();
                            ResultSet rs = ut.DQL(qry);
                            while (rs.next()) {
                                a = Float.parseFloat(rs.getString("" + indus));
                                b = Math.round(a);
                                categoryDataset.setValue(b, "" + st, "" + rs.getString("year"));
                                data1.setValue("" + rs.getString("year"), b);
                            }
                            JFreeChart chart1 = ChartFactory.createPieChart("" + indus, data1, true, true, false);
                            JFreeChart chart = ChartFactory.createBarChart3D("" + st, // Title
                                    "Year", // X-Axis label
                                    "" + indus,// Y-Axis label
                                    categoryDataset, // Dataset
                                    PlotOrientation.VERTICAL,
                                    true, // Show legend
                                    true,
                                    false
                            );
                            final ChartRenderingInfo info1 = new ChartRenderingInfo(new StandardEntityCollection());
                            final File file2 = new File("F:/JavaAptech/Netbeans 74 applications/MinorProj/web/" + "cot" + st + indus + ".png");
                            img1 = "cot" + st + indus + ".png";
                            ChartUtilities.saveChartAsPNG(file2, chart1, 450, 300, info1);
                            chart1.setBorderVisible(true);

                            final ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());
                            final File file1 = new File("F:/JavaAptech/Netbeans 74 applications/MinorProj/web/" + st + indus  + ".png");
                            img = st + indus + ".png";
                            ChartUtilities.saveChartAsPNG(file1, chart, 600, 400, info);
                            // chart.setBorderVisible(true);
                        } catch (Exception e) {
                
      out.write("\n");
      out.write("                <script>\n");
      out.write("                    alert(\"Invalid Input/Data Unavailable\");\n");
      out.write("                </script>\n");
      out.write("                ");

                        out.println(e);
                    }
      out.write("\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        <div style=\"border:1px solid; float:left;width:70%;margin-top:10px;margin-left:20px;border-radius:5px;height:380px;\">\n");
      out.write("            ");
TimeUnit.SECONDS.sleep(5); 
      out.write(" \n");
      out.write("            <img style=\"margin-left: 15px;margin-top:3px;width:450px;height: 350px;\"  src=");
      out.print(img1);
      out.write(" USEMAP=\"#chart1\"/>\n");
      out.write("            <img style=\"margin-top:3px;margin-left:10px;width: 420px;height: 350px;\" src=");
      out.print(img);
      out.write(" USEMAP=\"#chart\"/>\n");
      out.write("        </div>\n");
      out.write("        ");

            }
   //my ob=new my();

      out.write("\n");
      out.write("\n");
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
