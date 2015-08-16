package DAO;

import javax.persistence.EntityManager;

import org.springframework.stereotype.Repository;

import entity.Pessoa;
@Repository
public class PessoaDAO  extends AbstractDAO<Pessoa>{


	public Class<Pessoa> entityClass() {
		return Pessoa.class;
	}

}
