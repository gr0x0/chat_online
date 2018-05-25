<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sala de Chat</title>
</head>

<%
String nick;
nick = request.getParameter("nick");
session.setAttribute("nick", nick);

Cookie novoCookie = new Cookie("nick", nick);
novoCookie.setMaxAge(60);
response.addCookie(novoCookie);
%>

<frameset rows="*,50">
	<frame src="mensagens.jsp">
	<frame src="formulario.jsp">
</frameset>

</html>