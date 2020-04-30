<?php
session_start();
$dbuserid= $_SESSION['sess_userid'];
if(isset($_POST["submit"]))
{
    if(!empty($_POST['voter_num']))
    {
        $voter_num = $_POST['voter_num'];
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "dips";
        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        $sql = "UPDATE user SET voter_num='".$voter_num."' where aadhar_num='".$dbuserid."'";
        if ($conn->query($sql) === TRUE) {
            header("Location: Open.php");
        } else {
            echo "no record found: " . $conn->error;
        }
        $conn->close();
    }
}
?>