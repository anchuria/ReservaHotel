package DAO;



import java.util.List;

import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import entity.Hospede;
@Repository
public class HospedeDAO extends AbstractDAO<Hospede>{
	
	
	@Override
	public Class<Hospede> entityClass(){
		return Hospede.class;
	}
	
	
	
	
	
	
	
	
}
