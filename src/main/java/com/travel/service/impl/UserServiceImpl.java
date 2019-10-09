package com.travel.service.impl;

import com.travel.dao.IUserDao;
import com.travel.pojo.HotelView;
import com.travel.pojo.UserView;
import com.travel.service.IHotelService;
import com.travel.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements IUserService {
    @Autowired
   private IUserDao userDao;
    public UserView login(UserView userView) {
        return userDao.findUserInfoByName(userView);
    }

    @Override
    public UserView judegName(UserView userView) {
        return userDao.findUserInfoByName(userView);
    }

    @Override
    public int register(UserView userView) {
        return userDao.register(userView);
    }
}
