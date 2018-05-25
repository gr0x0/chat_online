<%@page import="java.util.ArrayList"%>
<%@page import="br.com.meslin.chat.Mensagem"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="5">
<title>Insert title here</title>
</head>
<body>

<%
List<Mensagem> listaMensagens = (ArrayList<Mensagem>)application.getAttribute("listaMensagens");
%>

<table border="1">
	<tr>
		<td>Nick</td>
		<td>Texto</td>
		<td>IP</td>
	</tr>
<%
if(listaMensagens == null) {
	out.print("<tr><td colspan='3'>Sem mensagens</td></tr>");
}
else {
	for(Mensagem mensagem : listaMensagens) {
%>
	<tr>
		<td><%=mensagem.getNick() %></td>
		<td><%=mensagem.getTexto() %></td>
		<td><%=mensagem.getIp() %></td>
	</tr>
<%		
	}
}
%>	
</table>

</body>
</html>