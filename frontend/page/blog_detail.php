<?php
include '../include/header.php'

?>
<div class="blog_detail">
  <?php
  include './db_connect.php';
  $id = $_GET['ID'];

  $sql = "SELECT * FROM blog WHERE ID = $id LIMIT 1";
  $result = mysqli_query($conn, $sql);
  while ($row = mysqli_fetch_assoc($result)) {
  ?>


    <p>

      <?php echo $row['Des'] ?>
    </p>
</div>
<?php
  }
?>
</div>
</div>
<?php
include '../include/footer.php'
?>