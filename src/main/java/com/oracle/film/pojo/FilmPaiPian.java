package com.oracle.film.pojo;

import java.sql.Timestamp;
import java.util.Date;

public class FilmPaiPian {
    private long paipianid;
    private long filmid;
    private Date starttime;
    private double filmprice;
    private String filmname;
    private String fimage;
    private long showtime;
    private double score;
    private String actors;
    private String fdesc;
    private String filmtypename;
    private long filmtypeid;
    private long cinemaid;
    private String cinemaname;
    private String caddr;
    private String cdesc;
    private String cimage;
    private String ctel;

    public FilmPaiPian() {
    }

    public FilmPaiPian(long paipianid, long filmid, Date starttime, double filmprice, String filmname, String fimage, long showtime, double score, String actors, String fdesc, String filmtypename, long filmtypeid, long cinemaid, String cinemaname, String caddr, String cdesc, String cimage, String ctel) {
        this.paipianid = paipianid;
        this.filmid = filmid;
        this.starttime = starttime;
        this.filmprice = filmprice;
        this.filmname = filmname;
        this.fimage = fimage;
        this.showtime = showtime;
        this.score = score;
        this.actors = actors;
        this.fdesc = fdesc;
        this.filmtypename = filmtypename;
        this.filmtypeid = filmtypeid;
        this.cinemaid = cinemaid;
        this.cinemaname = cinemaname;
        this.caddr = caddr;
        this.cdesc = cdesc;
        this.cimage = cimage;
        this.ctel = ctel;
    }

    public long getPaipianid() {
        return paipianid;
    }

    public void setPaipianid(long paipianid) {
        this.paipianid = paipianid;
    }

    public long getFilmid() {
        return filmid;
    }

    public void setFilmid(long filmid) {
        this.filmid = filmid;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public double getFilmprice() {
        return filmprice;
    }

    public void setFilmprice(double filmprice) {
        this.filmprice = filmprice;
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

    public String getFilmtypename() {
        return filmtypename;
    }

    public void setFilmtypename(String filmtypename) {
        this.filmtypename = filmtypename;
    }

    public long getFilmtypeid() {
        return filmtypeid;
    }

    public void setFilmtypeid(long filmtypeid) {
        this.filmtypeid = filmtypeid;
    }

    public long getCinemaid() {
        return cinemaid;
    }

    public void setCinemaid(long cinemaid) {
        this.cinemaid = cinemaid;
    }

    public String getCinemaname() {
        return cinemaname;
    }

    public void setCinemaname(String cinemaname) {
        this.cinemaname = cinemaname;
    }

    public String getCaddr() {
        return caddr;
    }

    public void setCaddr(String caddr) {
        this.caddr = caddr;
    }

    public String getCdesc() {
        return cdesc;
    }

    public void setCdesc(String cdesc) {
        this.cdesc = cdesc;
    }

    public String getCimage() {
        return cimage;
    }

    public void setCimage(String cimage) {
        this.cimage = cimage;
    }

    public String getCtel() {
        return ctel;
    }

    public void setCtel(String ctel) {
        this.ctel = ctel;
    }

    @Override
    public String toString() {
        return "FilmPaiPian{" +
                "paipianid=" + paipianid +
                ", filmid=" + filmid +
                ", starttime=" + starttime +
                ", filmprice=" + filmprice +
                ", filmname='" + filmname + '\'' +
                ", fimage='" + fimage + '\'' +
                ", showtime=" + showtime +
                ", score=" + score +
                ", actors='" + actors + '\'' +
                ", fdesc='" + fdesc + '\'' +
                ", filmtypename='" + filmtypename + '\'' +
                ", filmtypeid=" + filmtypeid +
                ", cinemaid=" + cinemaid +
                ", cinemaname='" + cinemaname + '\'' +
                ", caddr='" + caddr + '\'' +
                ", cdesc='" + cdesc + '\'' +
                ", cimage='" + cimage + '\'' +
                ", ctel='" + ctel + '\'' +
                '}';
    }
}
