package com.oracle.film.service.imp;

import com.oracle.film.dao.FilmTypeDao;
import com.oracle.film.pojo.Film;
import com.oracle.film.pojo.Filmtype;
import com.oracle.film.service.FilmTypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("filmTypeService")
public class FilmTypeServiceImp implements FilmTypeService {

    @Resource
    private FilmTypeDao filmTypeDao;

    @Override
    public List<Filmtype> listAllFilmType() {

        return filmTypeDao.listAllFilmType();
    }

}
