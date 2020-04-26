<jsp:useBean id="authentificationUtilisateur" 
class="beans.Authentification" scope="page"></jsp:useBean>
<%! String titre ="Tentative d'authentification"; %>
<html>
<head>
<title><%= titre %></title>
</head>
<body>
<h3><u><%= titre %></u></h3>
<%
String loginSaisi ="USER1";
String motDePasseSaisi="PASS1";
%>
<jsp:setProperty property="login" name="authentificationUtilisateur" 
value="<%=loginSaisi %>"/>

<jsp:setProperty property="password" name="authentificationUtilisateur" 
value="<%=motDePasseSaisi %>"/>

<b>Vous avez saisi les informations suivantes:</b><p>
Nom d'utilisateur: <jsp:getProperty property="login" name="authentificationUtilisateur"/><br>
Mot de passe: <jsp:getProperty property="password" name="authentificationUtilisateur"/><br>
<p>
<%
boolean valide=authentificationUtilisateur.valide();
if (valide){
%>
<font color="green">Ces paramètres sont correctes.</font>
<% 	
}else {
%>
<font color="red">Cette authentification est invalide.</font>
<% 	
}
%>
</body>
</html>