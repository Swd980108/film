package com.oracle.film.service;

import com.oracle.film.pojo.FilmPaiPian;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface FilmPaiPianService {

    public List<FilmPaiPian> listAllPaiPianFilm();

    public List<FilmPaiPian> queryAllPaiPianFilmById(int filmid);

    public FilmPaiPian queryPaiPianById(int paipianid);
}
