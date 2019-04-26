package org.crud.Model;

import javax.persistence.*;

@Entity
@Table(name = "usuario_externo")
@NamedQueries({
    @NamedQuery(name = "Usuario.findAll", query = "SELECT p FROM Usuario p"),
    @NamedQuery(name = "Usuario.findByName", query = "SELECT p FROM Usuario p where p.nome like :nome"),
    @NamedQuery(name = "Usuario.findByCpf", query = "SELECT p FROM Usuario p where p.cpf like :cpf ")

})
public class Usuario {
	//nu_cpf varchar(11) NOT NULL, -- Número do cpf do usuário
	@Id
	@Column(name = "nu_cpf")
	private String cpf;

	//no_usuario varchar(60) NOT NULL, -- Nome do Usuário
	@Column(name = "no_usuario")
	private String nome;
	
	//de_email varchar(255) NOT NULL, -- email do usuário
	@Column(name = "de_email")
	private String email;
	
	//ic_situacao varchar(1) NOT NULL, -- Situação, onde: A-Ativo, I-Inativo
	@Column(name = "ic_situacao")
	private String situacao;
	
	//ic_perfil_acesso smallint NOT NULL, -- Perfil do usuário: 1-Gestor Municipal, 2-Gestor Estadual, 3-Gestor Nacional
	@Column(name = "ic_perfil_acesso")
	private Integer perfil;
	
	//co_funcao smallint NOT NULL, -- Código único da funcao do usuário externo
	@Column(name = "co_funcao")
	private Integer funcao;
	
	//nu_telefone varchar(11), -- número do telefone
	@Column(name = "nu_telefone")
	private String telefone;
	
	//Getters and Setters
	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSituacao() {
		return situacao;
	}

	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}

	public Integer getPerfil() {
		return perfil;
	}

	public void setPerfil(Integer perfil) {
		this.perfil = perfil;
	}

	public Integer getFuncao() {
		return funcao;
	}

	public void setFuncao(Integer funcao) {
		this.funcao = funcao;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
	@Override
    public String toString() {
        return cpf + " | "+nome;
    }
	
	 @Override
	    public int hashCode() {
	        int hash = 0;
	        hash += (cpf != null ? cpf.hashCode() : 0);
	        return hash;
	    }
}
