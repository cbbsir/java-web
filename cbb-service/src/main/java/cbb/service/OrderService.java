package cbb.service;

import cbb.domain.OrderUserAndGoodName;

import java.util.List;

public interface OrderService {

    List<OrderUserAndGoodName> findAll();

    void deleteOrderById(String id);

    void addOrder(String userid, String goodid);

    void deleteOrderByUserIdAndGoodId(String userid, String goodid);
}
