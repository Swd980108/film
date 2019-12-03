package com.oracle.film.service;

import com.oracle.film.pojo.Orders;
import org.springframework.stereotype.Service;

@Service
public interface OrdersService {

    public void addOrders(Orders orders);
}
