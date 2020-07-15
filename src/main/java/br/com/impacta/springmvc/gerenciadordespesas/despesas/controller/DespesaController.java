package br.com.impacta.springmvc.gerenciadordespesas.despesas.controller;

import java.util.List;
import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.FixedLocaleResolver;

import br.com.impacta.springmvc.gerenciadordespesas.despesas.model.Despesa;
import br.com.impacta.springmvc.gerenciadordespesas.despesas.repositorio.DespesaRepository;

@Controller
@RequestMapping("/despesas")
public class DespesaController {
	
	@Autowired
	private DespesaRepository repository;
	
	@Bean
	public LocaleResolver localeResolver() {
		return new FixedLocaleResolver(new Locale("pt","BR"));
	}
	
	@RequestMapping("/form")
	public String form(Model model) {
		Despesa despesa = new Despesa();
		model.addAttribute("despesa",despesa);
		return "cadastro-despesa";
	}
	@RequestMapping("/salvar")
	public ModelAndView salvar(@Valid @ModelAttribute("despesa") Despesa despesa, Errors erros) {
		ModelAndView mv = new ModelAndView("cadastro-despesa");
		
		if (erros.hasErrors()) {
			return mv;
		}
		
		repository.save(despesa);
		mv.addObject("mensagem", "Despesa registrada com sucesso!");
		mv.addObject("despesa", new Despesa());
		return mv;
	}
	
	@GetMapping
	public ModelAndView despesas() {
		ModelAndView mv = new ModelAndView("listagem-despesas");	
		
		
		List<Despesa> listaDepesas = repository.findAll();
		mv.addObject("despesas",listaDepesas);
		
		
	return mv;
	}
	
}
