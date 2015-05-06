<%-- 
    Document   : news
    Created on : May 14, 2014, 12:13:02 PM
    Author     : gaurav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="org.jsoup.Jsoup"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minor Project | News</title>
        <link href="cssfiles/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel='stylesheet' type='text/css' href='cssfiles/stylesmenu.css' />
        <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
<link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
    </head>
    <style>
            h3.heading 
            {
                font-family:futura_md_btmedium; 
                font-size:24px; 
                color:#000; 
                font-weight:normal; 
                text-transform:uppercase; 
                padding:12px 0 7px; 
                width:100%; 
                position:relative;
            }

            ul.news
            {
                margin-top:10px; 
                height:173px;
            }
            ul.news li
            {
                font-size:14px; 
                padding-bottom:10px; 
                line-height:14px;
                margin-top: 10px;
            }
            ol.news li a
            {
                color:#cc6633;
            }
            ol.news li a:hover
            {
                color:#666; 
            }
            .blank_row
            {
                height: 10px !important; /* Overwrite any previous rules */
            }
            .dropdown
            {
                width:170px;
                height: 30px; 
                margin-top: 10px;
                margin-left: 10px;
                font-size: 18px;
            }
            .values
            {
                font-size: 18px;
                color: black;
            }
            .yearbox
            {
                width:170px;
                height: 25px; 
                margin-top: 10px;
                margin-left: 10px;
                font-size: 18px;
            }
        </style>
    <body>
        <div class="header">	
            <div class="wrap"> 
                <div class="header-top">
                    <div class="logo">
                        <h1><a href="index.jsp">Industrial Analysis</a></h1>
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
                        <li class="last"><a href="contact.jsp"><span>Contact</span></a></li>
                        <div class="clear"></div>
                    </ul>
                </div>
            </div>
        </div>
        <div style="margin-left: 30px;">
        <%
                    try 
                    {
                        String headn;
                        String link=request.getParameter("link");
                        DateFormat df = new SimpleDateFormat("dd/MM/yy");
                        Date dateobj = new Date();
                        Document doc1 = Jsoup.connect(""+link).get();
                        %>
                        <ul class="news">
                     <%
                        for (Element table1 : doc1.select("div.tabContainer"))//right is class name of table
                        {
                            Elements head = table1.select("h2.innerheadGrey");
                            headn=head.get(0).text();
                            %>
                    <h3 class="heading"><%=headn%></h3>
                    <div style="width:70%;">
                        
                    
                    <%
                            out.println(df.format(dateobj)+"\n");
                            for(Element div:table1.select("div.marTop15"))
                            {
                                Elements pp=div.select("p");
                                if(pp.size()>0)
                                {
                                    %>
                                    <li><%out.println(pp.get(0).text());%></li>
                                    <li><%out.println(pp.get(1).text());%></li>
                                    <li><%out.println(pp.get(2).text());%></li>
                                    <li><%out.println(pp.get(3).text());%></li>
                                    <li><%out.println(pp.get(4).text());%></li>
                                    <%
                                }
                            }
                            %>
                        </div>           
                                    <%
                        }
                        %>
                        </ul>
                        <%
                    } 
                    catch (Exception ex) 
                    {
                        out.println(""+ex);
                    }
                %>
        </div>
    </body>
</html>
