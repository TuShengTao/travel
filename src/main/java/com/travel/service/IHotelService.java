package com.travel.service;

import com.travel.pojo.HotelView;
import com.travel.pojo.PageInfo;
import com.travel.pojo.UserView;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface IHotelService {
    List<HotelView> findHotHotle(HotelView hotelView);
    PageInfo<HotelView>searchHotelByPage(int currentPage);
    PageInfo<HotelView>searchHotelByLike(int currentPage,HotelView hotelView);
    List<HotelView> searchRoomByHotelId(HotelView hotelView);
    HotelView searchHotelById(HotelView hotelView);
    int addHotelOrder(int hotelId,int userId,int roomId);
    int delHotelOrder(int hotelOrderId);
    List<HotelView> searchUserHotelOrder(UserView userView);
}
