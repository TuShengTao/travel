package com.travel.service;

import com.travel.pojo.PageInfo;
import com.travel.pojo.ViewView;

import java.util.List;

public interface IViewService {
    List<ViewView> findFourHotView();
    PageInfo<ViewView> searchViewByPage(int currentPage);
}
