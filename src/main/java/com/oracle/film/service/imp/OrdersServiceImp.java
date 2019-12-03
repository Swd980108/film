package com.oracle.film.service.imp;

import com.oracle.film.dao.OrdersDao;
import com.oracle.film.pojo.Orders;
import com.oracle.film.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("ordersServiceImp")
public class OrdersServiceImp implements OrdersService {

    @Autowired
    private OrdersDao ordersDao;

    @Override
    public void addOrders(Orders orders) {
       ordersDao.addOrders(orders);
    }
}
