package de.aracom.k8s.controller;

import de.aracom.k8s.bean.Games;
import de.aracom.k8s.repository.GamesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
@RestController
public class GamesController {

    @Autowired
    GamesRepository gameRepository;

    @GetMapping(path = "/games")
    public List<Games> getAllGames(){
        return gameRepository.findAll();
    }

    @GetMapping(path = "/welcome")
    public String getText(){
        return "Hallo DevDay!";
    }
}
