package com.oracle.film.controller;


import com.oracle.film.pojo.Comments;
import com.oracle.film.service.CommentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/comments")
public class CommentContorller {

    @Autowired
    private CommentsService commentsService;


    @RequestMapping("/addComment")
    public void addComment(Comments comments){
        System.out.println("addComment");
        commentsService.addComment(comments);
        System.out.println(comments);
    }

    @RequestMapping("/listAllComments")
    public List<Comments> listAllComments(){
        List<Comments> comments = commentsService.listAllComments();
        System.out.println(comments);
        return comments;
    }

    @RequestMapping("/queryCommentsByfilmid")
    public List<Comments> queryCommentsByfilmid(int filmid){
        System.out.println("执行了queryCommentsByfilmid");
        List<Comments> comments = commentsService.queryCommentsByfilmid(filmid);
        System.out.println(comments);
        return comments;
    }

    @RequestMapping("/queryUserSeeFilmCount")
    public boolean queryUserSeeFilmCount(int userid,int filmid){
        int count = commentsService.queryUserSeeFilmCount(userid, filmid);
        if(count==0){
            return false;
        }else {
            return true;
        }
    }
}
