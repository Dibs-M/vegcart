package com.test.vegcart.service.dao;

import org.springframework.data.repository.CrudRepository;

import com.test.vegcart.entity.Order;

public interface OrderDAO extends CrudRepository<Order, Integer> {

}
