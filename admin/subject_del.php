<?php
session_start();
?>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <link rel="stylesheet" href="../css/styles1.css">
    </head>
    <body>
        <?php
            include("../user/header.php");
            include("../database/database.php");
            include("header1.php");
            $id=$_GET['sub_id'];
            $res=mysqli_query($con,"delete from Question_Details where sub_id='$id'");
            $res=mysqli_query($con,"delete from Test_Details where sub_id='$id'");
            $res=mysqli_query($con,"delete from Subject_Details where sub_id='$id'");
            header('location: subjects.php');
        ?>
        
    </body>
</html>