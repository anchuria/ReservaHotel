package Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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








import entity.Categoria;
import entity.Quarto;
import service.CategoriaService;
import service.QuartoService;

@Controller
@RequestMapping(value="/quarto")
public class QuartoController {
	
	
	@Autowired
	private QuartoService quartoService;
	@Autowired
	private CategoriaService categoriaService;
	
	@RequestMapping(value="listar", method=RequestMethod.GET )
	public String listar(ModelMap map) {
	 List<Categoria> categorias = categoriaService.listar();	
	 List<Quarto> quartos = quartoService.listar();
	 map.addAttribute("categorias", categorias);
	 map.addAttribute("quartos", quartos);
	 return "quarto/listar";}
	
	@RequestMapping(value="{id}/remove", method=RequestMethod.GET )
	public String remove (@PathVariable long id, ModelMap map) {	
	
	try {
		quartoService.remover(new Quarto(id));
		return "redirect:/quarto/listar";
		
	} catch (DataIntegrityViolationException e) {
		map.addAttribute("msg","O quarto não pode ser excluido, Porque ele esta veiculado a uma reserva");
		return "forward:/quarto/listar";
	}
	
	}
	
	@RequestMapping(value="form", method=RequestMethod.GET)
	public String form(ModelMap map){
		Quarto quarto = new Quarto();
		quarto.setCategoria(new Categoria());
		Map<Long, String> selectCategoria = selectCategoria();
		map.addAttribute("categoria",selectCategoria);
		map.addAttribute("quarto", quarto);
		return "quarto/novo";
	}
	
	
	@RequestMapping(value="{id}/form", method=RequestMethod.GET)
	public String formUpdate(@PathVariable("id") Long id, ModelMap map){
		Quarto quarto = quartoService.procurarID(id);
		Map<Long, String> selectCategoria = selectCategoria();
		map.addAttribute("categoria",selectCategoria);
		map.addAttribute("quarto", quarto);
		return "quarto/update";}
	
	
	
	@RequestMapping(value="salvar", method=RequestMethod.POST)
	public String salvar(@ModelAttribute("quarto") @Valid Quarto quarto, BindingResult result, ModelMap map ){
		if(result.hasErrors()){
			map.addAttribute("quarto", quarto);
			return "quarto/novo";
		}
		quartoService.salvar(quarto);
		return "redirect:/quarto/listar";
	}
	
	
	@RequestMapping(value="update", method=RequestMethod.POST)
	public String update(@ModelAttribute("quarto") @Valid Quarto quarto, BindingResult result, ModelMap map ){
		if(result.hasErrors()){
			map.addAttribute("quarto", quarto);
			return "quarto/update";
		}
		quartoService.atualizar(quarto);
		return "redirect:/quarto/listar";
	}
	
	
	public Map<Long, String> selectCategoria(){
		
		List<Categoria> categorias = categoriaService.listar();
		Map<Long, String> mapa = new HashMap<Long, String>();
		
		for(Categoria categoria:categorias){
			mapa.put(categoria.getId(),categoria.getNome());
		}
		return mapa;
	}
	
	
	

}
