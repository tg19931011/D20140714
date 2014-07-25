<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>Insert title here</title>
</head>
<body>

<% 
int year=Integer.parseInt(request.getParameter("year"));
int month=Integer.parseInt(request.getParameter("month"));
int date=1;
if(year<1900 && year>2100)
{
	out.print("請輸入1900~2099");
	}
Calendar cal = Calendar.getInstance();//設定年月日
cal.set(year,month-1,date);
out.print(cal.get(Calendar.YEAR));
out.print("年");
out.print(cal.get(Calendar.MONTH)+1);
out.print("月");
int Dom =cal.getActualMaximum(Calendar.DAY_OF_MONTH);
out.print(cal.getActualMaximum(Calendar.DAY_OF_MONTH));
out.print("日");
int Dow = cal.get(Calendar.DAY_OF_WEEK)-1;//判斷為星期幾


out.print(cal.get(Calendar.DAY_OF_WEEK)-1+"<br/>");
out.print("<table border=1>");
out.print(Dom+Dow+"<br>");
int mond;
if((Dom+Dow)<=28)
{mond=4;}
else if((Dom+Dow)>=36)
{mond=6;}
else
{mond=5;}
int dd=1;int m=1;// dd=天數  m
for(int i=0;i<=mond;i++){
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
	if(i>0 && dd<=cal.getActualMaximum(Calendar.DAY_OF_MONTH)  && m>cal.get(Calendar.DAY_OF_WEEK)+6){
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