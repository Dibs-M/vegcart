package com.test.vegcart.service.dao;

import org.springframework.data.repository.CrudRepository;

import com.test.vegcart.entity.Admin;

public interface AdminDAO extends CrudRepository<Admin, String> {

}
