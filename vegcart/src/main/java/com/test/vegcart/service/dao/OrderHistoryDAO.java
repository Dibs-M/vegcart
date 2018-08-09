package com.test.vegcart.service.dao;

import org.springframework.data.repository.CrudRepository;

import com.test.vegcart.entity.OrderHistory;

public interface OrderHistoryDAO extends CrudRepository<OrderHistory, Integer> {

}
