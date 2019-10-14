package com.travel.bean;
//测试git第一次

/**
 *
 */
public class HotelBean {
    private int hotelId;//酒店ID
    private String hotelName;//酒店名字
    private String hotelCountry;//酒店所在国家
    private String hotelCity;//酒店所在城市
    private String hotelPlace;//酒店所在具体地方
    private float hotelAvgprice;//酒店平均价格
    private int hotelComment;//酒店评论
    private String hotelDetail;//酒店详情
    private String hotelSummary;//酒店简介
    private int hotelBuycount;//酒店购买次数
    private String hotelImg;//酒店图片
    private String hotelRoomimg;//酒店房间图片
    private int roomId;//房间ID

    public int getHotelId() {
        return hotelId;
    }

    public void setHotelId(int hotelId) {
        this.hotelId = hotelId;
    }

    public String getHotelName() {
        return hotelName;
    }

    public void setHotelName(String hotelName) {
        this.hotelName = hotelName;
    }

    public String getHotelCountry() {
        return hotelCountry;
    }

    public void setHotelCountry(String hotelCountry) {
        this.hotelCountry = hotelCountry;
    }

    public String getHotelCity() {
        return hotelCity;
    }

    public void setHotelCity(String hotelCity) {
        this.hotelCity = hotelCity;
    }

    public String getHotelPlace() {
        return hotelPlace;
    }

    public void setHotelPlace(String hotelPlace) {
        this.hotelPlace = hotelPlace;
    }

    public float getHotelAvgprice() {
        return hotelAvgprice;
    }

    public void setHotelAvgprice(float hotelAvgprice) {
        this.hotelAvgprice = hotelAvgprice;
    }

    public int getHotelComment() {
        return hotelComment;
    }

    public void setHotelComment(int hotelComment) {
        this.hotelComment = hotelComment;
    }

    public String getHotelDetail() {
        return hotelDetail;
    }

    public void setHotelDetail(String hotelDetail) {
        this.hotelDetail = hotelDetail;
    }

    public String getHotelSummary() {
        return hotelSummary;
    }

    public void setHotelSummary(String hotelSummary) {
        this.hotelSummary = hotelSummary;
    }

    public int getHotelBuycount() {
        return hotelBuycount;
    }

    public void setHotelBuycount(int hotelBuycount) {
        this.hotelBuycount = hotelBuycount;
    }

    public String getHotelImg() {
        return hotelImg;
    }

    public void setHotelImg(String hotelImg) {
        this.hotelImg = hotelImg;
    }

    public String getHotelRoomimg() {
        return hotelRoomimg;
    }

    public void setHotelRoomimg(String hotelRoomimg) {
        this.hotelRoomimg = hotelRoomimg;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    @Override
    public String toString() {
        return "HotelBean{" +
                "hotelId=" + hotelId +
                ", hotelName='" + hotelName + '\'' +
                ", hotelCountry='" + hotelCountry + '\'' +
                ", hotelCity='" + hotelCity + '\'' +
                ", hotelPlace='" + hotelPlace + '\'' +
                ", hotelAvgprice=" + hotelAvgprice +
                ", hotelComment=" + hotelComment +
                ", hotelDetail='" + hotelDetail + '\'' +
                ", hotelSummary='" + hotelSummary + '\'' +
                ", hotelBuycount=" + hotelBuycount +
                ", hotelImg='" + hotelImg + '\'' +
                ", hotelRoomimg='" + hotelRoomimg + '\'' +
                ", roomId=" + roomId +
                '}';
    }
}
