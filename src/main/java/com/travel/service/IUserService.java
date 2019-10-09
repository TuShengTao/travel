package com.travel.service;

import com.travel.pojo.UserView;

public interface IUserService {
     UserView login(UserView userView);
     UserView judegName(UserView userView);
     int register(UserView userView);

}
