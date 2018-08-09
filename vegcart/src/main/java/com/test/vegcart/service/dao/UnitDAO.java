package com.test.vegcart.service.dao;

import org.springframework.data.repository.CrudRepository;

import com.test.vegcart.entity.Units;

public interface UnitDAO extends CrudRepository<Units, Integer> {

}
