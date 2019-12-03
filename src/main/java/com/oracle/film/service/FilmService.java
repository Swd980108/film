package com.oracle.film.service;

import com.oracle.film.pojo.Film;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface FilmService {


    public List<Film> listAllFilm();

    public Film queryFilmById(int filmid);

    public int queryFilmCount();

    public List<Film> queryAllFilmByFilmtypeId(int filmtypeid);

    public List<Film> searchFilmByName(String filmname);
}
