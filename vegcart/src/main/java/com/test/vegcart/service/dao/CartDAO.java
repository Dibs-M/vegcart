package com.test.vegcart.service.dao;

import org.springframework.data.repository.CrudRepository;

import com.test.vegcart.entity.Cart;

public interface CartDAO extends CrudRepository<Cart, Integer> {

}
