
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
$idxoa=$_GET["idxoa"];
include("kn.php");
$lenhxoa = "delete from thunuoi where mathunuoi='$idxoa'";
$kqxoa=mysql_query($lenhxoa);
if($kqxoa)
{
	?>
    <script>
	alert('Xóa Thành Công');
    location.href='thongtinThuNuoi.php';
    
    </script>
    <?php	
	
	
}



?>
