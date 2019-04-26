<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro</title>
</head>
<body>
	<form name="cadastro" action="sucess-create.jsp" method="POST">
		<label>Cpf:</label><input type="text" name="cpf"><br>
		<label>Nome:</label><input type="text" name="nome"><br>
		<label>E-mail:</label><input type="text" name="email"><br>
		<label>Situacao:</label><select id="example" name="situacao">
			<option selected="selected" value="A">Ativo</option>
			<option value="I">Inativo</option>
		</select><br>
		<label>Perfil:</label>
		<select id="example" name="perfil">
			<option selected="selected" value="1">Perfil 1</option>
			<option value="2">Perfil 2</option>
			<option value="3">Perfil 3</option>
		</select><br>
		<label>Funcao:</label>
		<select id="example" name="funcao">
			<option selected="selected" value="1">Gestor</option>
			<option value="2">Administrador</option>
			<option value="3">Frente de Caixa</option>
		</select><br>
		<label>Telefone:</label><input type="text" name="telefone"><br>
		<input type="submit" name="btCadastrar" value="Cadastrar">
		<a href="lista.jsp" >Voltar</a><br>
	</form>
</body>
</html>