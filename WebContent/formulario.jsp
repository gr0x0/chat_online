<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="br.com.meslin.chat.Mensagem"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
if(request.getParameter("texto") != null) {
	Mensagem mensagem = new Mensagem();
	mensagem.setIp(request.getRemoteAddr());
	mensagem.setNick((String)session.getAttribute("nick"));
	mensagem.setTexto(request.getParameter("texto"));
	
	synchronized(this) {
		List<Mensagem> listaMensagens = (ArrayList<Mensagem>)application.getAttribute("listaMensagens");
		if(listaMensagens == null) listaMensagens = new ArrayList<Mensagem>();
		listaMensagens.add(mensagem);
		application.setAttribute("listaMensagens", listaMensagens);
	}
}
%>

<form action="formulario.jsp" method="get">
Fala, <%=session.getAttribute("nick") %>!
<input type="text" name="texto">
<input type="submit" value="Falar">
</form>

</body>
</html>