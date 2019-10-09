package com.travel.service.impl;


import com.travel.dao.IViewDao;
import com.travel.pojo.PageInfo;
import com.travel.pojo.ViewView;
import com.travel.service.IViewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class ViewServiceImpl implements IViewService {
    @Autowired
    IViewDao viewDao;
    @Override
    public List<ViewView> findFourHotView(){
        return viewDao.findFourHotView();
    }

    @Override
    public PageInfo<ViewView> searchViewByPage(int currentPage) {
        HashMap<String,Object> map=new HashMap<>();
        map.put("size",6);
        PageInfo<ViewView> pageInfo=new PageInfo<>();
        pageInfo.setCurrentPage(currentPage);
        pageInfo.setPageSize(6);

        int count=viewDao.selectViewCount();

        Double c=Double.valueOf(count);
        Double num=Math.ceil(c/pageInfo.getPageSize());
        pageInfo.setTotalPage(num.intValue());
        pageInfo.setTotalCount(count);
        map.put("start",(currentPage-1)*pageInfo.getPageSize());

        List<ViewView> viewViewList=viewDao.searchViewByPage(map);
        System.out.println(viewViewList);
        pageInfo.setLists(viewViewList);
        System.out.println("输出PageIinfo:"+pageInfo);
        return pageInfo;
    }
}
