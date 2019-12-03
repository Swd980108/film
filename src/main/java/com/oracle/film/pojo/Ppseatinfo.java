package com.oracle.film.pojo;

public class Ppseatinfo {
    private long seatid;
    private long seatX;
    private long seatY;
    private long cinema;
    private String seatnum;
    private String seatXy;
    private long ppseatid;
    private long paipianid;
    private long sorderid;

    public Ppseatinfo() {
    }

    public Ppseatinfo(long seatid, long seatX, long seatY, long cinema, String seatnum, String seatXy, long ppseatid, long paipianid, long sorderid) {
        this.seatid = seatid;
        this.seatX = seatX;
        this.seatY = seatY;
        this.cinema = cinema;
        this.seatnum = seatnum;
        this.seatXy = seatXy;
        this.ppseatid = ppseatid;
        this.paipianid = paipianid;
        this.sorderid = sorderid;
    }

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

    public long getPpseatid() {
        return ppseatid;
    }

    public void setPpseatid(long ppseatid) {
        this.ppseatid = ppseatid;
    }

    public long getPaipianid() {
        return paipianid;
    }

    public void setPaipianid(long paipianid) {
        this.paipianid = paipianid;
    }

    public long getSorderid() {
        return sorderid;
    }

    public void setSorderid(long sorderid) {
        this.sorderid = sorderid;
    }

    @Override
    public String toString() {
        return "Ppseatinfo{" +
                "seatid=" + seatid +
                ", seatX=" + seatX +
                ", seatY=" + seatY +
                ", cinema=" + cinema +
                ", seatnum='" + seatnum + '\'' +
                ", seatXy='" + seatXy + '\'' +
                ", ppseatid=" + ppseatid +
                ", paipianid=" + paipianid +
                ", sorderid=" + sorderid +
                '}';
    }
}
