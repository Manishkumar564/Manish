

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<form action="" method="post">
<button name="submit">Submit</button>
<input type="number" name="disc">
</form>

</body>
</html>

<?php

// Check connection
if(isset($_POST['submit'])){
include ('../db.php');
$disc=$_POST['disc'];

$sql    = "UPDATE `products` SET `product_price` = product_price + $disc";
           
if(mysqli_query($con, $sql)){ 
    echo "Discount  successfully."; 
} else { 
    echo "ERROR: Could not able to execute $sql. "  
                            . mysqli_error($link); 
}
}   
?> 




