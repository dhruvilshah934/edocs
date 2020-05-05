<%-- 
    Document   : profile
    Created on : Mar 22, 2020, 9:45:43 PM
    Author     : DHRUVIL
--%>
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>  
<%
//        try{
//                Long name = (Long) session.getAttribute("user");
//                out.println("AADHAR, " + name + "<br>");
//                Class.forName("com.mysql.jdbc.Driver");
//                Connection Con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aadhar","root","");
//                String query="select * from aadhar where u_id="+name;
//                PreparedStatement pst=Con.prepareStatement(query);    
//                ResultSet rs=pst.executeQuery(); 
//                while(rs.next())
//                {
//                    out.println("<p style='margin-left:25px; width:505px;'>");
//                    out.println("<img src=support/"+rs.getString(6)+">");
//                    out.println(rs.getString(6));
//                    out.println("</p>");
//                }
//            pst.close();
//            Con.close();
//                
//                }
//                catch(Exception e){}
%>
<!DOCTYPE html>
<html>

    <head>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>D.I.P.S PROFILE</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <br><br>
    <!--<h1 style="color:white">Welcome to DIPS</h1>
    <p style="color:white">This is Login Page</p>-->
    <p style="margin-left:25px; width:505px;">
        <%
            try {
                Long name = (Long) session.getAttribute("user");
                out.println("AADHAR, " + name + "<br>");

                Class.forName("com.mysql.jdbc.Driver");
                Connection Con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dips", "root", "");
                String query = "select * from user where aadhar_num=" + name;
                PreparedStatement pst = Con.prepareStatement(query);
                ResultSet rs = pst.executeQuery();
                rs.next();

                String pan = rs.getString(6);
                if (pan.equals("0")) {
                    response.sendRedirect("pantxt.jsp");
                } else {
                    //response.sendRedirect("./panimage");
                    request.getRequestDispatcher("./panimage").include(request, response);
                }

            } catch (Exception e) {
            }
        %>
    </p>
    <body style="background-color: #000022;">
        <!-- <header> -->
        <nav class="navbar navbar-fixed-top navu">
            <a class="navbar-brand">
                <img src="support/images/DIPS.png" style="margin-top:-16px ; width:95px;">
            </a>
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#MyNavbarUpside">
                        <span class="sr-only"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                </div>
                <div class="collapse navbar-collapse" id="MyNavbarUpside">
                    <ul class="navbar-nav navbar-right">
                        <li class="topnav"><a href="./logout" class="glyphicon glyphicon-user icon"><b> LogOut</b></a>
                        </li>
                    </ul>
                    <div class="footer" style="color: white;">
                        <p class="footer-text">
                        <h4 style="text-align: center;"><b>
                                eDocs</b></h4>
                        </p>
                    </div>
                </div>

            </div>
        </nav>
        <br/><br/>AADHAR:
        <form action="aadhar.jsp" method="post">
            <input type="submit" value="aadhar" name="aadhar"><br/>
        </form>
        <br/><br/>PAN
        <form action="pan.jsp" method="post">
            <input type="submit" value="pan" name="pan"><br/>
        </form>
        <br/><br/>Voter
        <form action="voter.jsp" method="post">
            <input type="submit" value="voter" name="voter"><br/>
        </form>
    </body>
</html>
