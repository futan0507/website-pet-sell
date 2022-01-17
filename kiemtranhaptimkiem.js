// JavaScript Document
function kiemtranhap()
{
	
	with(document.formtim)
	{
		if(ten.value=="")
		{
			alert (' Bạn phải nhập tên thú nuôi cần tìm');
			ten.focus();
			ten.select()
			return false;
		}
	}
}