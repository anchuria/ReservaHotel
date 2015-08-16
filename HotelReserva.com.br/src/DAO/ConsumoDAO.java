package DAO;
import org.springframework.stereotype.Repository;

import entity.Consumo;

@Repository
public class ConsumoDAO extends AbstractDAO<Consumo> {

	
	@Override
	public Class<Consumo> entityClass() {
		// TODO Auto-generated method stub
		return Consumo.class;
	}

}
