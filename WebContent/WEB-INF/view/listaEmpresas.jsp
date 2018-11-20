<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.modelo.Empresa" %>
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
				<form action="<c:url value="entrada"/>" method="post" >
					<input type="hidden" value="${empresa.id }" name="id" />
					<input type="submit" value="Remover" />
					<input type="hidden" name="acao" value="RemoveEmpresa" />
				</form> 
				<form action="<c:url value="entrada"/>" method="get" >
					<input type="hidden" value="${empresa.id }" name="id" />
					<input type="submit" value="Editar" />
					<input type="hidden" name="acao" value="MostraEmpresa" />
				</form> 
			</li>
		</c:forEach>
	</ul>
	
	<ul>
	
	</ul>

</body>
</html>