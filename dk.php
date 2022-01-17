<?php
session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang đăng ký</title>
<script type="text/javascript">
	function CheckSignup()
	{
		var s=document.formdangky;
		if(s.hoten.value=='')
		{
			document.getElementById("hoten_error").style.display = "block";
			document.getElementById("hoten_error").innerHTML="Bạn chưa nhập họ tên!";
			s.hoten.focus();
			return false;	
		}
		else
			document.getElementById("hoten_error").style.display = "none";
			
		if(s.diachi.value=='')
		{
			document.getElementById("diachi_error").style.display = "block";
			document.getElementById("diachi_error").innerHTML=" Bạn chưa nhập địa chỉ!";
			s.diachi.focus();
			return false;	
		}
		else
			document.getElementById("diachi_error").style.display = "none";
			
		if(s.dienthoai.value=='')
		{
			document.getElementById("dienthoai_error").style.display= "block";
			document.getElementById("dienthoai_error").innerHTML=" Bạn chưa nhập điện thoại!";
			s.dienthoai.focus();
			return false;	
		}
		else
			document.getElementById("dienthoai_error").style.display = "none";
			
			
					if(isNaN(s.dienthoai.value))
		{
			document.getElementById("dienthoai_error").style.display= "block";
			document.getElementById("dienthoai_error").innerHTML="Điện thoại phải là số!";
			s.dienthoai.focus();
			return false;	
		}
		else
			document.getElementById("dienthoai_error").style.display = "none";
			
			
		if(s.email.value=='')
		{
			document.getElementById("email_error").style.display = "block";
			document.getElementById("email_error").innerHTML=" Bạn chưa nhập email!";
			s.email.focus();
			return false;	
		}
		else
		{
			var email = document.getElementById('email');
	 		 var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			if (!filter.test(email.value)) {
				document.getElementById("email_error").style.display = "block";
			    document.getElementById("email_error").innerHTML=" Bạn nhập email chưa đúng!";
			    s.email.focus();
				return false;
			 }
			else
			{
				document.getElementById("email_error").style.display = "none";	
			}
		}
			

			
			
				
			
if(s.user.value=='')
		{
			document.getElementById("user_error").style.display= "block";
			document.getElementById("user_error").innerHTML=" Bạn chưa nhập user!";
			s.user.focus();
			return false;	
		}
		else
			document.getElementById("user_error").style.display = "none";

	
		if(s.matkhau.value=='')
		{
			document.getElementById("matkhau_error").style.display= "block";
			document.getElementById("matkhau_error").innerHTML="Bạn chưa nhập mật khẩu!";
			s.matkhau.focus();
			return false;	
		}
		else
			document.getElementById("matkhau_error").style.display = "none";
			if(s.capcha.value=='')
			{
			document.getElementById("capcha_error").style.display="block";
			document.getElementById("capcha_error").innerHTML="Bạn chưa nhập mật mã!";
			s.capcha.focus();
			return false;
			}
		else
			document.getElementById("capcha_error").style.display="none";
	

if(s.xacnhanmatkhau.value=='')
		{
			document.getElementById("xacnhanmatkhau_error").style.display= "block";
			document.getElementById("xacnhanmatkhau_error").innerHTML="Bạn chưa nhập xác nhận mật khẩu!";
			s.xacnhanmatkhau.focus();
			return false;	
		}
		else
			document.getElementById("xacnhanmatkhau_error").style.display = "none";

		
		if(s.xacnhanmatkhau.value!=s.matkhau.value)
		{
			document.getElementById("xacnhanmatkhau_error").style.display= "block";
			document.getElementById("xacnhanmatkhau_error").innerHTML="mật khẩu không trùng!";
			s.xacnhanmatkhau.focus();
			return false;	
		}
		else
			document.getElementById("xacnhanmatkhau_error").style.display = "none";
		return true;	
	}
	
	
</script>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.ui.datepicker.js"></script>
<script type="text/javascript" src="jquery.ui.core.js"></script>
<link href="jquery-ui-1.8.2.custom.css" rel="stylesheet" type="text/css" />
<script>
$(document).ready(function() {
$("#ngaysinh").datepicker({
numberOfMonths: 1,  dateFormat: 'yy/mm/dd',
monthNames: ['Một','Hai','Ba','Tư','Năm','Sáu','Bảy','Tám','Chín', 
'Mười','Mười một','Mười hai'] ,
monthNamesShort: ['Tháng1','Tháng2','Tháng3','Tháng4','Tháng5',
'Tháng6','Tháng7','Tháng8','Tháng9','Tháng10','Tháng11','Tháng12'] ,
dayNames: ['Chủ nhật', 'Thứ hai', 'Thứ ba', 'Thứ tư', 'Thứ năm',
 'Thứ sáu', 'Thứ bảy'],
dayNamesMin: ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7'] ,
showWeek: true , showOn: 'both',
changeMonth: true , changeYear: true,
currentText: 'Hôm nay', weekHeader: 'Tuần'
});
});
</script>

</head>

<body>
<?php
include ("kn.php");
$hoten=$_POST["hoten"];
$phai=$_POST["phai"];
$diachi=$_POST["diachi"];
$ngaysinh=$_POST["ngaysinh"];
$dienthoai=$_POST["dienthoai"];
$email=$_POST["email"];
$user=$_POST["user"];
$matkhau=$_POST["matkhau"];
$xacnhanmatkhau=$_POST["xacnhanmatkhau"];
$lenh="select * from khachhang where user='$user'";
$kq=mysql_query($lenh);
$n=mysql_num_rows($kq);
if($n>0&&$_POST["user"]!="")
{
	?>
    <script>
	alert ('Tài khoản này đã có!');
	</script>
    <?php
}
else
{
if(isset($_POST["dk"])&&$_POST ['capcha']==$_SESSION['security_code'])
{
	$lenhthem="insert into khachhang(tenkhachhang,phai,diachi,dienthoai,user,matkhau,email,ngaysinh,xacnhanmatkhau)  			          								values('$hoten','$phai','$diachi','$dienthoai','$user','$matkhau','$email','$ngaysinh','$xacnhanmatkhau')";	
	$kqthem = mysql_query($lenhthem);
	if($kqthem)
	{
		?>
        <script>
		alert('Đăng ký thành công !!!!');
		</script>
        <?php
		
	}
	else
	{
		?>
        <script>
		alert('Đăng ký thất bại !!!!');
		</script>
        <?php
			
	}
}
}
?>
		
	
<form id="formdangky" onSubmit="return CheckSignup()"  name="formdangky" method="post" action="">
  <table width="550" border="1" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFCCCC" bordercolor="#FF33CC" style="border-collapse:collapse">
    <tr>
      <td height="35" colspan="2" align="center" bgcolor="#FF66CC"><strong>ĐĂNG KÝ THÀNH VIÊN</strong></td>
    </tr>
    <tr>
      <td width="170" style="padding-left:10px;">Họ tên</td>
      <td width="370" bgcolor="#FF66CC"><label for="hoten"></label>
      <input name="hoten" type="text" id="hoten" size="40" value="<?php  echo $_POST["hoten"];  ?>"/><font color="#FF0000">(*)
      <span class="hide error" id="hoten_error"> </span> </font>
</td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Phái</td>
      <td>
      <?php
	  if($_GET["phai"]==1)
	  echo "<input type='radio' name='phai' id='nam' value='1' />
      <label for='nam'>Nam
        <input type='radio' name='phai' id='nu' value='0' checked/>
      Nữ</label>";
	  else
	  	echo "<input type='radio' name='phai' id='nam' value='1'checked/>
      <label for='nam'>Nam
        <input type='radio' name='phai' id='nu' value='0'  />
      Nữ</label>";

	  ?>
	  </td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Địa chỉ</td>
      <td><label for="diachi"></label>
      <textarea name="diachi" cols="40" id="diachi"><?php  echo $_POST["diachi"];  ?>
        </textarea>        <font color="#FF0000">(*)<span class="hide error" id="diachi_error"> </span></font></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Ngày sinh</td>
      <td><label for="ngaysinh"></label>
      <input name="ngaysinh" type="text" id="ngaysinh"/></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Điện thoại</td>
      <td><label for="dienthoai"></label>
      <input name="dienthoai" type="text" id="dienthoai" size="40"  value="<?php  echo $_POST["dienthoai"];  ?>"/><font color="#FF0000">(*)
      <span class="hide error" id="dienthoai_error"> </span> </font>
</td>
    </tr>
    <tr>
      <td style="padding-left:10px;">E-mail</td>
      <td><label for="email"></label>
      <input type="text" name="email" id="email" size="40"  value="<?php  echo $_POST["email"];  ?>"/><font color="#FF0000">(*)<span class="hide error" id="email_error"> </span></font></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">User</td>
      <td><label for="user"></label>
      <input type="text" name="user" id="user" value="<?php  echo $_POST["user"];  ?>"/><font color="#FF0000">(*)
      <span class="hide error" id="user_error"> </span> </font>
</td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Mật khẩu</td>
      <td><label for="matkhau"></label>
      <input type="password" name="matkhau" id="matkhau" value="<?php  echo $_POST["matkhau"];  ?>"/><font color="#FF0000">(*)
      <span class="hide error" id="matkhau_error"> </span> </font>
</td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Xác nhận mật khẩu</td>
      <td><label for="xacnhanmatkhau"></label>
      <input type="password" name="xacnhanmatkhau" id="xacnhanmatkhau" value="<?php  echo $_POST["xacnhanmatkhau"];  ?>"/><font color="#FF0000">(*)
      <span class="hide error" id="xacnhanmatkhau_error"> </span> </font>
</td>
    </tr>
    <tr>
<td style="padding-left:10px;">
<label for="capcha">Mã Captcha</label>
</td>
<td>
<input name ="capcha" type="text" id="capcha" value="<?php echo $_POST["capcha"];?>" size "32" maxlength="10"/><font color="#FF0000">(*)
<span class ="hide error" 
id ="capcha_error"></span></font>
</td>

</tr>
<td style="padding-left:180px;"colspan="2"><img src="random_image.php"/><br/>
  <?php
if (isset ($_POST['dk']))
{
	if($_POST ['capcha']==$_SESSION['security_code'])
	{
		echo"Mã xác nhận hợp lệ";
	}
	else
	{
		echo "Mã xác nhận không hợp lệ";
	}
}
?></td>
</tr>

    <tr>
      <td height="30" colspan="2" align="center"><input type="submit" name="dk" id="dk" value="Đăng ký" style="border-radius:10px 10px 10px 10px; background-color:#6FF; color:#33F; padding-left:10px; padding-right:10px;" /></td>
    </tr>
  </table>
</form>
</body>
</html>