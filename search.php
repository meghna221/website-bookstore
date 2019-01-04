<!DOCTYPE html>
<html>
<head>
	<title>search</title>
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
    <h1 class="display-4">Search</h1>
  </div>
</div>
    <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  <form class="form-inline" method="get">
    <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search" name="tex">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="search">Search</button>
  </form>
</nav>
    <?php
if(isset($_GET['search'])&&$_GET['tex']!=''){
	$tex=$_GET['tex'];
    $tex=mysqli_real_escape_string($con,$tex);
	$query="SELECT*FROM products WHERE LOWER(title) LIKE LOWER('%$tex%') OR LOWER(authour) LIKE LOWER('%$tex%')";
    $result=mysqli_query($con,$query);
	$count = mysqli_num_rows($result);
	if($count == "0"){
		echo '<h2>No result found!</h2>';
	}
    else{
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
		while($fetch = mysqli_fetch_array($result)){
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
         echo "</tbody>
</table>
    ";
			}
		}
	


 

    include "footer.php";
    ?>
    
</body>
</html>