<!DOCTYPE html>
<%@page import="org.crud.DAO.UsuarioDAO"%>
<%@page import="org.crud.Model.Usuario"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<!--
String cpf = request.getParameter("cpf");
String nome = request.getParameter("nome");
String email = request.getParameter("email");
String situacao = request.getParameter("situacao");
Integer perfil = new Integer(request.getParameter("perfil"));
Integer funcao = new Integer(request.getParameter("funcao"));
String telefone = request.getParameter("telefone");
-->
<%
UsuarioDAO dao = new UsuarioDAO();

Usuario obj =  new Usuario();
obj.setCpf(request.getParameter("cpf"));
obj.setNome(request.getParameter("nome"));
obj.setEmail(request.getParameter("email"));
obj.setSituacao(request.getParameter("situacao"));
obj.setPerfil(new Integer(request.getParameter("perfil")));
obj.setFuncao(new Integer(request.getParameter("funcao")));
obj.setTelefone(request.getParameter("telefone"));

dao.salvar(obj);
%>

</body>
</html>