package com.pokemon.company.pokemon_joute;

import com.pokemon.company.pokemon_joute.dao.PokemonDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class PokemonTest {

    @Autowired
    PokemonDao pokemonDao;

//    @Test
//    public void testFindById() {
//
//        Espece salameche1 = new Espece();
//
//        salameche1.setNom("Salamèche");
//        salameche1.setPvInitial(35);
//        salameche1.setType(Type.FEU);
//
//        Pokemon salameche = new Pokemon();
//        salameche.setNom("Salamèche");
//        salameche.setPv(35);
//        salameche.setPvMax(35);
//        salameche.setExperience(0);
//        salameche.setNiveau(0);
//
//        salameche.setEspece(salameche1);
//
//        pokemonDao.save(salameche);
//        System.out.println(salameche);
//
//        Optional<Pokemon> salamecheFindById = pokemonDao.findById(salameche.getId());
//        Assertions.assertNotNull(salamecheFindById, "Le pokémon salamèche devrait être dans la BDD");
//
//    }
//
//    @Test
//    public void testSave() {
//
//        Espece carapuce1 = new Espece();
//
//        carapuce1.setNom("carapuce");
//        carapuce1.setPvInitial(35);
//        carapuce1.setType(Type.EAU);
//
//        Pokemon carapuce = new Pokemon();
//        carapuce.setNom("carapuce");
//        carapuce.setPv(35);
//        carapuce.setPvMax(35);
//        carapuce.setNiveau(0);
//        carapuce.setExperience(0);
//
//        carapuce.setEspece(carapuce1);
//
//        pokemonDao.save(carapuce);
//
//        Assertions.assertNotNull(carapuce, "Un pokémon devrait être enregistré !");
//        System.out.println(carapuce);
//    }

//    @Test
//    public void testDeleteById() {
//
//        Pokemon bulbizarre = new Pokemon();
//        bulbizarre.setNom("bulbizarre");
//        bulbizarre.setPv(35);
//        bulbizarre.setPvMax(35);
//        bulbizarre.setNiveau(0);
//        bulbizarre.setExperience(0);
//
//        Pokemon savedPokemon = pokemonDao.save(bulbizarre);
//
//        pokemonDao.deleteById(savedPokemon.getId());
//
//        Optional<Pokemon> deletedPokemon = pokemonDao.findById(savedPokemon.getId());
//
//        Assertions.assertFalse(deletedPokemon.isPresent(), "Le pokémon devrait être supprimé");
//
//    }

//    @Test
//    public void testFindAll() {
//
//        Espece salameche1 = new Espece();
//
//        salameche1.setNom("Salamèche");
//        salameche1.setPvInitial(35);
//        salameche1.setType(Type.FEU);
//
//        Pokemon salameche = new Pokemon();
//        salameche.setNom("Salamèche");
//        salameche.setPv(35);
//        salameche.setPvMax(35);
//        salameche.setExperience(0);
//        salameche.setNiveau(0);
//
//        salameche.setEspece(salameche1);
//
//        pokemonDao.save(salameche);
//
//        Pokemon carapuce = new Pokemon();
//        carapuce.setNom("carapuce");
//        carapuce.setPv(35);
//        carapuce.setPvMax(35);
//        carapuce.setNiveau(0);
//        carapuce.setExperience(0);
//
//        pokemonDao.save(carapuce);
//
//        pokemonDao.findAll();
//
//
//    }
//
//    @Test
//    public void findByNomContainingIgnoreCaseOrderByNomDesc() {
//
//        Espece salameche1 = new Espece();
//
//        salameche1.setNom("Salamèche");
//        salameche1.setPvInitial(35);
//        salameche1.setType(Type.FEU);
//
//        Pokemon salameche = new Pokemon();
//        salameche.setNom("Salamèche");
//        salameche.setPv(35);
//        salameche.setPvMax(35);
//        salameche.setExperience(0);
//        salameche.setNiveau(0);
//
//        salameche.setEspece(salameche1);
//
//        Pokemon savedPokemon = pokemonDao.save(salameche);
//
//        List<Pokemon> pokemonList = pokemonDao.findByNomContainingIgnoreCaseOrderByNomDesc("aLa");
//
//        Assertions.assertFalse(pokemonList.isEmpty(), "herlolo");
//    }
}
