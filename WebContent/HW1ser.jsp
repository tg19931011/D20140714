<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
String year=request.getParameter("year"); 
String month=request.getParameter("month");
String date=request.getParameter("date");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">

var d=new Date()

</script>
<title>Insert title here</title>
</head>
<body>
<% 
int dd=1,m=1;
out.print(year+"年"+month+"月");
out.print("<table border=1>");
for(int i=0;i<6;i++){
	out.print("<tr>");
	for(int j=0;j<7;j++)
	{
		out.print("<td>");
		if(i==0){
			switch(j)
			{
			case 0:
			out.print("日");
			break;
			case 1:
			out.print("一");
			break;
			case 2:
			out.print("二");
			break;
			case 3:
			out.print("三");
			break;
			case 4:
			out.print("四");
			break;
			case 5:
			out.print("五");
			break;
			case 6:
			out.print("六");
			break;
			}	//switch case end
							}//for circle end
	if(i>0 && dd<32 && m>9){
	if(i>0){	
	out.print(dd);
	dd++;
	}
	}
			m++;
		out.print("</td>");
		
	}
out.print("</tr>");
}
out.print("</table>");
%>
</body>
</html>