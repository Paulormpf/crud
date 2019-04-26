<!DOCTYPE html>
<%@page import="org.crud.DAO.UsuarioDAO"%>
<%@page import="org.crud.Model.Usuario"%>
<html>
<head>
</head>
<body>
<!--

-->
<%
	String msg = "";
	String cpf = request.getParameter("cpf");
	Usuario usu =  new Usuario();
	usu.setCpf(cpf);
	UsuarioDAO dao = new UsuarioDAO();
	dao.remover(usu);
%>
	<h1>Remover</h1>
	<div>
		Usuario removido.<br>
		<a href="lista.jsp">Voltar</a>
	</div>
</body>
</html>