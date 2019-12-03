package com.oracle.film.dao;

import com.oracle.film.pojo.Filmtype;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FilmTypeDao {
    public List<Filmtype> listAllFilmType();
}
