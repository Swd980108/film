package com.oracle.film.service.imp;

import com.oracle.film.dao.CommentsDao;
import com.oracle.film.pojo.Comments;
import com.oracle.film.service.CommentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("commentsService")
public class CommentsServiceImp implements CommentsService {

    @Autowired
    private CommentsDao commentDao;

    @Override
    public void addComment(Comments comments) {
        commentDao.addComment(comments);
    }

    @Override
    public List<Comments> listAllComments() {
        return commentDao.listAllComments();
    }

    @Override
    public List<Comments> queryCommentsByfilmid(int filmid) {
        return commentDao.queryCommentsByfilmid(filmid);
    }

    @Override
    public int queryUserSeeFilmCount(int userid,int filmid){
        return commentDao.queryUserSeeFilmCount(userid, filmid);
    };


}
