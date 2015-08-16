package service;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;

import DAO.PessoaDAO;
import entity.Pessoa;
import entity.Quarto;

public class PessoaService {

@Autowired	
private PessoaDAO pessoaDAO;


public  void salvar(Pessoa pessoa){
		pessoaDAO.salvar(pessoa);
}



   public List<Pessoa> listar(){
	   return pessoaDAO.listar();
   }



}
