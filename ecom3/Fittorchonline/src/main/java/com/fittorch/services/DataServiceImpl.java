
package com.fittorch.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.fittorch.dao.DataDao;
import com.fittorch.model.Product;

@Service("dataService")
public class DataServiceImpl implements DataService {

	@Autowired
	DataDao dataDao;

	@Transactional(propagation = Propagation.SUPPORTS)
	public int insertRow(Product product,String h) {
		return dataDao.insertRow(product,h);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public List getList() {
		return dataDao.getList();
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public Product getRowById(int pid) {
		return dataDao.getRowById(pid);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int updateRow(Product product) {
		return dataDao.updateRow(product);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int deleteRow(int pid) {
		return dataDao.deleteRow(pid);
	}

}