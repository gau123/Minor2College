package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.util.Date;
import org.jsoup.select.Elements;
import org.jsoup.nodes.Element;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


        String urll;
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/htmlfiles/links.html");
    _jspx_dependants.add("/htmlfiles/logo.html");
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
      out.write("<!DOCTYPE HTML>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Minor Project</title>\n");
      out.write("        \n");
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
      out.write("            ul.news\n");
      out.write("            {\n");
      out.write("                margin-top:10px; \n");
      out.write("                height:173px;\n");
      out.write("                color:#cc6633;\n");
      out.write("            }\n");
      out.write("            ul.news li\n");
      out.write("            {\n");
      out.write("                font-size:11px; \n");
      out.write("                padding-bottom:8px; \n");
      out.write("                line-height:14px;\n");
      out.write("            }\n");
      out.write("            ul.news li a\n");
      out.write("            {\n");
      out.write("                color:#cc6633;\n");
      out.write("            }\n");
      out.write("            ul.news li a:hover\n");
      out.write("            {\n");
      out.write("                color:#666; \n");
      out.write("            }\n");
      out.write("            h3.ind a \n");
      out.write("            {\n");
      out.write("                color:black;\n");
      out.write("            }\n");
      out.write("            a.indus div h3:hover\n");
      out.write("            {\n");
      out.write("                color: black;\n");
      out.write("            }\n");
      out.write("            a.indus div:hover\n");
      out.write("            {\n");
      out.write("                color:yellowgreen;\n");
      out.write("            }\n");
      out.write("            #slideshome {\n");
      out.write("width: 740px;\n");
      out.write("height: 300px;\n");
      out.write("float: left;\n");
      out.write("position: relative;\n");
      out.write("z-index: 0;\n");
      out.write("}\n");
      out.write("            .featuresBox {margin-top:10px; float:left;}\n");
      out.write("\n");
      out.write("            ul.features{float:right; width:165px; margin-left:10px;}\n");
      out.write("            ul.features li{font-size:11px; padding-bottom:6px; line-height:13px;}\n");
      out.write("        </style>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(window).load(function()\n");
      out.write("            {\n");
      out.write("                $('#slider').nivoSlider();\n");
      out.write("            });\n");
      out.write("        </script>\n");
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
      out.write("        <title>TODO supply a title</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <link href=\"cssfiles/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>\r\n");
      out.write("<link href=\"cssfiles/slider.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\"/>\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"header\">\t\r\n");
      out.write("  <div class=\"wrap\"> \r\n");
      out.write("\t<div class=\"header-top\">\r\n");
      out.write("\t\t <div class=\"logo\">\r\n");
      out.write("\t\t\t <h1><a href=\"index.jsp\">INDUSTRIAL ANALYSIS</a></h1>\r\n");
      out.write("\t\t </div>\r\n");
      out.write("\t  <!-- <div id=\"text-4\" class=\"visible-all-devices header-text \">\t\t\t\r\n");
      out.write("\t    \t<div class=\"textwidget\">Gaurav Singhal,<br>\r\n");
      out.write("\t\t\t\tJIIT.<br>\r\n");
      out.write("\t\t\t\t<br>\r\n");
      out.write("\t\t\t\tContact Us On <br>\r\n");
      out.write("\t\t\t\t<h5 class=\"phone\">+91 9873703007</h5></div>\r\n");
      out.write("\t\t</div>-->\r\n");
      out.write("\t\t <div class=\"clear\"></div> \r\n");
      out.write("\t   </div>\r\n");
      out.write("   </div>\t\r\n");
      out.write("</div>\r\n");
      out.write("        \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\n");
      out.write("        <!------ Slider ------------>\n");
      out.write("        <div class=\"banner\" style=\"height:22px;\">\n");
      out.write("            <div class=\"wrap\" >\n");
      out.write("                <div class=\"cssmenu\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li class=\"active\"><a href=\"index.jsp\"><span>Home</span></a></li>\n");
      out.write("                        <li><a href=\"about.jsp\"><span>About us</span></a></li>\n");
      out.write("                        <li><a href=\"industry.jsp\"><span>Industry</span></a></li>\n");
      out.write("                        <li class=\"has-sub\"><a href=\"states.jsp\"><span>States</span></a></li>\n");
      out.write("                        <li class=\"last\"><a href=\"contact.jsp\"><span>Contact</span></a></li>\n");
      out.write("                        <div class=\"clear\"></div>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                ");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("        </div>\n");
      out.write("                <div>\n");
      out.write("                    ");
      out.write("\n");
      out.write("                    <div style=\"width:40%;\">\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div class=\"main\">\n");
      out.write("            <div class=\"wrap\">\n");
      out.write("                <div class=\"content-top\">\n");
      out.write("                    <div class=\"top-box\">\n");
      out.write("                         <h2 style=\"color: black;\">Industrialization in India</h2>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"section group\">\n");
      out.write("                        <div class=\"col_1_of_5 span_1_of_5 \">\n");
      out.write("                            <div class=\"grid_img\" >\n");
      out.write("                                <img src=\"images/cot.jpg\"  alt=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <h3 style=\"color: black;margin-left: 30px;\" class=\"ind\"><a href=\"cotton.jsp\">Cotton Industry</a></h3>\n");
      out.write("                            <p style=\"color: black;\">Only industry after agriculture that has generated huge employment for both skilled and unskilled labor</p>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col_1_of_5 span_1_of_5\">\n");
      out.write("                            <div class=\"grid_img\">\n");
      out.write("                                <img src=\"images/sugar.jpg\" alt=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <h3 style=\"color: black;margin-left: 30px;\" class=\"ind\"><a href=\"sugar.jsp\">Sugar Industry</a></h3>\n");
      out.write("                            <p style=\"color: black;\">India ranked as No.1 in this industry in 7 over past 10 years..</p>\n");
      out.write("                        </div>\n");
      out.write("                         <div class=\"col_1_of_5 span_1_of_5\">\n");
      out.write("                            <div class=\"grid_img\">\n");
      out.write("                                <img src=\"images/tour.jpg\" alt=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                             <h3 style=\"color: black;\" class=\"ind\"><a href=\"index.jsp\" >Tourism Industry</a></h3>\n");
      out.write("                            <p style=\"color: black;\">Pride of India and showcase of Indian natural and man made beauty..</p>\n");
      out.write("</div>\n");
      out.write("                        <div class=\"col_1_of_5 span_1_of_5\">\n");
      out.write("                            <div class=\"grid_img\">\n");
      out.write("                                <img src=\"images/agri.jpg\" alt=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <h3 style=\"color: black;\" class=\"ind\"><a href=\"agriculture.jsp\">Agriculture Industry</a></h3>\n");
      out.write("                            <p style=\"color: black;\">Largest industry that has created employment for both skilled and unskilled labour..</p>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col_1_of_5 span_1_of_5\">\n");
      out.write("                            <div class=\"grid_img\">\n");
      out.write("                                <img src=\"images/rice1.jpg\" alt=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <h3 style=\"color: black;margin-left: 45px;\" class=\"ind\"><a href=\"rice.jsp\">Rice Industry</a></h3>\n");
      out.write("                            <p style=\"color: black;margin-left: 20px;\">Rice production in India is an important part of the national economy...</p>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"clear\"></div>\n");
      out.write("                    </div>\n");
      out.write("</div>\n");
      out.write("                <div class=\"content-bottom\">\n");
      out.write("                    <div class=\"top-box\">\n");
      out.write("                        <h2 style=\"color: black;\">Operations</h2>\n");
      out.write("                        <hr>\n");
      out.write("                        <p style=\"color:black;\">This is a business website which help users to choose the business best suitable for them and gives them the most advantage. This site also predicts the future grwoth of a particular business. </p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"section group\">\n");
      out.write("                        <div class=\"col_1_of_4 span_1_of_4\">\n");
      out.write("                            <div class=\"hover_img\">\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"viewdata.jsp\" class=\"indus\"><div class=\"caption\" onmouseover=\"this.style.background='#E4E24F';\" onmouseout=\"this.style.background='#2f292b';\">\n");
      out.write("                                <h3 style=\"color: white;\">VIEW DATA</h3><br>\n");
      out.write("                                <hr class=\"hr\">\n");
      out.write("                                <P> Explore last 10 years data.. <P>\n");
      out.write("                            </div></a>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        <div class=\"col_1_of_4 span_1_of_4\">\n");
      out.write("                            <div class=\"hover_img\">\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"comparest.jsp\" class=\"indus\"><div class=\"caption\" onmouseover=\"this.style.background='#E4E24F';\" onmouseout=\"this.style.background='#2f292b';\">\n");
      out.write("                            \n");
      out.write("                                <h3 style=\"color: white;\">COMPARISON OF STATES </h3><br>\n");
      out.write("                                <hr class=\"hr\">\n");
      out.write("                                <p>Compare two states within a Industry... </p>\n");
      out.write("                                </div></a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col_1_of_4 span_1_of_4\">\n");
      out.write("                            <div class=\"hover_img\">\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"prediction.jsp\" class=\"indus\"><div class=\"caption\" onmouseover=\"this.style.background='#E4E24F';\" onmouseout=\"this.style.background='#2f292b';\">\n");
      out.write("                            \n");
      out.write("                                <h3 style=\"color: white;\">DATA FORECASTING</h3><br>\n");
      out.write("                                <hr class=\"hr\">\n");
      out.write("                                <p>Forecast future values.. </p>\n");
      out.write("                            </div>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col_1_of_4 span_1_of_4\">\n");
      out.write("                            <div class=\"hover_img\">\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"trend.jsp\" class=\"indus\"><div class=\"caption\" onmouseover=\"this.style.background='#E4E24F';\" onmouseout=\"this.style.background='#2f292b';\">\n");
      out.write("                            \n");
      out.write("                                <h3 style=\"color: white;\">GRAPHICAL OBSERVATION</h3><br>\n");
      out.write("                                <hr class=\"hr\">\n");
      out.write("                                <p>Observe the growth of data graphically.. </p>\n");
      out.write("                            </div>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"clear\"></div>\n");
      out.write("                    </div>\n");
      out.write("</div>\n");
      out.write("                <div style=\"width:245px; margin-left: 30px;font-size: 14px;float:left;\">\n");
      out.write("                <h3 class=\"heading\">\n");
      out.write("                    News\n");
      out.write("                </h3>\n");
      out.write("                    <ul class=\"news\">\n");
      out.write("                ");

                    try 
                    {
                        int i=0;
                        DateFormat df = new SimpleDateFormat("dd/MM/yy");
                        Date dateobj = new Date();
                        Document doc1 = Jsoup.connect("http://www.ibef.org/").get();
                        for (Element table1 : doc1.select("ul.news"))//right is class name of table
                        {
                            for(Element lii : table1.select("li"))
                            {
                                urll=lii.child(0).attr("abs:href");
                                Elements dt = lii.select("a");
                                if(dt.size()>0)
                                {
                                    if(i<=5)
                                    {
                                        
      out.write("\n");
      out.write("                                        <li><a href=\"news.jsp?link=");
      out.print(urll);
      out.write("\">\n");
      out.write("                                                ");
out.println(dt.get(0).text());
      out.write("\n");
      out.write("                                            </a>\n");
      out.write("                                        </li>\n");
      out.write("                                        ");

                                    }
                                    i++;
                                }
                            }
                        }
                    }
                    catch (Exception ex) 
                    {
                        out.println(""+ex);
                    }
                
      out.write("\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <div style=\"width:245px; margin-left: 40px;font-size: 14px;float: left;\">\n");
      out.write("                <h3 class=\"heading\">\n");
      out.write("                    Features\n");
      out.write("                </h3>\n");
      out.write("                ");

                    try {
                        
                        DateFormat df = new SimpleDateFormat("dd/MM/yy");
                        Date dateobj = new Date();
                        Document doc1 = Jsoup.connect("http://www.ibef.org/").get();
                        
      out.write("\n");
      out.write("                        <ul class=\"news\">\n");
      out.write("                    <li>");
out.println(df.format(dateobj));
      out.write("</li>\n");
      out.write("                        ");

                        for (Element table1 : doc1.select("ul.features"))//right is class name of table
                        {
                           // System.out.println("aaaa");
                            Elements tds1 = table1.select("li");
                            Elements td2=table1.select("p");
                            if (tds1.size() > 1) 
                            {
                                
                
      out.write("\n");
      out.write("                \n");
      out.write("                    <li>");
out.println(tds1.get(0).text());
      out.write("</li>\n");
      out.write("                    <li>");
out.println(tds1.get(1).text());
      out.write("</li>\n");
      out.write("                    <li>");
out.println(tds1.get(2).text());
      out.write("</li>\n");
      out.write("                ");

                               
                            }
                        }
                        
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                        ");

                    } 
                    catch (Exception ex) 
                    {
                        out.println(""+ex);
                    }
                
      out.write("\n");
      out.write("            </div>\n");
      out.write("                 <div style=\"width:245px; margin-left: 40px;font-size: 14px;float: left;\">\n");
      out.write("                <h3 class=\"heading\">\n");
      out.write("                    Updates\n");
      out.write("                </h3>   \n");
      out.write("                <div>\n");
      out.write("                    <ul class=\"news\">\n");
      out.write("                        <li><a href=\"viewdata.jsp\">View Data : Explore our data for free</a></li>\n");
      out.write("                        <li><a href=\"comparest.jsp\">Compare States : Compare 2 states within a Industry</a></li>\n");
      out.write("                        <li><a href=\"compindus.jsp\">Compare Industry : Compare 2 Industries within a State</a></li>\n");
      out.write("                        <li><a href=\"industry.jsp\">Historical Data : View historical data of specified category</a></li>\n");
      out.write("                        <li><a href=\"prediction.jsp\">Forecasted Data : View forecasted data for next year</a></li>\n");
      out.write("                        <li><a href=\"trend.jsp\">Trend Analysis : Analyze data to find trends of various industries</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div style=\"width:245px; margin-left: 40px;font-size: 14px; float: left;\">\n");
      out.write("                <h3 class=\"heading\">\n");
      out.write("                    Important Links\n");
      out.write("                </h3>\n");
      out.write("                <ul class=\"news\">\n");
      out.write("        ");

            try
    { 
        int i=0;
        Document doc = Jsoup.connect("https://www.google.co.in/search?newwindow=1&q=indian+industry+analysis&oq=indian+industry+an&gs_l=serp.3.0.0l6j0i22i30l4.26790.33454.0.34589.24.19.2.3.3.0.257.2598.5j12j2.19.0....0...1c.1.42.serp..4.20.1796.arLoyCFxGhA").userAgent("Chrome").get();
        
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
      out.write("                           <li><a href=\"");
      out.print(url);
      out.write('"');
      out.write('>');
out.println(dt.get(0).text());
      out.write("</a></li>\n");
      out.write("                           ");

                           }
                           
                           i++;
                       }
                       
                   }


                }
        
         
    }
    catch(Exception ex)
    {
        out.println(ex); 
    }
            
      out.write("\n");
      out.write("            </ul>\n");
      out.write("</div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("            \n");
      out.write("        \n");
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
