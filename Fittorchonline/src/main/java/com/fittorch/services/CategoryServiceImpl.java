
package com.fittorch.services;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.fittorch.dao.CategoryDao;
import com.fittorch.model.Category;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	CategoryDao categoryDao;
	
	@Transactional(propagation = Propagation.SUPPORTS)
	public int insertRow(Category category) {
		return categoryDao.insertRow(category);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public List getList() {
		return categoryDao.getList();
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public Category getRowById(int catid) {
		return categoryDao.getRowById(catid);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int updateRow(Category category) {
		return categoryDao.updateRow(category);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int deleteRow(int catid) {
		return categoryDao.deleteRow(catid);
	}

}