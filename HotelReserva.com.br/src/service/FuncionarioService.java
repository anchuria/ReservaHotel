package service;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import DAO.FuncionarioDAO;
import entity.Funcionario;
@Service
@Transactional(propagation=Propagation.REQUIRED)
public class FuncionarioService {

	@Autowired
	FuncionarioDAO funcionarioDAO;
	

	public  void salvar(Funcionario funcionario) {
		funcionarioDAO.salvar(funcionario);
	}
	
	
	public List<Funcionario> listar(){
		
		
		return funcionarioDAO.listar();
		
	}
	

}
