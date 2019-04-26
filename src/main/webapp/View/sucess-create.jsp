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
	String cpf = request.getParameter("cpf");
	String nome = request.getParameter("nome");
	String email = request.getParameter("email");
	String situacao = request.getParameter("situacao");
	String perfil = request.getParameter("perfil");
	String funcao = request.getParameter("funcao");
	String telefone = request.getParameter("telefone");
	String msg = "";
	
	if(	cpf == null || cpf == ""||
	nome == null || nome == "" ||
	email == null || email == "" ||
	situacao == null || situacao == "" ||
	perfil == null || perfil == "" ||
	funcao == null || funcao == "" ||
	telefone == null || telefone == ""){
		response.sendRedirect("create.jsp");
	}else{
		UsuarioDAO dao = new UsuarioDAO();
		Usuario obj =  new Usuario();
		obj.setCpf(cpf);
		obj.setNome(nome);
		obj.setEmail(email);
		obj.setSituacao(situacao);
		obj.setPerfil(new Integer(perfil));
		obj.setFuncao(new Integer(funcao));
		obj.setTelefone(telefone);
		try{
			dao.salvar(obj);
			msg = "Salvo com sucesso";
		}catch(Exception ex){
			msg = "Erro ao salvar";
		}
			
	}
	

%>
	<h1>Cadastro</h1>
	<div>
		<%=msg %>.<br>
		<a href="lista.jsp">Voltar</a>
	</div>
</body>
</html>