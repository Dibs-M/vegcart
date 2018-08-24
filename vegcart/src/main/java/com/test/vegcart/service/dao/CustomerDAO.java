package com.test.vegcart.service.dao;

import org.springframework.data.repository.CrudRepository;

import com.test.vegcart.entity.Customer;

public interface CustomerDAO extends CrudRepository<Customer, String> {

}
