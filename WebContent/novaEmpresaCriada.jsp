<%
	String nomeEmpresa =(String) request.getAttribute("empresa");
	System.out.println(nomeEmpresa);
%>


<html>
<body>
Empresa <%= nomeEmpresa %> cadastrda com sucesso!
</body>
</html>