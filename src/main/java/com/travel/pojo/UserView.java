package com.travel.pojo;

public class UserView {
    private int userId;
    private String userName;
    private String userPassWord;
    private String userEmail;

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPassWord() {
        return userPassWord;
    }

    public void setUserPassWord(String userPassWord) {
        this.userPassWord = userPassWord;
    }


    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public UserView(int userId, String userName, String userPassWord) {
        this.userId = userId;
        this.userName = userName;
        this.userPassWord = userPassWord;
    }
    public UserView(){
    }

    ;

    @Override
    public String toString() {
        return "UserView{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userPassWord='" + userPassWord + '\'' +
                ", userEmail='" + userEmail + '\'' +
                '}';
    }
}
