package database;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import database.utility;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartRenderingInfo;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.entity.StandardEntityCollection;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;

/**
 *
 * @author gaurav
 */
@WebServlet(urlPatterns = {"/Chart"})
public class Chart extends HttpServlet {
private static final int DEFAULT_BUFFER_SIZE = 10240;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String qry;
            String y1, y2;
            String indus;
            float a;
            int b;
            DefaultCategoryDataset categoryDataset = new DefaultCategoryDataset();
            String st;
            String img;
            categoryDataset = new DefaultCategoryDataset();
            //in('1960-61','1961-62','1962-63' ,'1963-64','1964-65','1965-66')
            try 
            {
                response.setContentType("image/png");
                y1 = request.getParameter("yr1");
                y2 = request.getParameter("yr2");
                st = request.getParameter("sta").toLowerCase();
                indus = request.getParameter("ind").toLowerCase();
                qry = "select year," + indus + " from " + st + " where year between '" + y1 + "' and '" + y2 + "'  and state='Uttar Pradesh'";
               // out.println(qry);
                utility ut = new utility();
                ResultSet rs = ut.DQL(qry);
                while (rs.next()) {
                    a = Float.parseFloat(rs.getString("" + indus));
                    b = Math.round(a);
                  //  out.println(b);
                                // out.println("data aaya");
                    //  out.println(Integer.parseInt(rs.getString("production")));
                    categoryDataset.setValue(b, "" + st, "" + rs.getString("year"));
                }
                JFreeChart chart = ChartFactory.createBarChart3D("" + st, // Title
                        "Year", // X-Axis label
                        "" + indus,// Y-Axis label
                        categoryDataset, // Dataset
                        PlotOrientation.VERTICAL,
                        true, // Show legend
                        true,
                        false
                );
                final ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());
                final File file1 = new File("F:/JavaAptech/Netbeans 74 applications/MinorProj/web/" + "up" + st + indus + y1 + y2 + ".png");
                img = "up" + st + indus + y1 + y2 + ".png";
                // out.println(img);
               ServletContext servletContext=null;
                String contentType = servletContext.getMimeType(file1.getName());

        // Init servlet response.
        response.reset();
        response.setBufferSize(DEFAULT_BUFFER_SIZE);
        response.setContentType(contentType);
        response.setHeader("Content-Length", String.valueOf(file1.length()));
        response.setHeader("Content-Disposition", "inline; filename=\"" + file1.getName() + "\"");
        BufferedInputStream input = null;
        BufferedOutputStream output = null;
        
        input = new BufferedInputStream(new FileInputStream(file1), DEFAULT_BUFFER_SIZE);
            output = new BufferedOutputStream(response.getOutputStream(), DEFAULT_BUFFER_SIZE);

            // Write file contents to response.
            byte[] buffer = new byte[DEFAULT_BUFFER_SIZE];
            int length;
            while ((length = input.read(buffer)) > 0) {
                output.write(buffer, 0, length);
            }
           // response.setContentType("image/png");
           //     OutputStream ot = response.getOutputStream();
                
	//ChartUtilities.writeChartAsPNG(ot, chart, 600, 400);
    // HttpSession sesion=request.getSession();
          //      sesion.setAttribute("mychart", chart);
              // ChartUtilities.saveChartAsPNG(file1, chart, 600, 400, info);
               // ChartUtilities.writeImageMap(ot, file1, info);
            //   chart.setBorderVisible(true);
            //  HttpSession session;
              //session.setAttribute(, ot);
                
          //    request.setAttribute(img, chart);
           //ServletContext ctx = this.getServletContext();
             RequestDispatcher dispatcher = request.getRequestDispatcher("/up.jsp");
            dispatcher.forward(request, response);     
          // response.sendRedirect("up.jsp");
            } 
            catch (Exception e) 
            {
               // out.println(e);
            }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
