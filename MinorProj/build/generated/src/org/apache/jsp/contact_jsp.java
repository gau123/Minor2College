package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.xml.ws.WebServiceRef;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.Scanner;
import beans.contactdet;
import database.utility;

public final class contact_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/www.ezzylearning.com/services/EmailValidationService.asmx.wsdl")
          //  private EmailValidationService service;
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write('\n');
      out.write('\n');
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
      out.write("        ");
      out.write("\n");
      out.write("        <title>Minor Project | Contact </title>\n");
      out.write("        <link href=\"cssfiles/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header\">\t\n");
      out.write("            <div class=\"wrap\"> \n");
      out.write("                <div class=\"header-top\">\n");
      out.write("                    <div class=\"logo\">\n");
      out.write("                        <h1><a href=\"index.html\">Industrial Analysis</a></h1>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clear\"></div> \n");
      out.write("                </div>\n");
      out.write("            </div>\t\n");
      out.write("        </div>\n");
      out.write("        <!------ Slider ------------>\n");
      out.write("        <div class=\"about-banner\">\n");
      out.write("            <div class=\"wrap\">\n");
      out.write("                <div class=\"cssmenu\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"index.jsp\"><span>Home</span></a></li>\n");
      out.write("                        <li><a href=\"about.jsp\"><span>About us</span></a></li>\n");
      out.write("                        <li><a href=\"industry.jsp\"><span>Industry</span></a></li>\n");
      out.write("                        <li><a href=\"states.jsp\"><span>States</span></a></li>\n");
      out.write("                        <li class=\"active\"><a href=\"contact.jsp\"><span>Contact</span></a></li>\n");
      out.write("                        <div class=\"clear\"></div>\n");
      out.write("                    </ul> \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"main\">\n");
      out.write("            <div class=\"wrap\">\n");
      out.write("                <div class=\"section group\">\n");
      out.write("                    <div class=\"col span_2_of_3\">\n");
      out.write("                        <div class=\"contact-form\">\n");
      out.write("                            <h3>Contact Us</h3>\n");
      out.write("                            <form method=\"post\" action=\"contact.jsp\">\n");
      out.write("                                <div>\n");
      out.write("                                    <span><label>Name</label></span>\n");
      out.write("                                    <span><input name=\"username\" type=\"text\" class=\"textbox\" required=\"true\"/></span>\n");
      out.write("                                </div>\n");
      out.write("                                <div>\n");
      out.write("                                    <span><label>E-Mail</label></span>\n");
      out.write("                                    <span><input name=\"useremail\" type=\"text\" class=\"textbox\" required=\"true\"/></span>\n");
      out.write("                                </div>\n");
      out.write("                                <div>\n");
      out.write("                                    <span><label>Mobile</label></span>\n");
      out.write("                                    <span><input name=\"userphone\" type=\"text\" class=\"textbox\" required=\"true\"/></span>\n");
      out.write("                                </div>\n");
      out.write("                                <div>\n");
      out.write("                                    <span><label>Comment</label></span>\n");
      out.write("                                    <span><textarea name=\"usermsg\" required=\"true\"/> </textarea></span>\n");
      out.write("                                </div>\n");
      out.write("                                <div>\n");
      out.write("                                    <input type=\"submit\" name=\"bt\" class=\"btn btn-primary btn1\" value=\"Submit\"/>\n");
      out.write("                                    ");

                                        try 
                                        {
                                            if (request.getParameter("bt") != null) 
                                            {
                                                phno.ValidphnoService service1 = new phno.ValidphnoService();
                                                phno.Validphno port1 = service1.getValidphnoPort();
                                             //   com.ezzylearning.EmailValidationService service = new com.ezzylearning.EmailValidationService();
                                              //  com.ezzylearning.EmailValidationServiceSoap port = service.getEmailValidationServiceSoap();
                                             
                                    
      out.write("\n");
      out.write("                                    ");
      beans.contactdet sample = null;
      synchronized (_jspx_page_context) {
        sample = (beans.contactdet) _jspx_page_context.getAttribute("sample", PageContext.PAGE_SCOPE);
        if (sample == null){
          sample = new beans.contactdet();
          _jspx_page_context.setAttribute("sample", sample, PageContext.PAGE_SCOPE);
          out.write("\n");
          out.write("                                        ");
          org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("sample"), request);
          out.write("\n");
          out.write("                                    ");
        }
      }
      out.write("\n");
      out.write("                                    ");
                                            
                                                String email = sample.getUseremail();
                                                String phn=sample.getUserphone();
                                                boolean result1=port1.validatepno(phn);
                                                //out.println(email);
                                         //   boolean result = port.validateEmail(email);
                                        //    if (result == true) 
                                          //  {
                                                if(result1 == true)
                                                {
                                                    sample.insert();
                                                }
                                                else
                                                {
                                                    
      out.write("\n");
      out.write("                                                    <script>\n");
      out.write("                                                        alert(\"Invalid Phone No\");\n");
      out.write("                                                    </script>\n");
      out.write("                                                    ");

                                                   // out.println("invalid phone");
                                                }
                                                
                                           /* } 
                                            else 
                                            {*/
                                                
      out.write("\n");
      out.write("                                                    <script>\n");
      out.write("                                                        alert(\"Invalid Email Id\");\n");
      out.write("                                                    </script>\n");
      out.write("                                                    ");

                                                //out.println("invalid email");
                                         /*   }*/
                                        }
                                       
                                    }
                                    catch(Exception ex)
                                    {
                                        out.println(ex);
                                    }
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col span_1_of_3\">\n");
      out.write("                        <div class=\"contact_info\">\n");
      out.write("                            <h3 style=\"color:black;\">Find Us Here</h3>\n");
      out.write("                            <div class=\"map\">\n");
      out.write("                                <iframe width=\"100%\" height=\"175\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" \n");
      out.write("                                        src=\"http://maps.google.co.in/maps?newwindow=1&biw=1366&bih=667&um=1&ie=UTF-8&q=jaypee+institute+of+information+technology+noida&fb=1&gl=in&hq=jaypee+institute+of+information+technology&hnear=0x390ce5a43173357b:0x37ffce30c87cc03f,Noida,+Uttar+Pradesh&sa=X&ei=bvUrU-6-PMGCrgeY5oDgAg&ved=0CJABELYD\">\n");
      out.write("                                </iframe><br><small>\n");
      out.write("                                    <a href=\"https://www.google.co.in/maps/search/jaypee+institute+of+information+technology+noida/@28.5167536,77.39813,11z/data=!3m1!4b1!4m5!2m4!3m3!1sjaypee+institute+of+information+technology!2sNoida,+Uttar+Pradesh!3s0x390ce5a43173357b:0x37ffce30c87cc03f\">View Larger Map</a></small>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"company_address\">\n");
      out.write("                            <h3 style=\"color:black;\">Company Information :</h3>\n");
      out.write("                            <p style=\"color:black;\">Jaypee Institute Of Information Technology,</p>\n");
      out.write("                            <p style=\"color:black;\">Sec 62,</p>\n");
      out.write("                            <p style=\"color:black;\">Noida</p>\n");
      out.write("                            <p style=\"color:black;\">Phone:(00) 9958808872</p>\n");
      out.write("                            ");
      out.write("\n");
      out.write("                            <p style=\"color:black;\">Email: <span>helpbusiness@gmail.com</span></p>\n");
      out.write("                            ");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clear\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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
