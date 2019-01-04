<!DOCTYPE html>
<html>
<head>
	<title>genre-autobiography</title>
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
    <h1 class="display-4">Collection</h1>
    <p class="lead">Go through our whole collection of books of different genres.</p>
  </div>
</div>
    <?php
     include "connection.php";
  $sel="select * from products";
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