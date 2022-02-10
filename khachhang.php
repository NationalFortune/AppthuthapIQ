




<?php
    $conn = mysqli_connect("localhost", "root", "", "dataapp3") or die("Không kết nối được cơ sở dữ liệu"); 

    if (isset($_GET['q']) && !empty($_GET['q'])) {
        $keyword = $_GET['q'];

        $sql = "SELECT * FROM khachhang WHERE makh LIKE '%$keyword%' OR tenkhachhangnhacc LIKE '%$keyword%' OR sodienthoai LIKE '%$keyword%' OR Email LIKE '%$keyword%'";
    }else{
        $sql = "SELECT * FROM khachhang";
    }

    

    $result = mysqli_query($conn, $sql);

    if (!$result) {
        die("Câu truy vấn sai");
    }

 
?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style type="text/css">
   

        .list{border-collapse: collapse;}  .list tr th{background: #ebebeb;} .list img{width: 32px;} 
    </style>
</head>
<body> 
     <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="">Các loại sản phẩm</a>
            <ul>
                <li><a href="banggau.php">Băng gầu</a></li>
                <li><a href="bangtai.php">Băng tải</a></li>
                <li><a href="hopso.php">Hộp số</a></li>
                <li><a href="quat.php">Quạt</a></li>
                <li><a href="xichtai.php">Xích tai</a></li>
                <li><a href="spduc.php">Sản phẩm đúc</a></li>
                <li><a href="spkhac.php">Sản phẩm khác</a></li>
                <li><a href="tamlot.php">Tấm lót</a></li>                
            </ul>
        </li>
        <li><a href="">Admin</a>
            <ul>
                <li><a href="login.php">Trang quản trị</a></li>
                <li><a href="tskt.php">Thông số kỹ thuật</a></li>
                <li><a href="register.php">Đăng ký</a></li>
                
            </ul>
        </li>

        <li><a href="iq.php">Iq</a></li>
        <li><a href="hopdong.php">Hợp đông</a></li>
        <li><a href="khachhang.php">Khách hàng</a></li>
        <li><a href="nhacungcap.php">Nhà cung cấp</a></li>

    </ul> 
    
    <table class="search-form" cellpadding="10">
        <tr>
            <td>
                <form action="" method="get">
                    <input type="text" name="q" placeholder="Nhập từ khóa cần tìm" value="<?php if(isset($_GET['q']))?>" />
                    <input type="submit" value="Tìm">
                    
                </form>
            </td>
        </tr>
    </table>
    <table class="list" border="1" cellpadding="10">
          <tr>
            <th>Mã khách hàng</th>
            <th>Tên khách hàng nhà cung cấp</th>
            <th>Số điện thoại</th>
            <th>Email</th>
            <th>Địa chỉ</th>
            <th>Người quản lý</th>
            <th>Thảo luận</th>
            <th>Phân loại</th>
            <th>Mức độ tiềm năng</th>
            <th>Danh xưng</th>
            <th>Số hợp đồng</th>
        </tr>
        <?php
           while ($row = mysqli_fetch_assoc($result)) {
            ?>
   
        <tr>
            <td><?php echo $row['makh']; ?></td>
            <td><?php echo $row['tenkhachhangnhacc']; ?></td>
            <td><?php echo $row['sodienthoai']; ?></td>
            <td><?php echo $row['Email']; ?></td>
            <td><?php echo $row['diachi']; ?></td>
            <td><?php echo $row['nguoiquanly']; ?></td>
            <td><?php echo $row['thaoluan']; ?></td>
            <td><?php echo $row['phanloai']; ?></td>
            <td><?php echo $row['mucdotiemnang']; ?></td>
            <td><?php echo $row['danhxung']; ?></td>
            <td><?php echo $row['sohopdong']; ?></td>
            <form action="" method="get">
            <td><a href="./chiTiet.php?idSP=<?php echo  $row['masp'] ?>" >Xem chi tiết</a></td>
        </form>
            <form action="" method="get">
            <td><a href="./cttskt.php?idSPKT=<?php echo  $row['masp'] ?>" >Xem chi tiết</a></td>
        </form>   
                      <form action="" method="get">
            <td><a href="./NCC.php?idSPncc=<?php echo  $row['mancc'] ?>" >Xem chi tiết</a></td>
        </form>      
        </tr>
    <?php } ?>
    </table>
</body>
</html>
















