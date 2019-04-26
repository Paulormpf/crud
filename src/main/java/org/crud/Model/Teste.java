package org.crud.Model;

import java.util.List;

import org.crud.DAO.UsuarioDAO;

public class Teste {

	public static void main(String[] args) {
		//Teste create/update
		/*
		Usuario u1 = new Usuario();
		u1.setCpf("11122233344");
		u1.setNome("Teste");
		u1.setEmail("Teste@t.com");
		u1.setPerfil(new Integer(1));
		u1.setSituacao("A");
		u1.setFuncao(new Integer(1));
		u1.setTelefone("123456789");
		
		UsuarioDAO con =  new UsuarioDAO();
		con.salvar(u1);
		*/
		
		//Teste Remover
		/*
		Usuario u1 = new Usuario();
		u1.setCpf("12345678912");
		
		UsuarioDAO con =  new UsuarioDAO();
		con.remover(u1);
		*/
		
		//Teste Listar todos
		/*
		UsuarioDAO con =  new UsuarioDAO();
		System.out.println(con.listarTodos().size());
		List<Usuario> lista= con.listarTodos();
		for(Usuario item:lista){
			System.out.println(item);
		}
		*/
		
		//Teste FindByCPF
		/*
		UsuarioDAO con =  new UsuarioDAO();
		System.out.println(con.findByCpf("321"));
		*/
	}

}
