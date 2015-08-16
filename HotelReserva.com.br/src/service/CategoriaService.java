package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import DAO.CategoriaDAO;
import entity.Categoria;
@Service
@Transactional(propagation=Propagation.REQUIRED)
public class CategoriaService {
	@Autowired
	CategoriaDAO categoriaDAO;

	public void Salvar(Categoria categoria) {
		if (!categoria.getNome().equals(null) && categoria.getCapacidade() > 0) {
			categoriaDAO.salvar(categoria);


		}
		;

	};

	public List<Categoria> listar() {
		return categoriaDAO.listar();

	};

	public void atualizarCategoria(Categoria categoria) {
		if (categoriaDAO.buscarPorId(categoria.getId()) != null) {
			categoriaDAO.atualizar(categoria);
		}
		;

	};

	public void removeCatogoria(Categoria categoria)throws DataIntegrityViolationException {
		if (categoriaDAO.buscarPorId(categoria.getId()) != null) {
			categoriaDAO.remover(categoria);
		}
		;
	};

	public List<Categoria> listarPesquisada(String s) {
		return categoriaDAO.procurar(s);

	};
	
	public Categoria buscarPorId(Long id){
		return categoriaDAO.buscarPorId(id);
	}

	
	
}
