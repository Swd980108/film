package com.oracle.film.dao;

import com.oracle.film.pojo.FilmPaiPian;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FilmPaiPianDao {
    public List<FilmPaiPian> listAllPaiPianFilm();
    public List<FilmPaiPian> queryAllPaiPianFilmById(int filmid);
    public FilmPaiPian queryPaiPianById(int paipianid);
}
