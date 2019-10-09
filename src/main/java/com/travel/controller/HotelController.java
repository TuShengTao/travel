package com.travel.controller;

import com.travel.pojo.HotelView;
import com.travel.pojo.PageInfo;
import com.travel.pojo.UserView;
import com.travel.pojo.ViewView;
import com.travel.service.IHotelService;
import com.travel.service.IViewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("hotle")
public class HotelController {
    @Autowired
    IHotelService hotelService;
    @Autowired
    IViewService viewService;
    @RequestMapping("findFiveHotHotle")
    public ModelAndView findFiveHotHotle(){
        HotelView hotelView=new HotelView();
        hotelView.setSearchHotelCount(5);
        List<HotelView> hotelViewList=hotelService.findHotHotle(hotelView);
        List<ViewView> viewViewList = viewService.findFourHotView();
        ModelAndView mv=new ModelAndView();
        mv.addObject("fiveHotHotle",hotelViewList);
        mv.addObject("fourHotView", viewViewList);
        mv.setViewName("../home");
        return mv;
    }
    /** 点击导航栏 HOTEL 显示酒店 每6家酒店一个分页 **/
    @RequestMapping(value = "/searchHotelView")
    public ModelAndView searchHotelView(@RequestParam(value = "currentPage",defaultValue = "1",
            required = false)int currentPage){
        PageInfo<HotelView> pageInfo=hotelService.searchHotelByPage(currentPage);
        ModelAndView mv=new ModelAndView();
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("../hotel");
        return mv;
    }
    /**  酒店主页侧边栏 模糊查询  先设置session 在下面的方法调用 session 重定向到下面的方法 之后在下面方法实现条件搜索分页 **/
    @RequestMapping(value ="searchHotelByLikeSetSESSION", method = RequestMethod.POST)
    public String searchHotelByLikeSetSESSION( HotelView hotelView, HttpSession session){
        //session 查询的条件保存下来
        session.setAttribute("hotelCountry",hotelView.getHotelCountry());
        session.setAttribute("hotelMaxPrice",hotelView.getMaxPriceString());
        session.setAttribute("hotelMinPrice",hotelView.getMinPriceString());
        session.setAttribute("hotelCity",hotelView.getHotelCity());
        session.setAttribute("hotelComment",hotelView.getHotelComment2());
        return "redirect:/hotle/searchHotelByLikeAndPage.do";
    }
    /** 实现 搜索分页 **/
    @RequestMapping(value ="searchHotelByLikeAndPage")
    public  ModelAndView searchHotelByLikeAndPage(@RequestParam(value = "currentPage",defaultValue = "1",
            required = false)int currentPage,HttpSession session){
        HotelView hotelView=new HotelView();
        String country= (String) session.getAttribute("hotelCountry");
        String city=(String)session.getAttribute("hotelCity");
        String commentString=(String) session.getAttribute("hotelComment");
        Integer comment=null;
        if (commentString !=null && commentString !=""){
            comment=Integer.valueOf(commentString);
        }
        String minPriceString=(String) session.getAttribute("hotelMinPrice");
        String maxPriceString=(String) session.getAttribute("hotelMaxPrice");
        Float minPrice= null;
        Float maxPrice=null;
        if (minPriceString!=null && minPriceString !=""){
            minPrice=Float.valueOf(minPriceString);
        }
        if (maxPriceString!=null && maxPriceString !=""){
            maxPrice=Float.valueOf(maxPriceString);
        }
        hotelView.setHotelCountry(country);
        hotelView.setHotelCity(city);
        if (comment!=null){
            hotelView.setHotelComment(comment);
        }
        if (minPrice!=null){
            hotelView.setSearchMinPrice(minPrice);
        }
        if (maxPrice!=null){
            hotelView.setSearchMaxPrice(maxPrice);
        }
        PageInfo<HotelView> pageInfo=hotelService.searchHotelByLike(currentPage,hotelView);
        ModelAndView mv=new ModelAndView();
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("../hotelLike");
        return  mv;
    }
    /**  实现跳转单个酒店界面 点击BuyNow实现跳转  hotelSingle **/
    @RequestMapping(value ="hotelSingle")
    public ModelAndView hotelSingle(@RequestParam(value = "hotelId")int hotelId){
        ModelAndView mv=new ModelAndView();
        HotelView hotelView1=new HotelView();
        hotelView1.setHotelId(hotelId);
        hotelView1.setSearchHotelCount(3);
        HotelView hotelView=hotelService.searchHotelById(hotelView1);

        List<HotelView> hotelRoomList=hotelService.searchRoomByHotelId(hotelView1);
        List<HotelView>threeHotHotel=hotelService.findHotHotle(hotelView1);

        mv.addObject("singleHotel",hotelView);//单个酒店的信息
        mv.addObject("hotelRoomList",hotelRoomList);//单个酒店的其他房间
        mv.addObject("threeHotHotel",threeHotHotel);//单个酒店详情页的三个热门其他酒店
        mv.setViewName("../hotelSingle");
        return  mv;
    }
    //订购酒店
    @RequestMapping(value = "addHotelOrder")
    @ResponseBody
    public String addHotelOrder(int hotelId,int userId,int roomId){
        int flag;
        flag=hotelService.addHotelOrder(hotelId,userId,roomId);
        if (flag==1){
            return "success";
        }
        else {
            return "fail";
        }
    }
    //删除订单 根据订单号
    @RequestMapping(value = "delHotelOrder")
    @ResponseBody
    public String delHotelOrder(int hotelOrderId){
        int flag;
        flag=hotelService.delHotelOrder(hotelOrderId);
        if (flag==1){
            return "success";
        }
        else {
            return "fail";
        }
    }
    //根据用户ID查询出订购的酒店
    @RequestMapping("searchHotelOrderById")
    public ModelAndView searchHotelOrderById(@RequestParam(value = "userId")int userId){
        ModelAndView mv =new ModelAndView();
        UserView userView=new UserView();
        userView.setUserId(userId);
        List<HotelView> hotelViewList=hotelService.searchUserHotelOrder(userView);
        mv.addObject("hotelRoomList",hotelViewList);
        mv.setViewName("../userCenter");
        return mv;
    }


}
