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
    <title>eDocs PROFILE</title>
    <link rel="stylesheet" type="text/css" href="Style.css">
</head>
<h1 style="color:white">Welcome to eDocs By DIGITAL.ID.PROOF.SYSTEM</h1>
<p style="color:white">This is Login Page</p>
<?=$_SESSION['sess_user'];
$dbuserid= $_SESSION['sess_userid'];
echo "User Id:" . $dbuserid . "<br>";
?>!
<body style="background-color: #000022;">
    <!-- <header> -->

    <nav class="navbar navbar-fixed-top navu">
        <a class="navbar-brand">
            <img src="images/DIPS.png" style="margin-top:-16px ; width:95px;">
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
    <br/><br/>
    <h3 style="text-align: center; color: white;">
<?php 
//function run()
//{
    if(isset($_POST["aadhar"]))
    {
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "aadhar";
        $dbnames = "dips";

        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);
        // Check connection
        if ($conn->connect_error)
        {
            die("Connection failed: " . $conn->connect_error);
        }
        else
        {
            //if 12
            $sql = "SELECT * FROM aadhar WHERE u_id='".$dbuserid."'";
            //if 10
            
            $result = $conn->query($sql);

            if ($result->num_rows > 0) 
            {
                // output data of each row
                while($row = $result->fetch_assoc()) 
                {
                    $image=$row["user_image"];
                    echo "<img src='$image' style='margin-left:25px; width:505px;'>";
                    
                }
            }
            else 
            {
                echo "0 results";
            }
            $conn->close();
        }
    }
//}
?>
</h3>
</body>
</html>
<?php
    }
?>