<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<body>

	<c:import url="logout-parcial.jsp" />

	<c:if test="${not empty empresa }">
		Empresa ${ empresa } cadastrda com sucesso!
	</c:if>
	<c:if test="${empty empresa }">
		Nenhuma empresa cadastrada.
	</c:if>
	
	
</body>
</html>