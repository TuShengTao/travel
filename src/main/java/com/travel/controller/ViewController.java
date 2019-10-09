package com.travel.controller;

import com.github.pagehelper.Page;
import com.travel.pojo.HotelView;
import com.travel.pojo.PageInfo;
import com.travel.pojo.ViewView;
import com.travel.service.IHotelService;
import com.travel.service.IViewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("view")
public class ViewController {
    @Autowired
    IViewService viewService;
    @RequestMapping("findFourHotView")
    public ModelAndView findFourHotView() {
        List<ViewView> viewViewList = viewService.findFourHotView();
        ModelAndView mv = new ModelAndView();
        mv.addObject("fourHotView", viewViewList);
        mv.setViewName("../home");
        return mv;
    }
    @RequestMapping("searchViewView")
    public ModelAndView searchViewView(@RequestParam(value = "currentPage",defaultValue = "1",
            required = false)int currentPage){
        System.out.println("检测1");
        PageInfo<ViewView> pageInfo=viewService.searchViewByPage(currentPage);
        System.out.println("检测2");
        ModelAndView mv=new ModelAndView();
        mv.addObject("pageInfo",pageInfo);
        System.out.println("检测3");
        System.out.println(pageInfo);
        System.out.println("检测4");
        System.out.println(pageInfo.getLists().get(0).getViewName());

        mv.setViewName("../view");
        return mv;
    }
}
