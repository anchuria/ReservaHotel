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






import entity.Endereco;
import entity.Hospede;
import entity.Hospede;
import service.HospedeService;

@Controller
@RequestMapping(value="/hospede")
public class HospedeController {
	
	
	@Autowired
	private HospedeService hospedeService;
	
	
	@RequestMapping(value="listar", method=RequestMethod.GET )
	public String listar(ModelMap map) {	
	 List<Hospede> hospedes = hospedeService.listar();
	 map.addAttribute("hospedes", hospedes);
	 return "hospede/listar";}
	
	@RequestMapping(value="{id}/remove", method=RequestMethod.GET )
	public String remove (@PathVariable long id,ModelMap map) {	
		
		
		
		try {
	 hospedeService.Remover(id);
	 return "redirect:/hospede/listar";
		
	} catch (DataIntegrityViolationException e) {
		 map.addAttribute("msg","O Hospede não pode ser excluido, porque esta veiculado a uma reserva.");
		 return "forward:/hospede/listar";
	} 
	
	
	}
	
	@RequestMapping(value="form", method=RequestMethod.GET )
	public String form (ModelMap map) {
	 Hospede hospede = new Hospede();
	 hospede.setEndereco(new Endereco());
	 map.addAttribute("hospede", hospede);
	 return "hospede/novo";}
	
	
	@RequestMapping(value="{id}/form", method=RequestMethod.GET)
	public String formUpdate(@PathVariable("id") Long id, ModelMap map){
		Hospede hospede = hospedeService.buscarPorId(id);
		map.addAttribute("hospede", hospede);
		return "hospede/update";}
	
	
	
	@RequestMapping(value="salvar", method=RequestMethod.POST)
	public String salvar(@ModelAttribute("hospede") @Valid Hospede hospede, BindingResult result, ModelMap map ){
		if(result.hasErrors()){
			map.addAttribute("hospede",hospede);
			return "hospede/novo";
		}
		hospedeService.salvar(hospede);
		return "redirect:/hospede/listar";}
	
	
	@RequestMapping(value="update", method=RequestMethod.POST)
	public String update(@ModelAttribute("hospede") @Valid Hospede hospede, BindingResult result, ModelMap map ){
		if(result.hasErrors()){
			map.addAttribute("hospede", hospede);
			return "hospede/update";
		}
		hospedeService.atualizar(hospede);
		return "redirect:/hospede/listar";
	}
	
	

}
