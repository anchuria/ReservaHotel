package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import DAO.UsuarioDAO;
import entity.Usuario;
@Service
@Transactional
public class UsuarioService {
	
	@Autowired
	private UsuarioDAO usuarioDAO;

	
	public Usuario efetuarLogin(String login, String senha){
		return usuarioDAO.efetuarLogin(login, senha);
	}
	
	public void Salvar(Usuario usuario) {
			usuarioDAO.salvar(usuario);


		}

}