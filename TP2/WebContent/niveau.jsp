<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String reponce1 = request.getParameter("r");String reponce2 = request.getParameter("r1"); String nom = request.getParameter("nom"); 
Integer intreponce1 = Integer.parseInt(reponce1); 
Integer intreponce2 = Integer.parseInt(reponce2); 
Integer somme=intreponce1+intreponce2; %> 
<%if(somme<=3){ %>
<Strong><%= nom %> Vous étes un débutant</Strong>
<%}else if(somme<=5){ %>
<Strong><%= nom %> Vous avez un niveau moyen</Strong>
<%}else{ %>
<Strong><%= nom %> Vous étes un expert !</Strong>
<%} %>
</body>
</html>