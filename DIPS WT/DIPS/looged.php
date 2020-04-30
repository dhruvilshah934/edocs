<?php
if(isset($_POST["submit"])){
 if(!empty($_POST['aadhar_num']) && !empty($_POST['pwd'])){
 $aadhar_num = $_POST['aadhar_num'];
 $pwd = $_POST['pwd'];
 //DB Connection
 $conn = new mysqli('localhost', 'root', '') or die(mysqli_error());
 //Select DB From database
 $db = mysqli_select_db($conn, 'dips') or die("databse error");
 //Selecting database
 $query = mysqli_query($conn, "SELECT fullname, aadhar_num , pwd FROM user WHERE aadhar_num='".$aadhar_num."' AND pwd='".$pwd."'");
 $numrows = mysqli_num_rows($query);
 if($numrows !=0)
 {
 while($row = mysqli_fetch_assoc($query))
 {
 $dbuserid=$row['aadhar_num'];
 $dbpassword=$row['pwd'];
 $dbusername=$row['fullname'];
 }
 if($aadhar_num == $dbuserid && $pwd == $dbpassword)
 {
 session_start();
 $_SESSION['sess_user']= $dbusername;
 $_SESSION['sess_userid']= $dbuserid;
 //Redirect Browser
 header("Location:Open.php");
 }
 }
 else
 {
 echo "Invalid Username or Password!";
 }
 }
 else
 {
 echo "Required All fields!";
 }
}
?>