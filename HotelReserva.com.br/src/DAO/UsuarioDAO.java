package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import entity.Usuario;
@Repository
public class UsuarioDAO extends AbstractDAO<Usuario>{
	
	
	
	@Override
	public Class<Usuario> entityClass() {
		return Usuario.class;
	}
	
	
	public Usuario efetuarLogin(String login, String senha){
		Query query = manager .createQuery("select u from Usuario u where u.login = :login and u.senha = :senha");
		query.setParameter("login", login);
		query.setParameter("senha", senha);
		List<Usuario> usuarios  = query.getResultList();
		if(usuarios != null && !usuarios.isEmpty()){
			return usuarios.get(0);
		}
		return null;
	}
		
	}
	
	
	
	
	
	

