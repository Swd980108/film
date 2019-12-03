package com.oracle.film.controller;

import com.oracle.film.pojo.Film;
import com.oracle.film.pojo.Filmtype;
import com.oracle.film.service.FilmService;
import com.oracle.film.service.FilmTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

//解决跨域访问的问题
@CrossOrigin
@RestController
@RequestMapping("/filmtype")
public class FilmTypeController {

    @Autowired
    private FilmTypeService filmTypeService;

    @RequestMapping("/hellow")
    public String hellow(){
        return "hellow";
    }

    @RequestMapping("/listAllFilmType")
    public List<Filmtype> listAllFilmType(){
        List<Filmtype> filmtypes = filmTypeService.listAllFilmType();
        System.out.println(filmtypes);
        return filmtypes;
    }
}
