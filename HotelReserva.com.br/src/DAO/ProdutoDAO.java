package DAO;

import javax.persistence.EntityManager;

import org.springframework.stereotype.Repository;

import entity.Produto;
@Repository
public class ProdutoDAO extends AbstractDAO<Produto>{


	@Override
	public Class<Produto> entityClass() {
		// TODO Auto-generated method stub
		return Produto.class;
	}

}
