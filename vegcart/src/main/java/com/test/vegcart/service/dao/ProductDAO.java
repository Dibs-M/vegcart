package com.test.vegcart.service.dao;

import org.springframework.data.repository.CrudRepository;

import com.test.vegcart.entity.Product;

public interface ProductDAO extends CrudRepository<Product, Integer> {

}
