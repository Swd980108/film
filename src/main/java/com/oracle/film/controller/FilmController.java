package com.oracle.film.controller;

import com.oracle.film.pojo.Film;
import com.oracle.film.service.FilmService;
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
@RequestMapping("/film")
public class FilmController {

    @Autowired
    private FilmService filmService;

    @RequestMapping("/hellow")
    public String hellow(){
        return "hellow";
    }

    @RequestMapping("/listAllFilm")
    public List<Film> listAllFilm(HttpServletRequest request){
        System.out.println("客户端的ip:"+request.getRemoteAddr());
        System.out.println("查询所有影片");
        List<Film> allFimes = filmService.listAllFilm();
//        Map<String,Object> map=new HashMap<String, Object>();
//        map.put("status",0);
//        map.put("content",allFimes);
        return allFimes;
    }



    @RequestMapping("/queryFilmById")
    public Film queryFilmById(int filmid){
       Film film = filmService.queryFilmById(filmid);
        System.out.println(film);
        return film;
    }

    @RequestMapping("queryFilmCount")
    public String queryFilmCount(){
        int i = filmService.queryFilmCount();
        System.out.println("影片数量："+i);
        return i+"";
    }

    @RequestMapping("/queryAllFilmByFilmtypeId")
    public List<Film> queryAllFilmByFilmtypeId(int filmtypeid){
        System.out.println("查看"+filmtypeid+"类型的电影");
        List<Film> films = filmService.queryAllFilmByFilmtypeId(filmtypeid);
        return films;
    }

    @RequestMapping("/searchFilmByName")
    public List<Film> searchFilmByName(String filmname){
        List<Film> films = filmService.searchFilmByName(filmname);
        return films;
    }

}
