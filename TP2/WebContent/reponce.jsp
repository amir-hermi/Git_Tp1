<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! String opt1,opt2,rad; int resultat; %>
 <% opt1 = request.getParameter("opt1"); opt2 = request.getParameter("opt2"); rad=request.getParameter("r1");
 Integer intopt1=Integer.parseInt(opt1.trim()); 
 Integer intopt2=Integer.parseInt(opt2.trim()); 
  
 if(rad=="+"){
	 resultat=intopt1+intopt2;%>
	 <h1>Le resultat est : <%= resultat%></h1>
<%  }else if(rad=="-"){
	 resultat=intopt1-intopt2; %>
	 <h1>Le resultat est : <%= resultat%></h1>
 <%}else if(rad=="*"){
	 resultat=intopt1*intopt2; %>
	 <h1>Le resultat est : <%= resultat%></h1>
 <% }else{
	 resultat=intopt1/intopt2;%>
	 <h1>Le resultat est : <%= resultat%></h1>
 <%} %>



</body>
</html>