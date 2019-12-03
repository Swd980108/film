package com.oracle.film.pojo;


import java.io.Serializable;

public class Film  {

  private long filmid;
  private String filmname;
  private String fimage;
  private long showtime;
  private double score;
  private String actors;
  private String fdesc;
  private Filmtype filmtype;

  public Film() {
  }

  public Film(long filmid, String filmname, String fimage, long showtime, double score, String actors, String fdesc, Filmtype filmtype) {
    this.filmid = filmid;
    this.filmname = filmname;
    this.fimage = fimage;
    this.showtime = showtime;
    this.score = score;
    this.actors = actors;
    this.fdesc = fdesc;
    this.filmtype = filmtype;
  }

  public long getFilmid() {
    return filmid;
  }

  public void setFilmid(long filmid) {
    this.filmid = filmid;
  }

  public String getFilmname() {
    return filmname;
  }

  public void setFilmname(String filmname) {
    this.filmname = filmname;
  }

  public String getFimage() {
    return fimage;
  }

  public void setFimage(String fimage) {
    this.fimage = fimage;
  }

  public long getShowtime() {
    return showtime;
  }

  public void setShowtime(long showtime) {
    this.showtime = showtime;
  }

  public double getScore() {
    return score;
  }

  public void setScore(double score) {
    this.score = score;
  }

  public String getActors() {
    return actors;
  }

  public void setActors(String actors) {
    this.actors = actors;
  }

  public String getFdesc() {
    return fdesc;
  }

  public void setFdesc(String fdesc) {
    this.fdesc = fdesc;
  }

  public Filmtype getFilmtype() {
    return filmtype;
  }

  public void setFilmtype(Filmtype filmtype) {
    this.filmtype = filmtype;
  }

  @Override
  public String toString() {
    return "Film{" +
            "filmid=" + filmid +
            ", filmname='" + filmname + '\'' +
            ", fimage='" + fimage + '\'' +
            ", showtime=" + showtime +
            ", score=" + score +
            ", actors='" + actors + '\'' +
            ", fdesc='" + fdesc + '\'' +
            ", filmtype=" + filmtype +
            '}';
  }
}
