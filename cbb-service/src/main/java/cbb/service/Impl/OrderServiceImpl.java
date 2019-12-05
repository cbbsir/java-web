package cbb.service.Impl;

import cbb.dao.OrderDao;
import cbb.domain.OrderUserAndGoodName;
import cbb.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    OrderDao orderDao;

    @Override
    public List<OrderUserAndGoodName> findAll() {
        return orderDao.findAll();
    }

    @Override
    public void deleteOrderById(String id) {
        orderDao.deleteOrderById(id);
    }

    @Override
    public void addOrder(String userid, String goodid) {
        orderDao.addOrder(userid,goodid);
    }

    @Override
    public void deleteOrderByUserIdAndGoodId(String userid, String goodid) {
        orderDao.deleteOrderByUserIdAndGoodId(userid,goodid);
    }
}
