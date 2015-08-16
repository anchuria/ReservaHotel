package Controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.UsuarioService;
import entity.Usuario;;
@Controller
@RequestMapping(value="/usuario")
public class UsuarioController {
	@Autowired
	private UsuarioService usuarioService;
	
	public String salvar(@ModelAttribute("usuario") @Valid Usuario usuario, BindingResult result, ModelMap map ){
		if(result.hasErrors()){
			map.addAttribute("usuario",usuario);
			return "usuario/novo";
		}
		usuarioService.Salvar(usuario);
		return "redirect:/usuario/novo";}
	
	
	
	
}
