package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import DAO.HospedeDAO;
import DAO.QuartoDAO;
import DAO.UsuarioDAO;
import entity.Hospede;
import entity.Quarto;
@Service
@Transactional(propagation=Propagation.REQUIRED)

public class HospedeService {

	@Autowired
	private HospedeDAO hospedeDAO;
	
	@Autowired
	private UsuarioDAO usuarioDAO;
	
	public void salvar(Hospede hospede) {
		
				
				/*usuarioDAO.salvar(hospede.getUsuario());*/
				hospedeDAO.salvar(hospede);
		
	}

	public void atualizar(Hospede hospede) {
		
				
				hospedeDAO.atualizar(hospede);
			

		

	}

	public void Remover(long id) throws DataIntegrityViolationException{
		try {
			if (hospedeDAO.buscarPorId(id) != null) {
				hospedeDAO.remover(hospedeDAO.buscarPorId(id));
				usuarioDAO.remover(hospedeDAO.buscarPorId(id).getUsuario());

			}

		} catch (Exception e) {

			e.printStackTrace();
		}
				

	}
	
	
	public Hospede buscarPorId(long id){		
	return hospedeDAO.buscarPorId(id);	
	}
	
	
	
	public List<Hospede> listar(){
		
		return hospedeDAO.listar();
	}

}
