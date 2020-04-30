<?php
session_start();
if(!isset($_SESSION["sess_user"])){
 header("Location: SIGNIN.php");
}
else
{
?>
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
    <link rel="stylesheet" type="text/css" href="Style.css">
</head>
<br><br>
<h1 style="color:white">Welcome to eDocs by DIGITAL.ID.PROOF.SYSTEM</h1>
<p style="color:white">This is Login Page</p>
<?=$_SESSION['sess_user'];?></p>
<body style="background-color: #000022;">
    <!-- <header> -->

    <nav class="navbar navbar-fixed-top navu">
        <a class="navbar-brand">
            <img src="images/DIPS.png" style="margin-top:-15px ; width:85px;">
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
                    <li class="topnav"><a href="logout.php" class="glyphicon glyphicon-user icon"><b> LogOut</b></a>
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
    <form action="aadhar.php" method="post">
       <input type="submit" value="aadhar" name="aadhar"><br/>
    </form>
    <br/><br/>PAN
    <form action="pan.php" method="post">
       <input type="submit" value="pan" name="pan"><br/>
    </form>
    <br/><br/>Voter
    <form action="voter.php" method="post">
       <input type="submit" value="voter" name="voter"><br/>
    </form>
</body>
</html>
 <?php
    }
?>