package com.oracle.film.service;

import com.oracle.film.pojo.Film;
import com.oracle.film.pojo.Filmtype;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface FilmTypeService {
    public List<Filmtype> listAllFilmType();
}
