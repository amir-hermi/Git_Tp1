<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!String a,b,c;
int somme;%>

<% a = request.getParameter("A");b = request.getParameter("B");c=request.getParameter("C"); 

 Integer inta=Integer.parseInt(a.trim()); 
 Integer intb=Integer.parseInt(b.trim()); 
 Integer intc=Integer.parseInt(c.trim()); 
 
 %>
<%somme=(intb*intb)-(4*inta)*intc; %>
<%if(somme<0){ %> 
<body style='background-color: red;'>
<center><font size="50">Aucun résultat Réel</font></center>
<% }else if(somme==0){ %>
<%somme=(-intb/(2*inta)); %>
<center><font size="50"><%= somme %> </font></center>
<%}else{ %>
<body style='background-color: green;'>
<p>Deux solution</p>
<center><font size="50">X1=<%= (-intb-Math.sqrt(somme)/(2*inta)) %> </font></center><br>
<center><font size="50">X2=<%= (-intb+Math.sqrt(somme)/(2*inta)) %> </font></center>
<%} %> 
</body>
</html>