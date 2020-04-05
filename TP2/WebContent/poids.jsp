<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String taille1=request.getParameter("taille");String sexe=request.getParameter("r"); %>
<%float converttaille=Float.parseFloat(taille1); %>
<%if(sexe.equals("Femme")){ %>
<%float somme=(72.7f*converttaille)-58;  %> 
<Strong>Votre poids idéal(en KG) : <%= somme%></Strong>
<%}else if(sexe.equals("Homme")){ %> 
<%float somme=(62.1f*converttaille)-44.7f;   %> 
<Strong>Votre poids idéal(en KG) : <%= somme%></Strong> 
<%} %>
</body>
</html>