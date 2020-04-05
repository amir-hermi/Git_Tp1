<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>votre formulaire</title>
</head>
<body>
<%! String nom, email; %>
<% nom = request.getParameter("t1"); email = request.getParameter("t2"); %>
<h1>
Vous avez fourni les informations suivantes :</h1>
<br><br>
nom : <%=nom %>
<br><br>
Email : <%=email %>
</body>
</html>