<%-- 
    Document   : contact
    Created on : Mar 22, 2014, 10:00:24 PM
    Author     : gaurav
--%>

<%--<%@page import="com.ezzylearning.EmailValidationServiceSoap"%>--%>
<%@page import="javax.xml.ws.WebServiceRef"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="java.util.Scanner"%>
<%@page import="beans.contactdet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="database.utility"%>
<%--<%@page import="com.ezzylearning.EmailValidationService" %>--%>

<!DOCTYPE html>
<html>
    <head>
        
        <%!
            @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/www.ezzylearning.com/services/EmailValidationService.asmx.wsdl")
          //  private EmailValidationService service;
        %>
        <title>Minor Project | Contact </title>
        <link href="cssfiles/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <div class="header">	
            <div class="wrap"> 
                <div class="header-top">
                    <div class="logo">
                        <h1><a href="index.html">Industrial Analysis</a></h1>
                    </div>
                    <div class="clear"></div> 
                </div>
            </div>	
        </div>
        <!------ Slider ------------>
        <div class="about-banner">
            <div class="wrap">
                <div class="cssmenu">
                    <ul>
                        <li><a href="index.jsp"><span>Home</span></a></li>
                        <li><a href="about.jsp"><span>About us</span></a></li>
                        <li><a href="industry.jsp"><span>Industry</span></a></li>
                        <li><a href="states.jsp"><span>States</span></a></li>
                        <li class="active"><a href="contact.jsp"><span>Contact</span></a></li>
                        <div class="clear"></div>
                    </ul> 
                </div>
            </div>
        </div>
        <div class="main">
            <div class="wrap">
                <div class="section group">
                    <div class="col span_2_of_3">
                        <div class="contact-form">
                            <h3>Contact Us</h3>
                            <form method="post" action="contact.jsp">
                                <div>
                                    <span><label>Name</label></span>
                                    <span><input name="username" type="text" class="textbox" required="true"/></span>
                                </div>
                                <div>
                                    <span><label>E-Mail</label></span>
                                    <span><input name="useremail" type="text" class="textbox" required="true"/></span>
                                </div>
                                <div>
                                    <span><label>Mobile</label></span>
                                    <span><input name="userphone" type="text" class="textbox" required="true"/></span>
                                </div>
                                <div>
                                    <span><label>Comment</label></span>
                                    <span><textarea name="usermsg" required="true"/> </textarea></span>
                                </div>
                                <div>
                                    <input type="submit" name="bt" class="btn btn-primary btn1" value="Submit"/>
                                    <%
                                        try 
                                        {
                                            if (request.getParameter("bt") != null) 
                                            {
                                               // com.ezzylearning.EmailValidationService service = new com.ezzylearning.EmailValidationService();
                                               // com.ezzylearning.EmailValidationServiceSoap port = service.getEmailValidationServiceSoap();
                                                com.ezzylearning.EmailValidationService service = new com.ezzylearning.EmailValidationService();
                                                com.ezzylearning.EmailValidationServiceSoap port = service.getEmailValidationServiceSoap();

                                                phno.ValidphnoService service1 = new phno.ValidphnoService();
                                                phno.Validphno port1 = service1.getValidphnoPort();
                                             
                                    %>
                                    <jsp:useBean id="sample" class="beans.contactdet" scope="page">
                                        <jsp:setProperty name="sample" property="*"/>
                                    </jsp:useBean>
                                    <%                                            
                                                String email = sample.getUseremail();
                                                String phn=sample.getUserphone();
                                                boolean result1=port1.validatepno(phn);
                                                //out.println(email);
                                            boolean result = port.validateEmail(email);
                                            if (result == true) 
                                            {
                                                if(result1 == true)
                                                {
                                                    sample.insert();
                                                }
                                                else
                                                {
                                                    %>
                                                    <script>
                                                        alert("Invalid Phone No");
                                                    </script>
                                                    <%
                                                   // out.println("invalid phone");
                                                }
                                                
                                            } 
                                            else 
                                            {
                                                %>
                                                    <script>
                                                        alert("Invalid Email Id");
                                                    </script>
                                                    <%
                                                //out.println("invalid email");
                                            }
                                        }
                                       
                                    }
                                    catch(Exception ex)
                                    {
                                        out.println(ex);
                                    }%>

                                </div>
                            </form>

                        </div>
                    </div>
                    <div class="col span_1_of_3">
                        <div class="contact_info">
                            <h3 style="color:black;">Find Us Here</h3>
                            <div class="map">
                                <iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" 
                                        src="http://maps.google.co.in/maps?newwindow=1&biw=1366&bih=667&um=1&ie=UTF-8&q=jaypee+institute+of+information+technology+noida&fb=1&gl=in&hq=jaypee+institute+of+information+technology&hnear=0x390ce5a43173357b:0x37ffce30c87cc03f,Noida,+Uttar+Pradesh&sa=X&ei=bvUrU-6-PMGCrgeY5oDgAg&ved=0CJABELYD">
                                </iframe><br><small>
                                    <a href="https://www.google.co.in/maps/search/jaypee+institute+of+information+technology+noida/@28.5167536,77.39813,11z/data=!3m1!4b1!4m5!2m4!3m3!1sjaypee+institute+of+information+technology!2sNoida,+Uttar+Pradesh!3s0x390ce5a43173357b:0x37ffce30c87cc03f">View Larger Map</a></small>
                            </div>
                        </div>
                        <div class="company_address">
                            <h3 style="color:black;">Company Information :</h3>
                            <p style="color:black;">Jaypee Institute Of Information Technology,</p>
                            <p style="color:black;">Sec 62,</p>
                            <p style="color:black;">Noida</p>
                            <p style="color:black;">Phone:(00) 9958808872</p>
                            <%-- <p>Fax: (000) 000 00 00 0</p>--%>
                            <p style="color:black;">Email: <span>helpbusiness@gmail.com</span></p>
                            <%-- <p>Follow on: <span>Facebook</span>, <span>Twitter</span></p>--%>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    
    
    </body>
</html>
