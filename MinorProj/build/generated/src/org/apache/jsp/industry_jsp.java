package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import org.jsoup.nodes.Document;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import beans.*;
import java.util.ArrayList;
import beans.yldcluster;
import database.utility;
import java.sql.ResultSet;
import beans.yldclusterarraylist;

public final class industry_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      out.write("        ");
      out.write("\n");
      out.write("        <title>Minor Project :: Industry About</title>\n");
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
      out.write("    \n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <style>\n");
      out.write("             h3.heading \n");
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
      out.write("            ol.news\n");
      out.write("            {\n");
      out.write("                margin-top:10px; \n");
      out.write("                height:173px;\n");
      out.write("            }\n");
      out.write("            ol.news li\n");
      out.write("            {\n");
      out.write("                font-size:13px; \n");
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
      out.write("        </style>\n");
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
      out.write("        <!------End Slider ------------>\n");
      out.write("\n");
      out.write("        <div id='cssmenu' style='height:600px; float:left;'>\n");
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
      out.write("        <div class=\"about\">\n");
      out.write("            <div class=\"about-top\">\n");
      out.write("                <div class=\"col span_1_of_about\">\n");
      out.write("                    <h3 style=\"margin-left:20px;color:black;\">About</h3>\n");
      out.write("                    <div class=\"about-img\" style=\"margin-top:10px;margin-left:20px;\">\n");
      out.write("                        <img src=\"images/ind.jpg\" alt=\"\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"about-des\" style=\"margin-top:10px;\">\n");
      out.write("                        <p style=\"color:black;\">The Indian economy has survived the global downturn very well. It has posted one of the highest rates of economic \n");
      out.write("                            growth in the world despite other major industrial giants lagging behind.The strongest growth coming from the manufacturing and construction sector \n");
      out.write("                            and the weakest section being agriculture. The strong rate of economic growth boosts prospects for the Indian Rupee in the years to come. The drawback\n");
      out.write("                            of such a rapid economic expansion is a rise in inflation.The economy of India is the eleventh largest economy in the world by nominal GDP. Post \n");
      out.write("                            independence the country went into a fast paced economic growth which was further fuelled by the free market principles started in the 1990’s which \n");
      out.write("                            welcomed foreign investments.\n");
      out.write("                        </p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clear\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("         <div style=\"width:581px; float:left; margin-left:20px;float: left;\">\n");
      out.write("            <h3 class=\"heading\">\n");
      out.write("                News\n");
      out.write("            </h3>\n");
      out.write("            <div style=\"float:left; width:251px;margin-left: 10px;\">\n");
      out.write("            \n");
      out.write("            ");

                try 
                {
                    DateFormat df = new SimpleDateFormat("dd/MM/yy");
                    Date dateobj = new Date();
                    Document doc1 = Jsoup.connect("http://www.ibef.org/industry.aspx").get();
                    String s1="",s2="",s3="",s4="";
                    int j=0;
                    String[] st1=new String[100];
                    String[] st=new String[100];
                    for (Element bx : doc1.select("div.box231")) 
                   {
                       Elements tds2 = bx.select("h6");
                       if(tds2.size()>1)
                       {
                           st[3]=tds2.get(0).text();
                           st[4]=tds2.get(1).text();
                           st[5]=tds2.get(2).text();
                       }
                   }
                    for (Element box : doc1.select("div.box231")) 
                   {
                       Elements tds2 = box.select("h3.industryHeading");
                       st[0]=tds2.get(0).text();
                       st1=st[0].split("More");
                    for (Element table1 : box.select("ul.industryText"))//right is class name of table
                    {
                       Elements tds1 = table1.select("li");
                        
      out.write("\n");
      out.write("                        \n");
      out.write("                            <h6 class=\"stateName\">");
      out.print(st1[0].toUpperCase());
      out.write("</h6>\n");
      out.write("                        <ol class=\"news\">\n");
      out.write("                        ");

                        for (int i = 0; i < tds1.size(); i++) 
                            {
                    
      out.write("\n");
      out.write("\n");
      out.write("                            <li><a href=\"#\">");
out.println(tds1.get(i).text());
      out.write("</a></li>\n");
      out.write("\n");
      out.write("\n");
      out.write("                ");


                    }
                        
      out.write("\n");
      out.write("                        </ol>\n");
      out.write("                        ");

                j++;
                if(j>0)
                {
                    
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div style=\"float:left; width:265px; margin-left: 36px;\" >\n");
      out.write("                    ");

                }
                        }
                    }
                    

                } catch (Exception ex) {
                    out.println("" + ex);
                }
            
      out.write("    \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>        \n");
      out.write("        <div style=\"float:left; width:295px; margin-left: 36px;\">\n");
      out.write("                <h3 class=\"heading\">\n");
      out.write("                    Related Links\n");
      out.write("                </h3>\n");
      out.write("                <ul>\n");
      out.write("                    ");

                                try 
                                {
                                    int i = 0;
                                    Document doc = Jsoup.connect("https://www.google.co.in/search?newwindow=1&q=indian+industries&oq=indian+indus&gs_l=serp.3.1.0l10.87353.91457.0.92754.18.15.3.0.0.0.221.1805.7j3j5.15.0....0...1c.1.43.serp..3.15.1185.4YpaZrt_TpY").userAgent("Chrome").get();
                                    
      out.write("\n");
      out.write("                                        <ol class=\"news\">\n");
      out.write("                                        ");

                                    for (Element divv : doc.select("li.g"))//right is class name of table
                                    {
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
                                    
      out.write("\n");
      out.write("                                        </ol>\n");
      out.write("                                        ");

                                    } catch (Exception ex) 
                                    {
                                        out.println(ex);
                                    }
                                
      out.write("\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
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
