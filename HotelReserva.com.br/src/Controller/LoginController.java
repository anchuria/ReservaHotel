package Controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.UsuarioService;
import DAO.UsuarioDAO;
import entity.Usuario;

@Controller
public class LoginController {
	@Autowired
	private UsuarioService usuarioService;	
	
	@RequestMapping(method=RequestMethod.GET, value={"/", "/loginForm"})
	public String loginForm(ModelMap map){
		Usuario usuario = new Usuario();
		map.addAttribute("usuario", usuario);
		return "login";
	}
	
	@RequestMapping(method=RequestMethod.GET, value={"/logout",})
	public String logout(ModelMap map, HttpSession session){
		session.invalidate();
		map.addAttribute("usuario", new Usuario());
		return "login";
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/efetuarLogin")
	public String login(@ModelAttribute("usuario") @Valid Usuario usuario, ModelMap map, HttpSession session, BindingResult result){
		if(result.hasErrors()){
			map.addAttribute("usuario", usuario);
			return "login";
		}
		
		Usuario u = usuarioService.efetuarLogin(usuario.getLogin(), usuario.getSenha());
		
		if(u == null){
			usuario = new Usuario();
			map.addAttribute("usuario", usuario);
			map.addAttribute("msg", "Usuário inválido");
			return "login";
		}
		
		session.setAttribute("usuario", u);
		return "redirect:/categoria/listar";
	}
	
	
}
