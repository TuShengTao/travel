package com.travel.dao;

import com.travel.pojo.ViewView;

import java.util.HashMap;
import java.util.List;

public interface IViewDao {
    List<ViewView> findFourHotView();
    int selectViewCount();//查询所有总数
    List<ViewView> searchViewByPage(HashMap<String, Object> map);
    List<ViewView>searchView();
}
