package com.oracle.film.pojo;


import java.sql.Timestamp;

public class Orders {

  private long orderid;
  private java.sql.Timestamp otime;
  private long status;
  private double totalprice;
  private long piaonum;
  private long userid;
  private String seat;
  private long cinemaid;
  private long filmid;
  private long paipianid;

  public Orders() {
  }

  public Orders(double totalprice, long piaonum, long userid, String seat, long cinemaid, long filmid, long paipianid) {
    this.totalprice = totalprice;
    this.piaonum = piaonum;
    this.userid = userid;
    this.seat = seat;
    this.cinemaid = cinemaid;
    this.filmid = filmid;
    this.paipianid = paipianid;
  }

  public Orders(long orderid, Timestamp otime, long status, double totalprice, long piaonum, long userid, String seat, long cinemaid, long filmid, long paipianid) {
    this.orderid = orderid;
    this.otime = otime;
    this.status = status;
    this.totalprice = totalprice;
    this.piaonum = piaonum;
    this.userid = userid;
    this.seat = seat;
    this.cinemaid = cinemaid;
    this.filmid = filmid;
    this.paipianid = paipianid;
  }

  public long getOrderid() {
    return orderid;
  }

  public void setOrderid(long orderid) {
    this.orderid = orderid;
  }


  public java.sql.Timestamp getOtime() {
    return otime;
  }

  public void setOtime(java.sql.Timestamp otime) {
    this.otime = otime;
  }


  public long getStatus() {
    return status;
  }

  public void setStatus(long status) {
    this.status = status;
  }


  public double getTotalprice() {
    return totalprice;
  }

  public void setTotalprice(double totalprice) {
    this.totalprice = totalprice;
  }


  public long getPiaonum() {
    return piaonum;
  }

  public void setPiaonum(long piaonum) {
    this.piaonum = piaonum;
  }


  public long getUserid() {
    return userid;
  }

  public void setUserid(long userid) {
    this.userid = userid;
  }


  public String getSeat() {
    return seat;
  }

  public void setSeat(String seat) {
    this.seat = seat;
  }


  public long getCinemaid() {
    return cinemaid;
  }

  public void setCinemaid(long cinemaid) {
    this.cinemaid = cinemaid;
  }


  public long getFilmid() {
    return filmid;
  }

  public void setFilmid(long filmid) {
    this.filmid = filmid;
  }


  public long getPaipianid() {
    return paipianid;
  }

  public void setPaipianid(long paipianid) {
    this.paipianid = paipianid;
  }

  @Override
  public String toString() {
    return "Orders{" +
            "orderid=" + orderid +
            ", otime=" + otime +
            ", status=" + status +
            ", totalprice=" + totalprice +
            ", piaonum=" + piaonum +
            ", userid=" + userid +
            ", seat='" + seat + '\'' +
            ", cinemaid=" + cinemaid +
            ", filmid=" + filmid +
            ", paipianid=" + paipianid +
            '}';
  }
}
