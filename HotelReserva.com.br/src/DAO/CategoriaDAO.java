package DAO;

import java.util.List;

import org.springframework.stereotype.Repository;



import entity.Categoria;

@Repository
public class CategoriaDAO extends AbstractDAO<Categoria> {

	@Override
	public Class<Categoria> entityClass() {
		return Categoria.class;
	}

}
