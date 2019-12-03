package com.oracle.film.service.imp;

import com.oracle.film.dao.FilmPaiPianDao;
import com.oracle.film.pojo.FilmPaiPian;
import com.oracle.film.service.FilmPaiPianService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("filmPaiPianService")
public class FilmPaiPianServiceImp implements FilmPaiPianService {

    @Autowired
    private FilmPaiPianDao filmPaiPianDao;

    @Override
    public List<FilmPaiPian> listAllPaiPianFilm() {
        return filmPaiPianDao.listAllPaiPianFilm();
    }

    @Override
    public List<FilmPaiPian> queryAllPaiPianFilmById(int filmid) {
        return filmPaiPianDao.queryAllPaiPianFilmById(filmid);
    }

    @Override
    public FilmPaiPian queryPaiPianById(int paipianid) {
        return filmPaiPianDao.queryPaiPianById(paipianid);
    }
}
