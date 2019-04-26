<!DOCTYPE html>
<%@page import="java.util.List"%>
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
	
	
	UsuarioDAO dao = new UsuarioDAO();
	List<Usuario> retorno = dao.findByCpf(cpf);
	Usuario obj =  new Usuario();
	for(Usuario atual:retorno){
		obj=atual;
	}
	obj.setCpf(cpf);
	obj.setNome(nome);
	obj.setEmail(email);
	obj.setSituacao(situacao);
	obj.setPerfil(new Integer(perfil));
	obj.setFuncao(new Integer(funcao));
	obj.setTelefone(telefone);
	
	try{
		dao.salvar(obj);
		msg = "Atualizado com sucesso";
	}catch(Exception ex){
		msg = "Erro ao atualizar";
	}
			
	

%>
	<h1>Atualização</h1>
	<div>
		<%=msg %>.<br>
		<a href="lista.jsp">Voltar</a>
	</div>
</body>
</html>