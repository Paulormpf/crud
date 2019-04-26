<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="org.crud.DAO.UsuarioDAO"%>
<%@page import="org.crud.Model.Usuario"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Atualizar</title>
</head>
<body>
<%
	String cpf = request.getParameter("cpf");
	UsuarioDAO dao = new UsuarioDAO();
	List<Usuario> retorno = dao.findByCpf(cpf);
	Usuario usu =  new Usuario();
	for(Usuario atual:retorno){
		usu=atual;
	}

%>
	<form name="update" action="sucess-update.jsp" method="POST">
		<label>Cpf:</label><input type="text" name="cpf" disabled="disabled" value="<%=usu.getCpf() %>"><br>
		<label>Nome:</label><input type="text" name="nome" value="<%=usu.getNome() %>" ><br>
		<label>E-mail:</label><input type="text" name="email" value="<%=usu.getEmail() %>"><br>
		<label>Situacao:</label><select id="example" name="situacao">
			<option <%=usu.getSituacao().equals("A") ? "selected=\"selected\"" : "" %>" value="A">Ativo</option>
			<option <%=usu.getSituacao().equals("I") ? "selected=\"selected\"" : "" %>" value="I">Inativo</option>
		</select><br>
		<label>Perfil:</label>
		<select id="example" name="perfil">
			<option <%=usu.getPerfil() == 1 ? "selected=\"selected\"" : "" %>" value="1">Perfil 1</option>
			<option <%=usu.getPerfil() == 2 ? "selected=\"selected\"" : "" %>" value="2">Perfil 2</option>
			<option <%=usu.getPerfil() == 3 ? "selected=\"selected\"" : "" %>" value="3">Perfil 3</option>
		</select><br>
		<label>Funcao:</label>
		<select id="example" name="funcao">
			<option <%=usu.getFuncao() == 1 ? "selected=\"selected\"" : "" %>" value="1">Gestor</option>
			<option <%=usu.getFuncao() == 2 ? "selected=\"selected\"" : "" %>" value="2">Administrador</option>
			<option <%=usu.getFuncao() == 3 ? "selected=\"selected\"" : "" %>" value="3">Frente de Caixa</option>
		</select><br>
		<label>Telefone:</label><input type="text" name="telefone" value="<%=usu.getEmail() %>"><br>
		<input type="submit" name="btCadastrar" value="Cadastrar">
		<a href="lista.jsp" >Voltar</a><br>
	</form>
</body>
</html>