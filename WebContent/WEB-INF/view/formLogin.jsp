<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.modelo.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:url value="/entrada" var="linkServletNovaEmpresa" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="${ linkServletNovaEmpresa }" method="post" >
		Login: <input type="text" name="login" value="" />
		Senha: <input type="password" name="senha" value="" />
		<input type="submit" value="Enviar" />
		<input type="hidden" name="acao" value="Login" />
	</form>
</body>
</html>