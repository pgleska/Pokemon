package com.pgleska.pokemon.controller;

import java.util.logging.Logger;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.pgleska.pokemon.model.Pokemon;
import com.pgleska.pokemon.repository.PokemonRepository;

@Controller
public class BaseController {
	private Logger logger = Logger.getLogger("Pokemon controller");
	
	private PokemonRepository pokemonRepository;
	
	public BaseController(PokemonRepository pokemonRepository) {
		this.pokemonRepository = pokemonRepository;
	}
	
	@GetMapping({"/", "/hello"})
	public String getMainPage() {
		return "hello";
	}
	
	@GetMapping("/pokemon/{id}")
	public String getPokemon(@PathVariable Integer id, Model model) {
		Pokemon pokemon;
		if(pokemonRepository.findById(id).isPresent()) {
			pokemon = pokemonRepository.findById(id).get();
			model.addAttribute("name", pokemon.getName());
			model.addAttribute("description", pokemon.getDescription());
		}
		
		return "pokemon";
	}
}
