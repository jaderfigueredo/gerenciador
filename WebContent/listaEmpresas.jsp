<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	<c:if test="${not empty empresa }">
		Empresa ${ empresa } cadastrda com sucesso!
	</c:if>
	
	Lista de Empresas: <br/>
	
	<ul>
		<c:forEach items="${empresas }" var="empresa">
			<li>
				${empresa.nome } - 
				<fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy" /> - 
				<a href="<c:url value="EditarEmpresa" />" >[ Editar ]</a> | 
				<a href="<c:url value="ExcluirEmpresa" />" >[ Excluir ]</a> 
			</li>
		</c:forEach>
	</ul>
	
	<ul>
	
	</ul>

</body>
</html>