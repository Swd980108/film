package com.oracle.film.controller;

import com.oracle.film.pojo.FilmPaiPian;
import com.oracle.film.service.FilmPaiPianService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/filmpaipian")
public class FilmPaiPianContorller {

    @Autowired
    private FilmPaiPianService filmPaiPianService;

    @RequestMapping("/listAllPaiPianFilm")
    public List<FilmPaiPian> listAllPaiPianFilm(){
        List<FilmPaiPian> filmPaiPians = filmPaiPianService.listAllPaiPianFilm();
        return filmPaiPians;
    }

    @RequestMapping("/queryAllPaiPianFilmById")
    public List<FilmPaiPian> queryAllPaiPianFilmById(int filmid){
        System.out.println("通过filmid查看排片信息");
        List<FilmPaiPian> filmPaiPians = filmPaiPianService.queryAllPaiPianFilmById(filmid);
        return filmPaiPians;
    }

    @RequestMapping("/queryPaiPianById")
    public FilmPaiPian queryPaiPianById(int paipianid){
        System.out.println("通过paipianid查看排片信息");
        FilmPaiPian filmPaiPian = filmPaiPianService.queryPaiPianById(paipianid);
        return filmPaiPian;
    }
}
