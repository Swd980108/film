package com.oracle.film.service;

import com.oracle.film.pojo.Comments;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CommentsService {

    public void addComment(Comments comments);

    public List<Comments> listAllComments();

    public List<Comments> queryCommentsByfilmid(int filmid);

    public int queryUserSeeFilmCount(int userid,int filmid);

}
