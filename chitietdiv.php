<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DIV_Thú Nuôi</title>
<link href="style/cs1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.corner.js"></script>

<script> 
$(document).ready(function()
 { 
 $("#rowcha #rowcon").corner("10px");
}); 
</script>

</head>

<body>

<?php
$idthunuoi = $_GET["idthunuoi"];
include("kn.php");
$lenh= " select mathunuoi,tenthunuoi,concat(soluong,'Con') as soluong,concat(format(dongia,0),'VNĐ')as dongia,hinh,mota
from thunuoi where tenthunuoi like '%$ten%' and mathunuoi='$idthunuoi'";
$kq= mysql_query($lenh);

?>
<div id="rowcha">
<?php
while($row=mysql_fetch_array($kq))
  {
?>
	<div id="rowcon1">
    <font color='#CC3366'><b>Tên Thú Nuôi: </font></b><?php echo $row[1]; ?><br/>
    <font color='#FF9933'>Số Lượng : </b><?php echo $row[2]; ?></font> - <font color='#FF00FF'>Giá: <?php echo $row[3]; ?>/Con</font><br/>
    <font color='#0000FF'><b>Mô Tả :</b></font> <?php echo $row[5]; ?><br/>
    <p align="center">  <img src='image/<?php echo $row[4]; ?>' width="250" height="170" /></p><br/>
    
    </div><!--rowcon-->
<?php
  }
 ?>
 
 
 <p align="center"><a href="javascript:history.go(-1)">Back</a></p>

</div><!--rowcha--> 
</body>
</html>