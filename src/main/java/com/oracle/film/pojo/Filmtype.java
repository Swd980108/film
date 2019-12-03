package com.oracle.film.pojo;


import java.io.Serializable;

public class Filmtype {

  private long filmtypeid;
  private String filmtypename;

  public Filmtype() {
  }

  public Filmtype(long filmtypeid, String filmtypename) {
    this.filmtypeid = filmtypeid;
    this.filmtypename = filmtypename;
  }

  public long getFilmtypeid() {
    return filmtypeid;
  }

  public void setFilmtypeid(long filmtypeid) {
    this.filmtypeid = filmtypeid;
  }

  public String getFilmtypename() {
    return filmtypename;
  }

  public void setFilmtypename(String filmtypename) {
    this.filmtypename = filmtypename;
  }

  @Override
  public String toString() {
    return "Filmtype{" +
            "filmtypeid=" + filmtypeid +
            ", filmtypename='" + filmtypename + '\'' +
            '}';
  }
}
