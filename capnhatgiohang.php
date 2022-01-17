<?php
include("kn.php");
include("check_userlogin.php");
if($_POST["xoa"]=="")
{
	for($i = 1;$i<=$_SESSION["tongsp"];$i++)
	{
		
		$_SESSION["Soluong".$i]=$_POST["C".$i];
			
	}
	
	
}
else
{
	for($k=$_SESSION["tongsp"];$k >= 1 ;$k--)
	{
		if($_POST["X"]=="on")
		{
		session_unregister($_SESSION["Madienthoai".$k]);
		session_unregister($_SESSION["Tendienthoai".$k]);
		session_unregister($_SESSION["Soluong".$k]);
		session_unregister($_SESSION["Dongia".$k]);
		$_SESSION["tongsp"]--;
			
			
		}
	
	}

}
echo"<script>
location.href='index.php?act=gh';

</script>";



?>
