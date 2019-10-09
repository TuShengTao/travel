package com.travel.controller;

import com.travel.pojo.UserView;
import com.travel.service.IUserService;
import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.json.JsonObject;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    IUserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public String login(HttpSession session, String userName, String passWord) {
        UserView userView = new UserView();
        userView.setUserName(userName);
        userView = userService.login(userView);
        if (userView != null && userView.getUserPassWord() != null && userView.getUserPassWord().equals(passWord)) {
            session.setAttribute("userName", userView.getUserName());//用户名字
            session.setAttribute("userId", userView.getUserId());//用户id
            return "success";
        } else {
            return "fail";
        }
    }

    @RequestMapping(value = "/judegName", method = RequestMethod.POST)
    @ResponseBody
    public String judegName(String registerName) {
        UserView userView = new UserView();
        userView.setUserName(registerName);
        userView = userService.judegName(userView);
        if (userView == null) {
            return "true";
        } else {
            return "false";
        }
    }
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    @ResponseBody
    public String register(UserView userView){
        String flag;
        System.out.println(userView.getUserName()+"验证是否为空！");
        System.out.println(userView.getUserPassWord()+"验证是否为空！");
        userService.register(userView);
        flag="true";
        return flag;
    }
}
