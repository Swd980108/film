package com.oracle.film.service.imp;

import com.oracle.film.dao.FilmDao;
import com.oracle.film.pojo.Film;
import com.oracle.film.service.FilmService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("filmService")
public class FilmServiceImp implements FilmService {

    @Resource
    private FilmDao filmDao;

    @Override
    public List<Film> listAllFilm() {
        return filmDao.listAllFilm();
    }

    @Override
    public Film queryFilmById(int filmid) {
        return filmDao.queryFilmById(filmid);
    }

    @Override
    public int queryFilmCount() {
        return filmDao.queryFilmCount();
    }

    @Override
    public List<Film> queryAllFilmByFilmtypeId(int filmtypeid) {
        return filmDao.queryAllFilmByFilmtypeId(filmtypeid);
    }

    @Override
    public List<Film> searchFilmByName(String filmname) {
        return filmDao.searchFilmByName(filmname);
    }

}
