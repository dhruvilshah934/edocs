<%-- 
    Document   : signin
    Created on : Mar 22, 2020, 8:34:15 PM
    Author     : DHRUVIL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Login</title>

        <link rel="stylesheet" type="text/css" href="style.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <header>
            <nav class="navbar navbar-fixed-top navu">
                <a class="navbar-brand" href="index.jsp">
                    <img src="support/images/DIPS.png" style="margin-top:-15px ; width:85px;">
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
                            <li class="topnav"><a href="signup.jsp" class="glyphicon glyphicon-user icon"><b> SignUp</b></a></li>
                            <li class="topnav" ><a href="signin.jsp" class="glyphicon glyphicon-log-in icon"><b> SignIn</b></a></li>
                        </ul>
                        <div class="footer" style="color: white;"><p class="footer-text"><h4 style="text-align: center;"><b>
                                    eDocs</b></h4></p></div> 
                    </div>

                </div>  
            </nav>

            <!-- <div class="jumbotron text-center">
                <div class="container">
                    <h4 style="color: black;">Digital Id Proof System</h4>
                </div>
            </div> -->
            <nav class="navbar navbar-fixed-bottom navd">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#MyNavbarDownside">
                            <span class="sr-only"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="navbar-collapse collapse" id="MyNavbarDownside">
                        <ul class="navbar-nav navbar-right">

                            <div class="dropup">
                                <button class="dropbtn">Made By</button>
                                <div class="dropup-content">
                                    <a href="#">Developer's Name's</a>
                                    <a href="#">Developer's Contact Number</a>
                                </div>
                            </div>
                        </ul>
                        <ul class="navbar-nav navbar-left">
                            <li class="Dnavleft"><a href="#"><b>About</b></a></li>
                            <li class="Dnavleft"><a href="#"><b>Faq's</b></a></li>
                            <li class="Dnavleft"><a href="#"><b>ContactUs</b></a></li>
                        </ul>

                        <!--<div class="navbar-fixed-bottom text-center"><p style="color: grey;"><b>Copyright D.I.P.S 2020</b></p></div>-->
                        <div class="footer" style="color: white;"><p class="footer-text"><h5 style="margin-bottom:5px ; text-align: center;"><b>
                                    Copyright © D.I.P.S 2020. All Rights Reserved and Contact Us: +91 90000 00000</b></h5></p></div>

                    </div>
                </div>
            </nav>

        </header>
        <main>
            <div class="container">
                <div class="row row_style">
                    <div class="col-xs-5 col-lg-offset-2">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h2>SIGNIN</h2>
                            </div>
                            <div class="panel-body">
                                <p class="text-warning">SIGN IN to access your document</p>
                                <form action="./check" method="POST">
                                    <div class="form-group">
                                        <input type="text" placeholder="Mobile Number / Adhar Number" class="form-control" name="aadhar_num">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" placeholder="Password" class="form-control" name="pwd">
                                    </div>
                                    <input type="submit" name="submit" value="SIGN In" class="btn btn-primary">
                                    <div class="panel-footer">
                                        Don't have an account?<a href="signup.jsp" color:blue;>Register</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>

