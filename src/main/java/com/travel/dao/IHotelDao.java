package com.travel.dao;

import com.travel.pojo.HotelView;
import com.travel.pojo.UserView;

import java.util.HashMap;
import java.util.List;

public interface IHotelDao {
    List<HotelView> findHotHotle(HotelView hotelView);
    int selectHotelCount();//查询所有总数
    int hotelLikeCount(HotelView hotelView);//模糊查询酒店的总数
    List<HotelView> searchHotelByPage(HashMap<String,Object> map);
    List<HotelView>searchHotelByLike(HashMap<String,Object> map);
    HotelView searchHotelById(HotelView hotelView);
    List<HotelView>searchRoomByHotelId(HotelView hotelView);
    int addHotelOrder(HashMap<String,Object>map);
    int delHotelOrder(int hotelOrderId);
    List<HotelView>searchUserHotelOrder(UserView userView);


}
