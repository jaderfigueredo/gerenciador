<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url value="/NovaEmpresa" var="linkServletNovaEmpresa" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	

	<form action="${ linkServletNovaEmpresa }" method="post">
		Nome: <input type="text" name="nome"  />
		Data Abertura: <input type="text" name="data"  />
		<input type="submit" value="Enviar" />
	</form>
</body>
</html>