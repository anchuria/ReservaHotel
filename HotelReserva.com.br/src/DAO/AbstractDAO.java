package DAO;

import java.util.List;

import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.EntityManager;

import org.hibernate.QueryException;
import org.springframework.dao.DataIntegrityViolationException;

import entity.AbstractEntity;
import entity.Categoria;


public abstract class AbstractDAO<T extends AbstractEntity> {

	@PersistenceContext
	protected EntityManager manager;
		
	public  void salvar(T entity){
		manager.persist(entity);
		
	}
	
	public void atualizar(T entity){
		manager.merge(entity);
	}
	
	public void remover(T entity)throws DataIntegrityViolationException{
		entity = manager.find(entityClass(), entity.getId());
		manager.remove(entity);
	}
	
	public List<T> listar(){
		Query query = manager.createQuery("select c from " + entityClass().getSimpleName() + " c");
		return query.getResultList();
	}	
	
	
	public List<T> procurar(String s){
		try {
			
			Query query = manager.createQuery("select c from " + entityClass().getSimpleName() + " c where c.nome like '%"+s+"%'");
			return query.getResultList();
		} catch (QueryException q) {
			return null;
		}
	}	
	
	
	

	public T buscarPorId(long id){
		return manager.find(entityClass(), id);
	}
	
	
	
	public abstract Class<T> entityClass();
}
