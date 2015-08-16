package Controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.CategoriaService;
import entity.Categoria;

@Controller
@RequestMapping(value = "/categoria")
public class CategoriaController {

	@Autowired
	private CategoriaService categoriaService;

	@RequestMapping(value = "listar", method = RequestMethod.GET)
	public String listar(ModelMap map) {
		List<Categoria> categorias = categoriaService.listar();
		map.addAttribute("pesquisa", new String());
		map.addAttribute("categorias", categorias);
		return "categoria/listar";
	}

	@RequestMapping(value = "pesquisa", method = RequestMethod.GET)
	public String pequisa(@PathVariable("pesquisa") String s, ModelMap map) {
		if (s.equals(null)) {
			List<Categoria> categorias = categoriaService.listar();
			map.addAttribute("categorias", categorias);
			return "categoria/listar";

		}

		List<Categoria> categorias = categoriaService.listarPesquisada(s);
		map.addAttribute("categorias", categorias);
		return "categoria/listar";
	}
	
	
	

	@RequestMapping(value = "{id}/remover", method = RequestMethod.GET)
	public String remove(@PathVariable long id,ModelMap map) {
		try {
		categoriaService.removeCatogoria(new Categoria(id));
		return "redirect:/categoria/listar";
		
			
		} catch (DataIntegrityViolationException e) {
			map.addAttribute("msg", "A categoria "+categoriaService.buscarPorId(id).getNome()+" não pode ser excluida, Ela esta veiculada a um ou mais quarto.");
			return "forward:/categoria/listar";
		}
		

	}
	
	
	
	
	

	@RequestMapping(value = "form", method = RequestMethod.GET)
	public String form(ModelMap map) {
		Categoria categoria = new Categoria();
		map.addAttribute("categoria", categoria);
		return "categoria/novo";
	}

	@RequestMapping(value = "{id}/form", method = RequestMethod.GET)
	public String formUpdate(@PathVariable("id") Long id, ModelMap map) {
		Categoria categoria = categoriaService.buscarPorId(id);
		map.addAttribute("categoria", categoria);
		return "categoria/update";
	}

	@RequestMapping(value = "salvar", method = RequestMethod.POST)
	public String salvar(
			@ModelAttribute("categoria") @Valid Categoria categoria,
			BindingResult result, ModelMap map) {
		if (result.hasErrors()) {
			map.addAttribute("categoria", categoria);
			return "categoria/novo";
		}
		categoriaService.Salvar(categoria);
		return "redirect:/categoria/listar";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(
			@ModelAttribute("categoria") @Valid Categoria categoria,
			BindingResult result, ModelMap map) {
		if (result.hasErrors()) {
			map.addAttribute("categoria", categoria);
			return "categoria/update";
		}
		categoriaService.atualizarCategoria(categoria);
		return "redirect:/categoria/listar";
	}

}