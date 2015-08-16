package service;

import org.springframework.beans.factory.annotation.Autowired;

import DAO.ProdutoDAO;
import entity.Produto;

public class ProdutoService {

	@Autowired
	private ProdutoDAO produtoDAO;
	
	public void salvar(Produto produto) {
		try {

			if (produto.getNome().equals(null) && produto.getPreco() > 0) {
				
				produtoDAO.salvar(produto);

			}

		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	public void remover(Produto produto) {

		try {
			
			produtoDAO.remover(produto);

		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	public void atualizar(Produto produto) {

		try {
			if (produto.getNome().equals(null) && produto.getPreco() > 0) {
			
				produtoDAO.atualizar(produto);
			}
			;

		} catch (Exception e) {

			e.printStackTrace();
		}
	};

}
