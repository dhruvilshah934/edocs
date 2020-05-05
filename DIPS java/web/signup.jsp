<%-- 
    Document   : signup
    Created on : Mar 22, 2020, 8:34:30 PM
    Author     : KENEEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>Sign Up</title>
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
                        <form action="./save" method="POST">
                            <b> <h2 style="color: white;">SignUp</h2></b>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Full Name" name="Name" required>
                            </div>
                            <div class="form-group">
                                <input type="contact" class="form-control" placeholder="Mobile Number" name="Contact" required>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Adhar Number" name="Adhar" required>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="mm/dd/yyyy" name="DOB" required>
                                <!--<input onfocus="(this.type='date')" class="form-control" placeholder="Date-Of-Birth" name="DOB" required>-->
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="Password" name="Password" id="pass" required>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="Renter Password" name="REPassword" id="repass" required>
                            </div>
                            <div id="message"></div>
                            <input type="submit" name="submit" value="SIGNUP" class="btn btn-primary" onclick="return check()">
                        </form>

                    </div>
                </div>
            </div>
        </main>

    </body>
    <script>

        function check()
        {
            pass = document.getElementById("pass");
            message = document.getElementById("message");
            rePass = document.getElementById("repass");

            if (pass.value.length < 8)
            {
                message.style.color = "red";
                message.innerHTML = "Length of password should be greater than or equal to 8";
                //alert("Password and Confirm Password Should Match.");
                pass.focus();
                return false;
            }
            else if (pass.value != repass.value)
            {
                message.style.color = "red";
                message.innerHTML = "Password and Confirm Password Should Match.";
                //alert("Password and Confirm Password Should Match.");
                rePass.focus();
                return false;
            }
            return true;
        }
    </script>
</html>
