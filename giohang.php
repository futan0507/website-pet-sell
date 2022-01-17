<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Giỏ hàng</title>
</head>

<body>
<?php
include("kn.php");
$Mathunuoi =$_GET["Mathunuoi"];
$kt=0;
for($i=1; $i<= $_SESSION["tongsp"];$i++)
{
	if($_GET["Mathunuoi"]==$_SESSION["Mathunuoi".$i]);
	{
		$_SESSION["Soluong".$i]++;
		$kt=1;
		break;
	
	}
	
}
if($kt==0)
{
	$lenh="select * from thunuoi where Mathunuoi='$Mathunuoi'";
	$kq= mysql_query($lenh);
	$n= mysql_num_rows($kq);
	if($n>0)
	{
		$row = mysql_fetch_array($kq);
		$_SESSION["tongsp"]++;
		$j = $_SESSION["tongsp"];
		session_register("Mathunuoi".$j);
		$_SESSION["Mathunuoi".$j]= $row["Mathunuoi"];
		session_register("Tenthunuoi".$j);
		$_SESSION["Tenthunuoi".$j]= $row["Tenthunuoi"];
		session_register("Dongia".$j);
		$_SESSION["Dongia".$j]= $row["Dongia"];
		session_register("Soluong".$j);
		$_SESSION["Soluong".$j]=1;
		
		
		
		
	}
}
?>
<form id="form1" name="form1" method="post" action="">
  <table width="550" border="1" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFCCFF" bordercolor="#FF66FF" style="border-collapse:collapse">
    <tr>
      <td colspan="6" align="center" bgcolor="#FF99CC"><p>DANH SACH DAT HANG</p>
      <p>
        <input type="button" name="tieptuc" id="tieptuc" value="Tiep tuc dat hang" onclick="javacsript: history.go(-1)" />
      </p></td>
    </tr>
    <tr>
      <td width="37" align="center">STT</td>
      <td width="102" align="center">Ten thu nuoi</td>
      <td width="64" align="center">Đon gia</td>
      <td width="88" align="center">So luong</td>
      <td width="140" align="center">Thanh tien </td>
      <td width="39" align="center">Xóa</td>
    </tr>
    <?php
	for($i=1; $i<= $_SESSION["tongsp"]; $i++)
	{
		
	
	?>
    <tr>
      <td align="center"><?php echo $i; ?></td>
      <td align="center"><?php echo $_SESSION["Tenthunuoi".$i]; ?></td>
      <td align="center"><?php echo $_SESSION["Dongia".$i]; ?></td>
      <td align="center"><label for="soluong"></label>
      <input name="C<?php echo $i;  ?>" type="text" id="soluong" size="10" value="<?php echo $_SESSION["Soluong".$i]; ?>" /></td>
      <td align="center"><?php echo $_SESSION["Soluong".$i]*$_SESSION["Dongia".$i]; ?></td>
      <td><input type="checkbox" name="X<?php echo $i; ?>" id="xoa" />
      <label for="xoa"></label></td>
    </tr>
    <?php
	}
	?>
  </table>
  <p align="center">Tong tien:</p>
  <p align="center">
    <input type="submit" name="capnhat" id="capnhat" value="Cap Nhat" />
    <input type="submit" name="dathang" id="dathang" value="Dat Hang" />
    <input type="submit" name="xoa2" id="xoa2" value="Xoa" />
  </p>
</form>
</body>
</html>