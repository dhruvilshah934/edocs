<?php 

    $Name=$_POST["Name"];
    $Contact=$_POST["Contact"];
    $Adhar=$_POST["Adhar"];
    $DOB=$_POST["DOB"];
    $Password=$_POST["Password"];
    $defaultp="0";
    $defaultv="0";
    if(!empty($Name) || !empty($Contact) || !empty($Adhar) || !empty($DOB) || !empty($Password)){
        $host = "localhost";
        $dbusername="root";
        $dbpassword="";
        $dbname="DIPS";
        $dbaname="AADHAR";

        $conn = new mysqli($host,$dbusername,$Password,$dbname);
        $conna = new mysqli($host,$dbusername,$Password,$dbaname);
        if(mysqli_connect_error()){
            die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
        } else{

            $AdharSelect = "SELECT * FROM aadhar WHERE u_id='".$Adhar."'";
            $AdharResult = $conna->query($AdharSelect);
            if ($AdharResult->num_rows > 0) {

            $SELECT = "SELECT aadhar_num from user where aadhar_num=? Limit 1";
            $INSERT = "INSERT into user (fullname,mobile_num,aadhar_num,dob,pwd,pan_num,voter_num) values(?,?,?,?,?,?,?)";
            $stmt=$conn->prepare($SELECT);
            $stmt->bind_param("d",$Adhar);
            $stmt->execute();
            $stmt->bind_result($Adhar);
            $stmt->store_result();
            $rnum = $stmt->num_rows;
            if($rnum==0){
                $stmt->close();

                $stmt=$conn->prepare($INSERT);
                $stmt->bind_param("sddssss",$Name,$Contact,$Adhar,$DOB,$Password,$defaultp,$defaultv);
                $stmt->execute();
                echo '<script>alert("SUCCESSFULLY Registred press OK to Sign-In");window.location.href="SIGNIN.html";</script>';
            } else{
                echo '<script>alert("Aadhar number is already Registred press OK to Sign-In");window.location.href="SIGNIN.html";</script>';
            }     
            }
            else{
                echo '<script>alert("Unregistered aadhar user please register yourself as valid citizen from government");window.location.href="INDEX.html";</script>';
            }
            $stmt->close();
            $conn->close();
        }

    }else{
        echo "ALL FIELD REQUIRED";
        die();
    }

?>