package service;

import java.util.List;





import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import DAO.QuartoDAO;
import entity.Quarto;
@Service
@Transactional(propagation=Propagation.REQUIRED)

public class QuartoService {
	@Autowired
	QuartoDAO quartoDAO;
	

	public void salvar(Quarto quarto) {

		try {
			if ( quarto.getAndar() > 0
					&& quarto.getNumero() > 0) {
				quartoDAO.salvar(quarto);
				

			}

		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	public void remover(Quarto quarto) throws DataIntegrityViolationException {

		try {
			quartoDAO.remover(quarto);
			

		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	public void atualizar(Quarto quarto) {
		try {
			if (quarto.getCategoria() != null && quarto.getAndar() > 0
					&& quarto.getNumero() > 0) {
				quartoDAO.atualizar(quarto);
				
			}
			;

		} catch (Exception e) {

			e.printStackTrace();
		}
	}
	
	public List<Quarto> listar(){
		return quartoDAO.listar();
	}
	
	
	public List<Quarto> pesquisa(long categoriaId,long id){		
		
		if(categoriaId > 0 || id>0){	
		
		return quartoDAO.procurar(categoriaId, id);
		}
		
		
		
		return this.listar();
	}
	
	public List<Quarto> pesquisaId(long id){
		
	return quartoDAO.procurarID(id);}
	
	
	
	public Quarto procurarID(long id){
		
		return quartoDAO.buscarPorId(id);}
	
	
	
	
	
	public List<Quarto> pesquisaCATEGORIA(String categoriaId){
	return quartoDAO.procurarCategoria(categoriaId);}
	
	
	
	
	
}
