package com.oracle.film.dao;

import com.oracle.film.pojo.Orders;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrdersDao {

    public void addOrders(Orders orders);
}
