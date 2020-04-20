<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! String opt1,opt2,rad; %>
 <% opt1 = request.getParameter("opt1"); opt2 = request.getParameter("opt2"); rad=request.getParameter("r1");%>
<% if(!opt1.matches("[0-9]*") || !opt2.matches("[0-9]*")){%>
	<h1> operonde1 ou operande2 et vide ou ne sont pas des chiffres</h1>
<% }else if(opt1==""){ %>
	 <h1>operonde1 est vide !</h1>
	 <%}else if(opt2==""){ %>
 <h1>operonde2 est vide !</h1>
 <%}else if(rad==null){ %>
 <h1>vouz devez choisissez une operation !</h1>
 <%}%>
 
</body>
</html>