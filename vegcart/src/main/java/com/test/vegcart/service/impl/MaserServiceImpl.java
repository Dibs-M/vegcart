package com.test.vegcart.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.vegcart.entity.Product;
import com.test.vegcart.entity.Units;
import com.test.vegcart.service.MasterService;
import com.test.vegcart.service.dao.OrderDAO;
import com.test.vegcart.service.dao.ProductDAO;
import com.test.vegcart.service.dao.UnitDAO;

@Service
public class MaserServiceImpl implements MasterService {

	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	UnitDAO unitDAO;
	
	
	
	@Transactional
	@Override
	public List<Product> getProducts() {
		// TODO Auto-generated method stub
		List<Product> productList=new ArrayList<>();
		Iterator<Product> itr=productDAO.findAll().iterator();
		while(itr.hasNext()) {
			productList.add(itr.next());
		}
		//products.forEach(productList::add);
		return productList;
	}

	@Transactional
	@Override
	public List<Units> getUnits() {
		// TODO Auto-generated method stub
		List<Units> unitList=new ArrayList<>();
		Iterator<Units> itr=unitDAO.findAll().iterator();
		while(itr.hasNext()) {
			unitList.add(itr.next());
		}
		//units.forEach(unitList::add);
		return unitList;
	}

	

	

}
