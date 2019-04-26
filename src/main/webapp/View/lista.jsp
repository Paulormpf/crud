<%@page import="org.crud.Model.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="org.crud.DAO.UsuarioDAO"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listagem</title>
</head>
<body>
<%
	UsuarioDAO dao =  new UsuarioDAO();
	List<Usuario> lista = dao.listarTodos();
	System.out.println(lista);
%>
	<h1>Usuario Listagem</h1>
	<div>
		<a href="create.jsp">Novo Usuario</a><br>
		<form>
		<input type="text">
		<input type="submit" value="Pesquisar"><br>
		Resultados: <%=lista.size() %>
		<table>
			<tr>
				<th>CPF</th>
				<th>Nome</th>
				<th>E-mail</th>
				<th>Telefone</th>
				<th>Situação</th>
				<th>Perfil</th>
				<th>Função</th>
				<th>Ações</th>
			</tr> 

			<%
			for(Usuario item:lista){
			%>
			<tr>
				<td><%=item.getCpf() %></td>
				<td><%=item.getNome() %></td>
				<td><%=item.getEmail() %></td>
				<td><%=item.getTelefone() %></td>
				<td><%=(item.getSituacao().equals("A")) ? "Ativo" : "Inativo" %></td>
				<td><%=(item.getPerfil() == 1) ? "Perfil 1" : ((item.getPerfil() == 2) ? "Perfil 2" : "Perfil 3") %></td>
				<td><%=(item.getFuncao() == 1) ? "Gestor" : ((item.getFuncao() == 2) ? "Administrador" : "Frente de Caixa") %></td>
				<td><a href="update.jsp?cpf=<%=item.getCpf()%>">Editar</a>
					<a href="sucess-delete.jsp?cpf=<%=item.getCpf()%>">Excluir</a>
				</td>
			</tr>
			<%
			}
			%>
		</table>
		</form>
	</div>
</body>
</html>