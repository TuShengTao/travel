package com.travel.pojo;

public class HotelView {
    private int searchHotelCount;
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
    private String hotelImg;//酒店主要展示图片
    private String hotelImg1;
    private String hotelImg2;
    private String hotelImg3;//单个酒店详情的图片
    private String roomImg1;//酒店房间图片1
    private String roomImg2;//酒店房间图片2
    private String roomImg3;//酒店房间图片3
    private int roomId;//房间ID
    private float roomPrice;//房间价格
    private  String roomSummary;//房间简介
    private String roomType;//酒店房间种类
    private float searchMinPrice;
    private float searchMaxPrice;//模糊查询时的最高价格
    private String minPriceString;
    private String maxPriceString;

    public int getHotelOrderId() {
        return hotelOrderId;
    }

    public void setHotelOrderId(int hotelOrderId) {
        this.hotelOrderId = hotelOrderId;
    }

    private int hotelOrderId;

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    private String roomName;
    public int getSearchHotelCount() {
        return searchHotelCount;
    }

    public void setSearchHotelCount(int searchHotelCount) {
        this.searchHotelCount = searchHotelCount;
    }

    public String getHotelComment2() {
        return hotelComment2;
    }

    public void setHotelComment2(String hotelComment2) {
        this.hotelComment2 = hotelComment2;
    }

    private String hotelComment2;

    public String getMinPriceString() {
        return minPriceString;
    }

    public void setMinPriceString(String minPriceString) {
        this.minPriceString = minPriceString;
    }

    public String getMaxPriceString() {
        return maxPriceString;
    }

    public void setMaxPriceString(String maxPriceString) {
        this.maxPriceString = maxPriceString;
    }



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

    public String getHotelImg1() {
        return hotelImg1;
    }

    public void setHotelImg1(String hotelImg1) {
        this.hotelImg1 = hotelImg1;
    }

    public String getHotelImg2() {
        return hotelImg2;
    }

    public void setHotelImg2(String hotelImg2) {
        this.hotelImg2 = hotelImg2;
    }

    public String getHotelImg3() {
        return hotelImg3;
    }

    public void setHotelImg3(String hotelImg3) {
        this.hotelImg3 = hotelImg3;
    }



    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public float getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(float roomPrice) {
        this.roomPrice = roomPrice;
    }

    public String getRoomSummary() {
        return roomSummary;
    }

    public void setRoomSummary(String roomSummary) {
        this.roomSummary = roomSummary;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public float getSearchMinPrice() {
        return searchMinPrice;
    }

    public void setSearchMinPrice(float searchMinPrice) {
        this.searchMinPrice = searchMinPrice;
    }

    public float getSearchMaxPrice() {
        return searchMaxPrice;
    }

    public void setSearchMaxPrice(float searchMaxPrice) {
        this.searchMaxPrice = searchMaxPrice;
    }

    public String getRoomImg1() {
        return roomImg1;
    }

    public void setRoomImg1(String roomImg1) {
        this.roomImg1 = roomImg1;
    }

    public String getRoomImg2() {
        return roomImg2;
    }

    public void setRoomImg2(String roomImg2) {
        this.roomImg2 = roomImg2;
    }

    public String getRoomImg3() {
        return roomImg3;
    }

    public void setRoomImg3(String roomImg3) {
        this.roomImg3 = roomImg3;
    }

    @Override
    public String toString() {
        return "HotelView{" +
                "searchHotelCount=" + searchHotelCount +
                ", hotelId=" + hotelId +
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
                ", hotelImg1='" + hotelImg1 + '\'' +
                ", hotelImg2='" + hotelImg2 + '\'' +
                ", hotelImg3='" + hotelImg3 + '\'' +
                ", roomImg1='" + roomImg1 + '\'' +
                ", roomImg2='" + roomImg2 + '\'' +
                ", roomImg3='" + roomImg3 + '\'' +
                ", roomId=" + roomId +
                ", roomPrice=" + roomPrice +
                ", roomSummary='" + roomSummary + '\'' +
                ", roomType='" + roomType + '\'' +
                ", searchMinPrice=" + searchMinPrice +
                ", searchMaxPrice=" + searchMaxPrice +
                ", minPriceString='" + minPriceString + '\'' +
                ", maxPriceString='" + maxPriceString + '\'' +
                ", hotelOrderId=" + hotelOrderId +
                ", roomName='" + roomName + '\'' +
                ", hotelComment2='" + hotelComment2 + '\'' +
                '}';
    }
}
