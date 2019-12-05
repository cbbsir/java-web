package cbb.web.controller;


import cbb.domain.Good;
import cbb.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
@RequestMapping("/good")
public class GoodController {
    @Autowired
    GoodService goodService;

    //管理员对商品拥有所有权限,返回商品列表信息
    @RequestMapping("/goodtest/admin")
    public ModelAndView goodAdmin(){
        ModelAndView mv = new ModelAndView();
        List<Good> goodList = goodService.findAll();
        mv.addObject("goodList",goodList);
        mv.setViewName("good-admin");
        return mv;
    }

    //删除商品
    @RequestMapping(value = "/{id}/delete")
    public ModelAndView detete(@PathVariable String id){
        ModelAndView mv = new ModelAndView();
        goodService.deleteGoodById(id);
        mv.setViewName("redirect:/good/goodtest/admin"+".do");
        return mv;
    }


    //页面点击商品信息修改图标，去数据库查询该商品信息，并返回用户更新信息修改页面
    @RequestMapping(value = "/{id}/update")
    public ModelAndView update(@PathVariable String id){
        ModelAndView mv = new ModelAndView();
        Good good = goodService.findGoodById(id);
        mv.addObject("good",good);
        mv.setViewName("good-update");
        return mv;
    }

    //商品信息更新至数据库
    @RequestMapping(value = "/{id}/updateGoodById")
    public ModelAndView updateById(Good good){
        ModelAndView mv = new ModelAndView();
        goodService.updateGoodById(good);
        mv.setViewName("redirect:/good/goodtest/admin"+".do");
        return mv;
    }
}
