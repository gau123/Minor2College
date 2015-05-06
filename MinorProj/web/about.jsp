<%-- 
    Document   : about
    Created on : Mar 22, 2014, 7:59:11 PM
    Author     : gaurav
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@ page import="java.util.*" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="database.utility" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Minor Project | About</title>
        <link href="cssfiles/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
    </head>
    <body>
        
        
        <%@include file="htmlfiles/logoandmenu.html" %>
        <!------End Slider ------------>
        <div class="main">
            <div class="wrap">
                <div class="about">
                    <%!
            
        %>
                    <div class="about-top">
                        <div class="col span_1_of_about">
                            <h3 style="color:black;font-size: 38px;">About Us</h3>
                            <div class="about-img">
                                <img src="images/pic8.jpg" alt="">
                            </div>
                            <div class="about-desc" >
                                <p style="color:black;">Industrial Analysis is a site developed to help the people of India choose the industry best suitable for them to start a new business.Our primary objective is to promote and create international awareness of the Made in India label in markets overseas and to facilitate dissemination of knowledge of Indian products and services. Towards this objective, we works closely with stakeholders across government and industry.</p>
                                <p style="color:black;">An industry analysis is a business function completed by business owners and other individuals to assess the current business environment. This analysis helps businesses understand various economic pieces of the marketplace and how these various pieces may be used to gain a competitive advantage. Although business owners may conduct an industry analysis according to their specific needs, a few basic standards exist for conducting this important business function.As a part of our economic development mission, the Industrial Analysis provides direct service to economic development organizations, government agencies, and common peoples.</p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="col span_1_of_about1">
                            <h3 style="color:black;">Recent Comments</h3>
                            <ul class="comments-custom unstyled">
                                <jsp:useBean id="show" class="beans.show" scope="request" />
                                <%
                                   /* try 
                                    {
                                        String qry;
                                        int i = 0;
                                        String[] name=new String[5];
                                        String[] com=new String[5];
                                        ResultSet rs;
                                        Connection cn;
                                        Statement st;
                                        Class.forName("com.mysql.jdbc.Driver");
                                        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/minoris","root","GAUsing@2011");
                                        st=cn.createStatement();
                                        qry = "select cmnt,name from contact order by id desc";
                                        rs = st.executeQuery(qry);
                                        while (i < 3) 
                                        {
                                            if (rs.next()) 
                                            {
                                               // out.println("chl rhi h");
                                                name[i]=rs.getString("name");
                                                com[i]=rs.getString("cmnt");*/
                                    List<Object> list=new ArrayList<Object>();
                                    list=show.getDb_Data();
                                    for(int i=0;i<list.size();i++)
                                    {
                                        show.setObj(list.get(i));
                                %>
                                <li class="comments-custom_li">
                                    <div class="icon"></div>
                                    <div class="right-text">
                                        <h4 class="comments-custom_h" style="color:black;"><%--<%=name[i]%>--%>
                                            <%
                                        out.println(show.getName());
                                        %>
                                        </h4>
                                        <div class="comments-custom_txt" style="color:black;">
                                            <%-- <%=com[i]%>--%>
                                            <%
                                            out.println(show.getCmnt());
                                        %>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                    </li>
                                    <%
                                                }
                                               // i++;
                                       /*     }
                                        } 
                                    catch (Exception ex) 
                                    {
                                        out.println(ex);
                                        }*/
                                    %>
                            </ul>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="about-bottom">
                        <div class="about-topgrids">
                            <div class="about-topgrid1">
                                <h3 style="color: black;">Who We Are</h3>
                                <p style="color:black;">We are a group of students who want to help other people choose the industries best for them.</h5>
                                <p style="color:black;">We have researched and sorted out the problems that a person face in choosing a industry and accessing the data</p>
                                <p style="color:black;">Our data is available for students like us who are making similar kind of projects and want to use these stats</p>
                            </div>
                        </div>
                        <div class="about-histore">
                            <h3 style="color:black;">Our Business Principles</h3>
                            <div class="historey-lines" style="width:320px;">
                                <%--<ul>
                                    <li></p></li>
                                    <div class="clear"> </div>
</ul>--%><p style="font-size: 13px;">Our experience shows that if we serve our clients well, our own success will follow.</p>
                            </div>
                            <div class="historey-lines" style="width:320px;">
                                <%--<ul>
                                    <li></li>
                                    <div class="clear"> </div>
</ul>--%><p style="margin-top:10px;font-size: 13px;">We have an uncompromising determination to achieve excellence in everything we undertake.</p>
                            </div>
                            <div class="historey-lines" style="width:320px;">
                                <%-- <ul>
                                    <li></li>
                                    <div class="clear"> </div>
</ul>--%><p style="margin-top: 10px; font-size: 13px;">While recognizing that the old way may still be the best way, we constantly strive to find a better solution to a client’s problems.</p>
                            </div>
                            <div class="clear"> </div>
                        </div>
                        <div class="about-states" >
                            <h3 style="color:black; font-size: 28px;">Why Choose Us</h3>
                            <div class="questions" >
                                <h4 style="margin-top:20px; color: black;">User Friendly UI</h4>
                                <p style="color:black;">We provide the best UI suitable for the people and easy to understand.</p>
                            </div>
                            <div class="questions">
                                <h4 style="color:black;">Free Of Cost Data</h4>
                                <p style="color:black;">Our website is free to use and our data is easily accessible to the common people without any cost for their analysis</p>
                            </div>
                            
                        </div>
                        <div class="clear"></div> 
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

