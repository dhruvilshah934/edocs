<?php
session_start();
$dbuserid= $_SESSION['sess_userid'];
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
                               edocs</b></h4>
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
    // if(isset($_POST["pan"]))
    // {
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "aadhar";
        $dbnameu ="dips";

        // Create connection
        $connu = new mysqli($servername, $username, $password, $dbnameu);
        $conn = new mysqli($servername, $username, $password, $dbname);
        // Check connection
        if ($conn->connect_error && $connu->connect_error)
        {
            die("Connection failed: " . $conn->connect_error);
            die("Connection failed: " . $connu->connect_error);
        }
        else
        {
            //if 12
            $sql = "SELECT * FROM voter WHERE aadhar_num='".$dbuserid."'";
            $sqlu = "SELECT * FROM user WHERE aadhar_num='".$dbuserid."'";
            //if 10
            
            $result = $conn->query($sql);
            $resultu = $connu->query($sqlu);

            if ($result->num_rows > 0 && $resultu->num_rows > 0) 
            {
                // output data of each row
                while($row = $result->fetch_assoc()) 
                {
                    while($rowu = $resultu->fetch_assoc()){
                        $a=$row["voter_num"];
                        $aa=$rowu["voter_num"];
                    if($a == $aa){
                    $image=$row["image"];
                    echo "<img src='$image' style='margin-left:25px; width:505px;'>";
                    }
                    }
                }
            }
            else 
            {
                echo "0 results";
            }
            $conn->close();
        }
    //}
//}
?>
<!-- <h3> Try again with correct Pan Id
    <form action="temp.html" method="post">
       <input type="submit" value="pan" name="pan"><br/>
    </form>
</h3> -->
</body>
</html>