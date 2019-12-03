package com.oracle.film.pojo;


import java.sql.Timestamp;

public class Comments {

  private long commentid;
  private String commenttext;
  private java.sql.Timestamp commenttime;
  private String username;
  private String nickname;
  private String uimage;
  private long userid;
  private long filmid;

  public Comments() {
  }

  public Comments(String commenttext, long userid, long filmid) {
    this.commenttext = commenttext;
    this.userid = userid;
    this.filmid = filmid;
  }

  public Comments(long commentid, String commenttext, Timestamp commenttime, String username, String nickname, String uimage, long userid, long filmid) {
    this.commentid = commentid;
    this.commenttext = commenttext;
    this.commenttime = commenttime;
    this.username = username;
    this.nickname = nickname;
    this.uimage = uimage;
    this.userid = userid;
    this.filmid = filmid;
  }

  public long getCommentid() {
    return commentid;
  }

  public void setCommentid(long commentid) {
    this.commentid = commentid;
  }

  public String getCommenttext() {
    return commenttext;
  }

  public void setCommenttext(String commenttext) {
    this.commenttext = commenttext;
  }

  public Timestamp getCommenttime() {
    return commenttime;
  }

  public void setCommenttime(Timestamp commenttime) {
    this.commenttime = commenttime;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getNickname() {
    return nickname;
  }

  public void setNickname(String nickname) {
    this.nickname = nickname;
  }

  public String getUimage() {
    return uimage;
  }

  public void setUimage(String uimage) {
    this.uimage = uimage;
  }

  public long getUserid() {
    return userid;
  }

  public void setUserid(long userid) {
    this.userid = userid;
  }

  public long getFilmid() {
    return filmid;
  }

  public void setFilmid(long filmid) {
    this.filmid = filmid;
  }

  @Override
  public String toString() {
    return "Comments{" +
            "commentid=" + commentid +
            ", commenttext='" + commenttext + '\'' +
            ", commenttime=" + commenttime +
            ", username='" + username + '\'' +
            ", nickname='" + nickname + '\'' +
            ", uimage='" + uimage + '\'' +
            ", userid=" + userid +
            ", filmid=" + filmid +
            '}';
  }
}
