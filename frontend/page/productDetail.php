<?php
include '../include/header.php'

?>
<div class="blog_detail">
  <?php
  include './db_connect.php';
  $id = $_GET['ID'];

  $sql = "SELECT * FROM product WHERE ID = $id LIMIT 1";
  $result = mysqli_query($conn, $sql);
  while ($row = mysqli_fetch_assoc($result)) {
  ?>

<div class="detail" >
   <div class="detail_img">
    <img src="../../backend/images/product/<?php echo $row['Image'] ?>" alt="">
   </div>
   <div class="detail_body">
        <span>
           <?php echo $row['Title'] ?>
        </span>
        <div class="">
          <span>Số lượng</span>
          <input    name="amountName" id="" >
        </div>
       <div class="">
        <span class="price_sale">
           <?php echo $row['Price'] ?> đ
        </span>
        <span class="price">
        <?php echo $row['PriceNew'] ?> đ
        </span>
       </div>
       <div class="detail_btn">
            <div class="btn detail_cart">
                <button  href=""> THÊM VÀO GIỎ HÀNG</button>
            </div>
            <div class="btn detail_start">
                <button (click)="confirmBox() ">MUA NGAY</button>

            </div>
       </div>
       <div class="des" >
        <div>
        <?php echo $row['Description'] ?>
        </div>
       </div>
   </div>
</div>

<?php
  }
?>


</div>

<div class="">

    <div class="" style="margin-left: 80px;font-size:25px ; font-weight: 700;">Sản phẩm liên quan</div>
    
    <div class="product_flex">
    <?php
  include './db_connect.php';
  $id = $_GET['ID'];


  $sql = "SELECT * FROM product  order by RAND()   LIMIT 5 ";
  $result = mysqli_query($conn, $sql);
  ?>
  <div class="product__flexs">
    
  <?php
  while ($row = mysqli_fetch_assoc($result)) {
  ?>
<a  href="./productDetail.php?ID=<?php echo $row['ID']?>" class="product__item">
    

<img src="../../backend/images/product/<?php echo $row['Image'] ?>" alt="">
   <div style="padding: 1rem 2rem;" class="">
   <span><?php echo $row['Title'] ?></span>
    <span style="text-decoration: line-through;">
    <?php echo $row['Price'] ?> đ

    </span>
    <span style="color: red;">  <?php echo $row['PriceNew'] ?> đ</span>
   </div>

</a>





<?php
  }
  
?>
</div>
</div>
</div>
<div style="text-align: center">
    <a href="">Xem Thêm</a>
</div>
</div>
<?php
include '../include/footer.php'
?>