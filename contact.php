<!DOCTYPE html>
<html>
<head>
	<title>contact us</title>
    <?php
    include "head.php";
    ?>
</head>
<body>
    <?php
        include "logo.php";
    include "nav.php";
    
        ?>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d112142.50920619997!2d77.02991753305196!3d28.556144425529375!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d1b845eff6e61%3A0x948f40511d5b1f27!2sOdyssey+Bookstores!5e0!3m2!1sen!2sin!4v1532369370310" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    <hr class="style-seven">
    <div class="container" >
        <p style="font-size:40px;color:red; font-weight:bold; text-align:center;">CONTACT</p>
         <p style="font-size:30px;color:gray; text-align:center;">Feel free to write to us.</p>
    <form method="get">
    <div class="form-group">
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Name" name="name">
  </div>
      <div class="form-group">
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Mobile number" name="mobile">
  </div>  
  <div class="form-group">
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email" name="email2">
  </div>
        <div class="form-group">
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Subject" name="subject">
  </div>
        <div class="form-group">
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="4" name="msg"></textarea>
  </div>

  <button type="submit" class="btn btn-warning" style="margin-left:46%" name="sub">Send Message</button>
</form>
    </div>
    <?php
if(isset($_GET['sub'])&&$_GET['name']&&$_GET['email2'])
{include "connection.php";
$name=$_GET['name'];
$email=$_GET['email2'];
    $mobile=$_GET['mobile'];
    $subject=$_GET['subject'];
    $msg=$_GET['msg'];
$name=mysqli_real_escape_string($con,$name);
$email=mysqli_real_escape_string($con,$email);   
$mobile=mysqli_real_escape_string($con,$mobile);
$subject=mysqli_real_escape_string($con,$subject);
$msg=mysqli_real_escape_string($con,$msg);
     $quer="INSERT INTO applications(name,email,num,msg,subject) values('$name','$email','$mobile','$msg','$subject')";
        $result=mysqli_query($con,$quer);
    if($result)
    {echo "<div class='alert alert-warning alert-dismissible fade show' role='alert' style='position:absolute; top:1px; right:2px;'>
  Your message has been successfully sent!
  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
    <span aria-hidden='true'>&times;</span>
  </button>
</div>
";}
    else{
        die('mysqli_error()');
    }
     }

?>
	<?php
    include "footer.php";
    ?>
</body>
</html>