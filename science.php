<!DOCTYPE html>
<html>
<head>
	<title>genre-science fiction</title>
    <?php
    include "head.php";
    ?>
</head>
<body>
    <?php
        include "logo.php";
    include "nav.php";
    include "connection.php";
        ?>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">Science Fiction</h1>
    <p class="lead">“Science fiction is the most important literature in the history of the world, because it's the history of ideas, the history of our civilization birthing itself.” 
― Ray Bradbury </p>
  </div>
</div>
    <?php
     include "connection.php";
     $sql="select * from category where cat='science fiction'";
    $res=mysqli_query($con,$sql);
    $row=mysqli_fetch_assoc($res);
   $cat_id=$row['id'];
						
  $sel="select * from products where cat_id='$cat_id'";
 $rs=mysqli_query($con,$sel);
  $count=mysqli_num_rows($rs);
    echo "<table class='table table-hover'>
  <thead class='thead-dark' >
    <tr>
      <th scope='col'>BOOK</th>
      <th scope='col'>BOOK NAME</th>
      <th scope='col'>AUTHOR</th>
      <th scope='col'>PRICE(Rs.)</th>
      <th scope='col'>Description</th>
      <th scope='col'>BUY</th>
    </tr>
  </thead>
  <tbody>";
 if($count>0){
     
  while($fetch=mysqli_fetch_assoc($rs)){
			echo "<tr>";
      $path=$fetch['path'];
echo "<td>" ."<img src='".$path."'>" ."</td>";
echo "<td>" . $fetch['title'] . "</td>";
 echo "<td>" . $fetch['authour'] . "</td>";
      echo "<td>" . $fetch['price'] . "</td>";
      echo "<td>" . $fetch['description'] . "</td>";
    echo "<td>" . "<button class='btn btn-info'>Buy now</button>" . "</td>";  
echo "</tr>";

    }
     }
    echo "</tbody>
</table>
    ";
   
    include "footer.php";
    ?>
    
</body>
</html>