<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tin Mới</title>
<style type="text/css">
#hinhtin {
	padding: 2px;
	border: 2px solid #0F0;
}
#tintuc {
	text-align: justify;
}
</style>
</head>

<body>
<?php
$idtin= $_GET["idtin"];
include("kn.php");
$lenh="select * from tin where matin='$idtin'";
$kq=mysql_query($lenh);
?>
<table width="550" border="0" cellspacing="0" cellpadding="0" id="tintuc">
  <tr>
    <td style="padding-left:10px;">
    <?php
	while($row =mysql_fetch_array($kq)) 
	{
		?>
        <font color="#FF33CC"><b><?php echo $row[1];    ?></b></font>
	     <br/>
         
      <font color="#6600FF"><b><?php echo $row[2];    ?></b></font>
	     <br/>
         <img src="hinhtintuc/<?php echo $row[3];    ?>" width="200" height="150" hspace="5" vspace="5" id="hinhtin"/>
	     <br/>
         <font color="#0099FF"><b><?php echo $row[5];    ?></b></font>
	     <br/>
        <?php
		
		
	}
	?>
    
    </td>
  </tr>
</table>
</body>
</html>