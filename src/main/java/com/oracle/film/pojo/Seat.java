package com.oracle.film.pojo;


public class Seat {

  private long seatid;
  private long seatX;
  private long seatY;
  private long cinema;
  private String seatnum;
  private String seatXy;


  public long getSeatid() {
    return seatid;
  }

  public void setSeatid(long seatid) {
    this.seatid = seatid;
  }


  public long getSeatX() {
    return seatX;
  }

  public void setSeatX(long seatX) {
    this.seatX = seatX;
  }


  public long getSeatY() {
    return seatY;
  }

  public void setSeatY(long seatY) {
    this.seatY = seatY;
  }


  public long getCinema() {
    return cinema;
  }

  public void setCinema(long cinema) {
    this.cinema = cinema;
  }


  public String getSeatnum() {
    return seatnum;
  }

  public void setSeatnum(String seatnum) {
    this.seatnum = seatnum;
  }


  public String getSeatXy() {
    return seatXy;
  }

  public void setSeatXy(String seatXy) {
    this.seatXy = seatXy;
  }

}
