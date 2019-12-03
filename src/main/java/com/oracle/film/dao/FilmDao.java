package com.oracle.film.dao;


import com.oracle.film.pojo.Film;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FilmDao {

    public List<Film> listAllFilm();

    public Film queryFilmById(int filmid);

    public int queryFilmCount();

    public List<Film> queryAllFilmByFilmtypeId(int filmtypeid);

    public List<Film> searchFilmByName(String filmname);

}
