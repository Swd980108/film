package com.oracle.film.dao;

import com.oracle.film.pojo.Comments;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CommentsDao {

    public void addComment(Comments comments);

    public List<Comments> listAllComments();

    public List<Comments> queryCommentsByfilmid(int filmid);

    public int queryUserSeeFilmCount(int userid,int filmid);
}
