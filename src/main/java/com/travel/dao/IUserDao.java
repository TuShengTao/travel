package com.travel.dao;

import com.travel.pojo.UserView;
import org.springframework.stereotype.Repository;

public interface IUserDao {
     UserView findUserInfoByName(UserView userView);
     int register(UserView userView);
}
