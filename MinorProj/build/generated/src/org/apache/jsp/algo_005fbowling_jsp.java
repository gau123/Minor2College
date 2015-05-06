package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import database.utility;
import beans.rand;
import java.util.ArrayList;
import beans.batcluster;
import java.sql.*;
import beans.batclusterarraylist;

public final class algo_005fbowling_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            batclusterarraylist.getbatcluster().clear();
            float min;

            try 
            {
                ResultSet rs,rs1;
                utility ut=new utility();
                String state = null;
                float max = -99999999;
                String qry = "select * from sugar where year between '2000-01' and '2013-14'";
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
                              //  out.println(max + "\n");
                                state = rs.getString("state");
                              //  out.println(state+"\n");
                            }
                    }
                   // out.println(max);
                   // out.println(state);
                    rs=ut.DQL(qry);
                    while (rs.next()) 
                    {
                        String fif1 = rs.getString("production");
                        
                        
                            //float fifty1=0;
                            float prod1 = Float.parseFloat(fif1);
                            String nm = rs.getString("state");
                            //setDiff
                            batcluster bc = new batcluster();
                            bc.setName(nm);
                            bc.setType_value(prod1);
                            bc.setDiff(max-prod1);
                            batclusterarraylist.getbatcluster().add(bc);
                            //out.println("chla");
                    }
                    min = max + 1;
                    ArrayList<batcluster> l = batclusterarraylist.getbatcluster();
                    ArrayList l2 = new ArrayList();
                    out.print("dsbdkw" + l.size());
                    int p = 0;
                    int i;
                    int z;
                    int count = 1;
                    for (i = 0; i < 5; i++) 
                    {
                        count++;
                        z = rand.mindiff();
                        out.print("Name:" + l.get(z).getName());
        
      out.write("\n");
      out.write("         <br>\n");
      out.write("        ");
 out.print("Production:" + l.get(z).getType_value()); 
      out.write("\n");
      out.write("<br>\n");
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
