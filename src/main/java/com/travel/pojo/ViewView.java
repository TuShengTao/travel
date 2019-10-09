package com.travel.pojo;

public class ViewView {
    private int viewId;//景点ID
    private String viewName;//景点名字
    private String viewCountry;//景点所在国家
    private String viewCity;//景点所在城市
    private String viewPlace;//景点所在具体地方
    private float viewPrice;//景点价格
    private int viewComment;//景点评论
    private String viewDetail;//景点详情
    private String viewSummary;//景点简介
    private int viewBuycount;//景点购买次数
    private String viewImg;//景点图片

    public int getViewId() {
        return viewId;
    }

    public void setViewId(int viewId) {
        this.viewId = viewId;
    }

    public String getViewName() {
        return viewName;
    }

    public void setViewName(String viewName) {
        this.viewName = viewName;
    }

    public String getViewCountry() {
        return viewCountry;
    }

    public void setViewCountry(String viewCountry) {
        this.viewCountry = viewCountry;
    }

    public String getViewCity() {
        return viewCity;
    }

    public void setViewCity(String viewCity) {
        this.viewCity = viewCity;
    }

    public String getViewPlace() {
        return viewPlace;
    }

    public void setViewPlace(String viewPlace) {
        this.viewPlace = viewPlace;
    }

    public float getViewPrice() {
        return viewPrice;
    }

    public void setViewPrice(float viewPrice) {
        this.viewPrice = viewPrice;
    }

    public int getViewComment() {
        return viewComment;
    }

    public void setViewComment(int viewComment) {
        this.viewComment = viewComment;
    }

    public String getViewDetail() {
        return viewDetail;
    }

    public void setViewDetail(String viewDetail) {
        this.viewDetail = viewDetail;
    }

    public String getViewSummary() {
        return viewSummary;
    }

    public void setViewSummary(String viewSummary) {
        this.viewSummary = viewSummary;
    }

    public int getViewBuycount() {
        return viewBuycount;
    }

    public void setViewBuycount(int viewBuycount) {
        this.viewBuycount = viewBuycount;
    }

    public String getViewImg() {
        return viewImg;
    }

    public void setViewImg(String viewImg) {
        this.viewImg = viewImg;
    }

    @Override
    public String toString() {
        return "ViewView{" +
                "viewId=" + viewId +
                ", viewName='" + viewName + '\'' +
                ", viewCountry='" + viewCountry + '\'' +
                ", viewCity='" + viewCity + '\'' +
                ", viewPlace='" + viewPlace + '\'' +
                ", viewPrice=" + viewPrice +
                ", viewComment=" + viewComment +
                ", viewDetail='" + viewDetail + '\'' +
                ", viewSummary='" + viewSummary + '\'' +
                ", viewBuycount=" + viewBuycount +
                ", viewImg='" + viewImg + '\'' +
                '}';
    }
}
