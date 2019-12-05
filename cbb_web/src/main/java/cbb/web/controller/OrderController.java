package cbb.web.controller;

import cbb.domain.Order;
import cbb.domain.OrderUserAndGoodName;
import cbb.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
@RequestMapping("/order")
public class OrderController {

    @Autowired
    OrderService orderService;

    //管理员对所有用户订单的管理
    @RequestMapping("/ordertest/admin")
    public ModelAndView orderAdmin(){
        ModelAndView mv = new ModelAndView();
        List<OrderUserAndGoodName> orderUserAndGoodNames = orderService.findAll();
        mv.addObject("orderUserAndGoodNames",orderUserAndGoodNames);
        mv.setViewName("order-admin");
        return mv;
    }

    //删除商品
    @RequestMapping(value = "/{id}/delete")
    public ModelAndView detete(@PathVariable String id){
        ModelAndView mv = new ModelAndView();
        orderService.deleteOrderById(id);
        mv.setViewName("redirect:/order/ordertest/admin"+".do");
        return mv;
    }


}
