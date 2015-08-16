package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import entity.Quarto;
@Repository
public class QuartoDAO extends AbstractDAO<Quarto> {
	
	public QuartoDAO() {
	}

	@Override
	public Class<Quarto> entityClass() {
		
		return Quarto.class;
	}


public List<Quarto> procurar(long categoriaId, long id){
	
		
		Query query = manager.createQuery("select c from " + entityClass().getSimpleName() + " c where categoria_id = "+categoriaId+ "or andar ="+id+" or id = "+id);
		return query.getResultList();
		
			
		
	
	}

public List<Quarto> procurarID(long id){
	
	
	Query query = manager.createQuery("select c from " + entityClass().getSimpleName() + " c where c.andar ="+id+" or c.id = "+id);
	return query.getResultList();
	
	
}



public List<Quarto> procurarCategoria(String categoriaId){
	
	Query query = manager.createQuery("select c from " + entityClass().getSimpleName() + " c where c.categoria_id = "+categoriaId);
	return query.getResultList();



}
}
