package org.crud.DAO;
import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.crud.Model.Usuario;

public class UsuarioDAO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	EntityManager em;
	EntityManagerFactory emf;
	
	public UsuarioDAO() {
		emf = Persistence.createEntityManagerFactory("crud");
		em = emf.createEntityManager();
	}
	
	public void salvar(Usuario usuario)  throws Exception {
		 try {
			em.getTransaction().begin();
			em.merge(usuario);
			em.getTransaction().commit();
			emf.close();
		} catch (RuntimeException e) {
	        em.getTransaction().rollback();
	        throw e;
	    } finally {
	        em.close();
	        
	    }
	}
	
	public void update(Usuario usuario)  throws Exception {
		 try {
			em.getTransaction().begin();
			em.merge(usuario);
			em.getTransaction().commit();
			emf.close();
		} catch (RuntimeException e) {
	        em.getTransaction().rollback();
	        throw e;
	    } finally {
	        em.close();
	        
	    }
	}
	
	public void remover(Usuario usuario) throws Exception{
		try {
			em.getTransaction().begin();
			Query q = em.createNativeQuery("delete from usuario_externo where nu_cpf like '" +usuario.getCpf()+"'");
			q.executeUpdate();
			em.getTransaction().commit();
			emf.close();
		} catch (RuntimeException e) {
	        em.getTransaction().rollback();
	        throw e;
	    } finally {
	        em.close();   
	    }
	}
	
	public List<Usuario> listarTodos(){
		return em.createNamedQuery("Usuario.findAll").getResultList();
	}
	
	public List<Usuario> findByCpf(String cpf){
		return em.createNamedQuery("Usuario.findByCpf").setParameter("cpf", cpf).getResultList();
	}
}
