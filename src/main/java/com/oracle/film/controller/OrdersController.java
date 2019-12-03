package com.oracle.film.controller;


import com.oracle.film.pojo.Orders;
import com.oracle.film.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController
@RequestMapping("/ordersController")
public class OrdersController {

    @Autowired
    private OrdersService ordersService;

    @RequestMapping("/addOrders")
    public void addOrders(Orders orders ) {
        System.out.println("进来了");
        System.out.println(orders);
        ordersService.addOrders(orders);
    }
}
