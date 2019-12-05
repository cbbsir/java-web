package cbb.web.controller;

import cbb.domain.OrderUserAndGoodName;
import cbb.domain.UserInfo;
import cbb.service.OrderService;
import cbb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

//订单只有删除，没有更新
@RestController
@RequestMapping("/order")
public class OrderController {

    @Autowired
    OrderService orderService;

    @Autowired
    UserService userService;

    //管理员对所有用户订单的管理
    @RequestMapping("/ordertest/admin")
    public ModelAndView orderAdmin(){
        ModelAndView mv = new ModelAndView();
        List<OrderUserAndGoodName> orderUserAndGoodNames = orderService.findAll();
        mv.addObject("orderUserAndGoodNames",orderUserAndGoodNames);
        mv.setViewName("order-admin");
        return mv;
    }

    //管理员删除用户订单
    @RequestMapping(value = "/{id}/delete")
    public ModelAndView detete(@PathVariable String id){
        ModelAndView mv = new ModelAndView();
        orderService.deleteOrderById(id);
        mv.setViewName("redirect:/order/ordertest/admin"+".do");
        return mv;
    }

    //用户对订单的操作页面
    @RequestMapping(value = "/ordertest/user/{username}/orderManage")
    public ModelAndView orderUser(@PathVariable String username){
        ModelAndView mv = new ModelAndView();
        UserInfo userInfo = userService.findByUserName(username);
        mv.addObject("user",userInfo);
        mv.setViewName("user-order-show");

        return mv;

    }

    //用户删除订单
    @RequestMapping("/ordertest/user/{username}/delete")
    public ModelAndView orderDeleteByUser(@PathVariable String username,@RequestParam(value = "userid",required = true)String userid, @RequestParam(value = "goodid",required = true)String goodid){
        ModelAndView mv = new ModelAndView();
        orderService.deleteOrderByUserIdAndGoodId(userid,goodid);
        mv.setViewName("redirect:/order/ordertest/user/"+username+"/orderManage.do");
        return mv;

    }



}
