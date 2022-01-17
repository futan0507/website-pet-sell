<?php
session_start()
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Bán thú nuôi online</title>
<link href="style/csdiv.css" rel="stylesheet" type="text/css" />
<SCRIPT language=JavaScript>
					function tS(){ x=new Date(); x.setTime(x.getTime()); return x; } 
					function lZ(x){ return (x>9)?x:'0'+x; } 
					function tH(x){ if(x==0){ x=12; } return (x>12)?x-=12:x; } 
					function y2(x){ x=(x<500)?x+1900:x; return String(x).substring(0,4) } 
					function dT(){ if(fr==0){ fr=1; document.write('<span id="tP">'+eval(oT)+'</span>'); } tP.innerText=eval(oT); setTimeout('dT()',1000); } 
					function aP(x){ return (x>11)?'':''; } 
					var dN=new Array('Chủ nhật','Thứ Hai','Thứ Ba','Thứ Tư','Thứ Năm','Thứ Sáu','Thứ Bảy'),mN=new Array('-01','-02','-03','-04','-05','-06','-07','-08','-09','-10','-11','-12'),fr=0,oT="tH(tS().getHours())+':'+lZ(tS().getMinutes())+' '+aP(tS().getHours())+' '+'|'+' '+dN[tS().getDay()]+', '+tS().getDate()+''+mN[tS().getMonth()]+'-'+y2(tS().getYear())+''";
				</SCRIPT>
<script type="text/javascript" src="stmenu.js"></script>
</head>

<body>
<?php 
$act = $_GET["act"];
$idhang = $_GET["idhang"];
$idthunuoi = $_GET["idthunuoi"];
$idtin = $_GET["idtin"];
?>
<div id="khung">
	<div id="header">
    	<div id="ngaythang"><SCRIPT language=JavaScript>dT();</SCRIPT>        
        </div><!--ngaythang-->
    
    </div><!--header-->
		<div id="menu">
        <script type="text/javascript" src="menusothink.js"></script>
        
        </div><!--menu-->
       
		<div id="main">
         <div id="left_main">
                  <?php  include("left.php");?>      
            </div><!--left_main-->
        	
            <div id="right_main">
            	<?php  include("right.php");?>
            </div><!--right_main-->
            <div id="center_main">
       	<?php
		if($act==""&&$idhang==""&&$idthunuoi==""&&$idtin=="")
		{
			?>
        	<div id="liveshow">  
            <?php include("liveshow.php"); ?>          
            </div><!--liveshow-->
            <?php
		}
		
		
         ?> 
            <div id="sankhau">
           <?php  include("sankhau.php");  ?>
            </div><!--sankhau-->
        </div><!--center_main-->
    </div><!--main-->
    <div id="footer">   
    </div><!--footer-->

</div><!--khung-->
</body>
</html>