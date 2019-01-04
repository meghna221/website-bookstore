<hr class="style-seven">
<div id="footer">
<div class="col-lg-6 one">
    <p class="nl">NEWSLETTER</p>
    <hr>
    <p><span><i class="far fa-envelope"></i></span><span class="s">Sign up with your name and email to get updates fresh updates.</span></p>
    <form method="get">
        <div class="form-group">
    <input type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter Name" name="name">
  </div>
  <div class="form-group">
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="email">
  </div>
  <button type="submit" class="btn btn-primary" name="submit">Subscribe</button>
</form>
    </div>
    <div class="col-lg-6 one">
    <p class="nl">GET IN TOUCH</p>
    <hr>
    <span class="s">Feel free to contact us.</span>
    <p><span class="ic"><i class="fas fa-home"></i></span><span class="s1">Terminal 1D, Domestic International Indira Gandhi Airport, New Delhi, New Delhi. 110037</span></p>
    <p><span class="ic"><i class="fas fa-globe-asia"></i></span><span class="s1">www.nationalbooks.in</span></p>
     <p><span class="ic"><i class="fas fa-phone"></i></span><span class="s1"> 011 4608 2865</span></p>
    </div>
<p style="background-color:blue; margin-top:20px">
<span class="copyright" style="float:left; margin-left:20px;color:black">Copyright &copy; 2018 ODYSSEY. All right reserved.</span><span style="float:right; margin-right:47px;display:inline-block; color:black">Designed and developed by Meghna Raina</span></p>

</div>
<?php
if(isset($_GET['submit'])&&$_GET['name']&&$_GET['email'])
{
   include "connection.php";
$name=$_GET['name'];
$email=$_GET['email'];
$name=mysqli_real_escape_string($con,$name);
$email=mysqli_real_escape_string($con,$email);   
   
 $q="SELECT* from subscribe WHERE email='$email'";
 $r=mysqli_query($con,$q);
 $rows=mysqli_num_rows($r);
    echo $rows;
 if($rows)
    {echo "<div class='alert alert-warning alert-dismissible fade show' role='alert' style='position:absolute; top:1px; right:2px;'>
  email id already registered!
  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
    <span aria-hidden='true'>&times;</span>
  </button>
</div>
";
 }
else{
     $quer="INSERT INTO subscribe(name,email) values('$name','$email')";
        $resul=mysqli_query($con,$quer);
        if(!$resul)
        {
            die('query failed');
        }
     else
     {echo "<div class='alert alert-warning alert-dismissible fade show' role='alert' style='position:absolute; top:1px; right:2px;'>
  <strong>congratulations!</strong> You are successfully subscribed!
  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
    <span aria-hidden='true'>&times;</span>
  </button>
</div>
";
     }
}
}
?>