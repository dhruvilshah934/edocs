<?php
session_start();
$dbuserid= $_SESSION['sess_userid'];
//DB Connection
 $conn = new mysqli('localhost', 'root', '') or die(mysqli_error());
 //Select DB From database
 $db = mysqli_select_db($conn, 'dips') or die("databse error");
 //Selecting database
 //$pan_num=0;
 $query = mysqli_query($conn, "SELECT voter_num FROM user WHERE aadhar_num='".$dbuserid."'");
 $numrows = mysqli_num_rows($query);
 if($numrows !=0)
 {
    while($row = mysqli_fetch_assoc($query))
    {
        $dbuservid=$row['voter_num'];
    }
    $d=0;
    if($dbuservid == is_string($d))
    {
        header("Location:votertext.php");
    }
    else
    {
        header("Location:voterImage.php");
    }
}
?>