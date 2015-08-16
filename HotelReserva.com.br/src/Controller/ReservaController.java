package Controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import entity.Categoria;
import entity.Funcionario;
import entity.Hospede;
import entity.Quarto;
import entity.Reserva;
import service.FuncionarioService;
import service.HospedeService;
import service.QuartoService;
import service.ReservaService;

@Controller
@RequestMapping(value = "/reserva")
public class ReservaController {

	@Autowired
	ReservaService reservaService;
	@Autowired
	HospedeService hospedeService;
	@Autowired
	QuartoService quartoService;
	@Autowired
	FuncionarioService funcionarioService;
		
	
	
	@RequestMapping(value = "listar", method = RequestMethod.GET)
	public String listar(ModelMap map){
		
		List<Reserva> reserva = reservaService.lista();
		map.addAttribute("reservas",reserva);
		return "reserva/listar";
		
	}
	
	@RequestMapping(value = "form", method = RequestMethod.GET)
	public String form(ModelMap map){
		Reserva reserva = new Reserva();
		reserva.setDataInicial(new Date());
		reserva.setDataFinal(new Date());
		reserva.setFuncionario(new Funcionario());
		reserva.setHospede(new Hospede());
		reserva.setQuarto(new Quarto());
		reserva.setStatus("Em Espera");
		Map<Long, String> selectquarto = selectquarto();
		Map<Long, String> selectHospede= selectHospede();
		Map<Long, String> selectFuncionario = selectFuncionario();
		
		map.addAttribute("selectquarto",selectquarto);
		map.addAttribute("selectHospede",selectHospede);
		map.addAttribute("selectFuncionario",selectFuncionario);
		map.addAttribute("reserva",reserva);
		
		return "reserva/novo";
	}
	
	
	@RequestMapping(value = "{id}/remover", method = RequestMethod.GET)
	public String remove(@PathVariable long id, ModelMap map){
		
		reservaService.remover(reservaService.buscaproID(id));		
		return "redirect:/reserva/listar";
		
	}
	
	@RequestMapping(value = "{id}/checkin", method = RequestMethod.GET)
	public String checkin(@PathVariable long id, ModelMap map){
		
		Reserva reserva = reservaService.buscaproID(id);
		reserva.setDataCheckin(new Date());
		reservaService.atualizar(reserva);		
		return "redirect:/reserva/listar";
		
	}
	@RequestMapping(value = "{id}/checkout", method = RequestMethod.GET)
	public String checkout(@PathVariable long id, ModelMap map){
		
		Reserva reserva = reservaService.buscaproID(id);
		reserva.setDataCheckout(new Date());
		reservaService.atualizar(reserva);		
		return "redirect:/reserva/listar";
		
	}
	
	@RequestMapping(value = "{id}/comfirma", method = RequestMethod.GET)
	public String comfirmar(@PathVariable long id, ModelMap map){
		
		Reserva reserva = reservaService.buscaproID(id);
		reserva.setStatus("Confirmado");
		reservaService.atualizar(reserva);		
		return "redirect:/reserva/listar";
		
	}
	@RequestMapping(value = "{id}/cancelar", method = RequestMethod.GET)
	public String cancelar(@PathVariable long id, ModelMap map){
		
		Reserva reserva = reservaService.buscaproID(id);
		reserva.setStatus("Cancelado");
		reservaService.atualizar(reserva);		
		return "redirect:/reserva/listar";
		
	}
	
	@RequestMapping(value = "{id}/form", method = RequestMethod.GET)
	public String formUpdate(@PathVariable("id") Long id, ModelMap map) {
		
		Map<Long, String> selectquarto = selectquarto();
		Map<Long, String> selectHospede= selectHospede();
		Map<Long, String> selectFuncionario = selectFuncionario();
		
		map.addAttribute("selectquarto",selectquarto);
		map.addAttribute("selectHospede",selectHospede);
		map.addAttribute("selectFuncionario",selectFuncionario);
		Reserva reserva = reservaService.buscaproID(id);
		map.addAttribute("reserva",reserva);
		
		return "reserva/update";
	}
	
	
	@RequestMapping(value = "{id}/detalhe", method = RequestMethod.GET)
	public String formdetalhe(@PathVariable("id") Long id, ModelMap map) {
		Reserva reserva = reservaService.buscaproID(id);
		
		map.addAttribute("reserva",reserva);
		
		return "reserva/detalhe";
	}
	
	
	@RequestMapping(value = "salvar", method = RequestMethod.POST)
	public String salvar(@ModelAttribute("reserva") @Valid Reserva reserva,	BindingResult result, ModelMap map) {
		if (result.hasErrors()) {
			map.addAttribute("reserva",reserva);
			return "reserva/update";
		}
		
		reservaService.salvar(reserva);
		return "redirect:/reserva/listar";
		
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@ModelAttribute("reserva") @Valid Reserva reserva,	BindingResult result, ModelMap map) {
		if (result.hasErrors()) {
			map.addAttribute("reserva",reserva);
			return "reserva/update";
		}
		
		reservaService.atualizar(reserva);
		return "redirect:/reserva/listar";
		
	}
	
	
	public Map<Long, String> selectquarto(){
		
		List<Quarto> quartos = quartoService.listar();
		Map<Long, String> mapa = new HashMap<Long, String>();
		
		for(Quarto quarto:quartos){
			mapa.put(quarto.getId(),"Andar:"+quarto.getAndar()+"° Quarto:"+quarto.getNumero()+" Categoria:"+quarto.getCategoria().getNome());
		}
		return mapa;
	}
	
		public Map<Long, String> selectHospede(){
		
		List<Hospede> hospedes = hospedeService.listar();
		Map<Long, String> mapa = new HashMap<Long, String>();
		
		for(Hospede hospede:hospedes){
			mapa.put(hospede.getId(),hospede.getNome());
		}
		return mapa;
			}
		
		public Map<Long, String> selectFuncionario(){
			
			List<Funcionario> funcionarios = funcionarioService.listar();
			Map<Long, String> mapa = new HashMap<Long, String>();
			
			for(Funcionario funcionario:funcionarios){
				mapa.put(funcionario.getId(),funcionario.getNome());
			}
			return mapa;
		}
	
	
		
	
	
}
