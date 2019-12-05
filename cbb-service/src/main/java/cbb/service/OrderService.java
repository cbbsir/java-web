package cbb.service;

import cbb.domain.Order;
import cbb.domain.OrderUserAndGoodName;

import java.util.List;

public interface OrderService {

    List<OrderUserAndGoodName> findAll();

    void deleteOrderById(String id);
}
