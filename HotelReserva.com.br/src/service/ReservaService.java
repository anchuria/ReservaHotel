package service;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import DAO.ReservaDAO;
import entity.Reserva;
@Service
@Transactional(propagation=Propagation.REQUIRED)
public class ReservaService {

	@Autowired
	ReservaDAO reservaDAO;
	public void salvar(Reserva reserva){
				
			reservaDAO.salvar(reserva);
		}
	
	public void remover(Reserva reserva){
			reservaDAO.remover(reserva);
		}


	public void atualizar(Reserva reserva){
	
			reservaDAO.atualizar(reserva);
	

		}

	public Reserva buscaproID(long id){
	
			return reservaDAO.buscarPorId(id);
		
		}
	
	
	public List<Reserva> lista(){
		
		return reservaDAO.listar();
	}

}
