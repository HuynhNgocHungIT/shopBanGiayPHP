<?php include '../include/login_code.php' ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký ngay | Shop Giay</title>
    <link rel="stylesheet" href="../styles/auth.css">
    <link rel="stylesheet" href="../styles/footer.css">
    <link rel="stylesheet" href="../js/Toastr/toastr.min.css">
</head>
<body>
    <div class="header__register">
        <div class="header__regis">
            <a href="" class="header__regis-logo">
            <img src="../assets/img/logo_login.png" alt="logo">
                <span>Đăng ký</span>
            </a>
            <a href="" class="header__regis-help">
                Bạn cần giúp đỡ
            </a>
        </div>

    </div>
    <div class="header__register-body">
        <div class="header__content">
            <img src="../assets/img/logo_login.png" alt="">
            <span>Nền tản thương mại yêu thích Đông Nam Á</span>
        </div>
        <div class="header__register_form">
            <form action="" class="register" method="POST">
                <span>
                    Đăng nhập
                </span>
                <div class="register__input">
                    <input type="text" class="register__input-phone" placeholder="Email" name="email" id="">
                    <input type="password" class="register__input-phone" placeholder="Mật khẩu" name="password" id="">
                    <div><?php echo "$error" ?></div>
                    <input type="submit" class="register__input-next" name="login" value="Đăng nhập">
                    <span style="color:red ;"></span>
                </div>
                <div class="flex">
                    <div class="register__op">

                    </div>
                    <span class="register__span"> Hoặc</span>
                    <div class="register__op">

                    </div>
                </div>
                <div class="flex">
                    <a href="" class="register__button">
                        <img src="../assets/img/icons8-facebook.svg" alt="">
                        Facebook
                    </a>
                    <a href="" class="register__button">
                      <img src="../assets/img/icons8-google.svg" alt="">
                      Google
                    </a>
                </div>
                <div class="login__dk">
                    <a href="">Quên mật khẩu</a>
                    <a href="">Đăng nhập với SMS</a>
                </div>
                <div class="flex register__login">
                    <span>Bạn chưa có tài khoản ?</span>
                    <a href="../page/register.php">Đăng Ký</a>
                </div>

            </form>
        </div>
    </div>
    <?php 
    include '../include/footer.php';
    
    ?>
</body>
</html>