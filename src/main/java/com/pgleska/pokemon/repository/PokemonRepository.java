package com.pgleska.pokemon.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.pgleska.pokemon.model.Pokemon;

@Repository
public interface PokemonRepository extends CrudRepository<Pokemon, Integer> {

}
