<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sala de Chat</title>
</head>
<body>

<%!
Cookie buscaCookie(String nomeCookie, HttpServletRequest request) {
	Cookie listaPossiveisCookies[] = request.getCookies();
	if(listaPossiveisCookies != null) {
		for(int i=0; i<listaPossiveisCookies.length; i++) {
			if(listaPossiveisCookies[i].getName().equals(nomeCookie)) {
				return listaPossiveisCookies[i];
			}
		}
	}
	return null;
}
%>

<%
	String nick = "";
	Cookie oCookie = buscaCookie("nick", request);
	if(oCookie != null) {
		nick = oCookie.getValue();
		request.getRequestDispatcher("frame.jsp?nick="+nick).forward(request, response);
	}
%>

<form action="frame.jsp" method="get">
Nick:
<input type="text" name="nick" value="<%=nick%>">
<input type="submit" value="Entrar">
</form>

</body>
</html>