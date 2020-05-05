<%-- 
    Document   : profile
    Created on : Mar 22, 2020, 9:45:43 PM
    Author     : DHRUVIL
--%>
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    <h1 style="color:white">Welcome to eDocs By Digital.Id.Proof.System</h1>
    <p style="color:white">This is Login Page</p>

    <%
        if (session != null) {
            if (session.getAttribute("user") != null) {
                Long name = (Long) session.getAttribute("user");
                out.println("AADHAR, " + name + "<br>");
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection Con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dips", "root", "");
                    Statement st = Con.createStatement();
                    ResultSet rs = st.executeQuery("select * from user where aadhar_num='" + name + "'");
                    while (rs.next()) {
                        out.println("HELLO:" + rs.getString(1) + " Welcome to your profile");
                    }
                } catch (Exception e) {
                }

            } else {
                response.sendRedirect("signin.php");
            }
        }
    %>
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
    <br/><br/>AADHAR
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
