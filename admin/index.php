<?php 
session_start();  
if (!isset($_SESSION['admin_id'])) {
  header("location:login.php");
}

include "./templates/top.php"; 

?>
 
<?php include "./templates/navbar.php"; ?>

<div class="container-fluid">
  <div class="row">
    
    <?php include "./templates/sidebar.php"; ?>

      <!-- <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas> -->
<form action="" method="post">
<button name="submit" style="width: 150px; height: 70px; font-weight: bold; font-size: 20px;">Add Discount</button>
<input type="number" step="any" name="disc" style="width: 100px; height: 70px; font-weight: bold; text-align: center;  font-size: 20px;">
</form>

<?php

// Check connection
if(isset($_POST['submit'])){
include ('../db.php');
$disc=$_POST['disc'];
if($disc>0){
  $sql    = "UPDATE `products` SET `product_price` = product_price-(product_price*$disc)";
           
if(mysqli_query($con, $sql)){ 
    ?>
    <script type="text/javascript">
      alert('Discount  successfully.');
    </script>
    <?php 
} else { 
    echo "ERROR: Could not able to execute $sql. "  
                            . mysqli_error($link); 
}
}else{
  ?>
    <script type="text/javascript">
      alert('Discount can not be zero...');
    </script>
    <?php
}
}   
?>
    

  
</form><br><br>
      <h2>Other Admins</h2>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th>#</th>
              <th>Name</th>
              <th>Email</th>
              <th>Status</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody id="admin_list">
            <tr>
              <td>1,001</td>
              <td>Lorem</td>
              <td>ipsum</td>
              <td>dolor</td>
              <td>sit</td>
            </tr>
          </tbody>
        </table>
      </div>
    </main>
  </div>
</div>

<?php include "./templates/footer.php"; ?>

<script type="text/javascript" src="./js/admin.js"></script>
