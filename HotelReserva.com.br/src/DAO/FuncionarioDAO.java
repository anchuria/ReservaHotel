package DAO;

import org.springframework.stereotype.Repository;

import entity.Funcionario;

@Repository
public class FuncionarioDAO extends AbstractDAO<Funcionario> {

	public Class<Funcionario> entityClass() {
		return Funcionario.class;
	}








}
