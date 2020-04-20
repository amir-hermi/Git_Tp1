<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! int n=5;%>
<table border="2">
<% String[][] tab =new String[n][n];  %>
<% for(int i=0 ; i<=n ; i++){%>
<tr>
<% for(int j=0 ; j<=n ; j++){%>
<%if((i+j)%2==0){%>
 <td bgcolor="black" width="50" height="50"></td>
<%}else {%>
 <td bgcolor="red" width="50" height="50"></td>
<%} %>
<%} %>
</tr>
<%} %>
</table>

</body>
</html>