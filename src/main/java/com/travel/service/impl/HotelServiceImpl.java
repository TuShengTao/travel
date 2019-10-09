package com.travel.service.impl;

import com.travel.dao.IHotelDao;

import com.travel.pojo.HotelView;
import com.travel.pojo.PageInfo;
import com.travel.pojo.UserView;
import com.travel.service.IHotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
public class HotelServiceImpl implements IHotelService {
    @Autowired
    IHotelDao hotelDao;
    @Override
    public List<HotelView> findHotHotle(HotelView hotelView){
        return hotelDao.findHotHotle(hotelView);
    }

    @Override
    public PageInfo<HotelView> searchHotelByPage(int currentPage) {
        HashMap<String,Object> map=new HashMap<>();
        map.put("size",6);
        PageInfo<HotelView> pageInfo=new PageInfo<>();
        pageInfo.setCurrentPage(currentPage);
        pageInfo.setPageSize(6);

        int count=hotelDao.selectHotelCount();

        Double c=Double.valueOf(count);
        Double num=Math.ceil(c/pageInfo.getPageSize());

        pageInfo.setTotalPage(num.intValue());
        pageInfo.setTotalCount(count);

        map.put("start",(currentPage-1)*pageInfo.getPageSize()) ;

        List<HotelView> hotelViewList=hotelDao.searchHotelByPage(map);

        System.out.println(hotelViewList);

        pageInfo.setLists(hotelViewList);

        System.out.println("输出PageIinfo:"+pageInfo);
        return pageInfo;
    }

    @Override
    public PageInfo<HotelView> searchHotelByLike(int currentPage, HotelView hotelView) {
        HashMap<String,Object> map=new HashMap<>();

        PageInfo<HotelView> pageInfo=new PageInfo<>();
        map.put("size",3);
        pageInfo.setCurrentPage(currentPage);
        pageInfo.setPageSize(3);
        //查询出模糊查询的总条数
        int count=hotelDao.hotelLikeCount(hotelView);
        Double c=Double.valueOf(count);
        Double num=Math.ceil(c/pageInfo.getPageSize());
        pageInfo.setTotalPage(num.intValue());
        pageInfo.setTotalCount(count);

        map.put("start",(currentPage-1)*pageInfo.getPageSize()) ;
        map.put("searchMinPrice",hotelView.getSearchMinPrice());
        map.put("searchMaxPrice",hotelView.getSearchMaxPrice());
        map.put("hotelCity",hotelView.getHotelCity());
        map.put("hotelCountry",hotelView.getHotelCountry());
        map.put("hotelComment",hotelView.getHotelComment());

        List<HotelView> hotelViewList=hotelDao.searchHotelByLike(map);
        pageInfo.setLists(hotelViewList);
        return pageInfo;
    }

    @Override
    public List<HotelView> searchRoomByHotelId(HotelView hotelView) {

        return hotelDao.searchRoomByHotelId(hotelView);
    }
    @Override
    public HotelView searchHotelById(HotelView hotelView) {
        return hotelDao.searchHotelById(hotelView);
    }

    @Override
    public int addHotelOrder(int hotelId,int userId,int roomId) {
        HashMap<String,Object> map=new HashMap<>();
        map.put("hotelId",hotelId);
        map.put("userId",userId);
        map.put("roomId",roomId);
        return hotelDao.addHotelOrder(map);
    }

    @Override
    public int delHotelOrder(int hotelOrderId) {
        HashMap<String,Object> map=new HashMap<>();
        return hotelDao.delHotelOrder(hotelOrderId);
    }
    @Override
    public List<HotelView> searchUserHotelOrder(UserView userView) {
        return hotelDao.searchUserHotelOrder(userView);
    }
}
