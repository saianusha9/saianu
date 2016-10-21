package com.fittorch.services;

import java.util.List;

import com.fittorch.bean.UserBean;



public interface UserBeanServices {
	public int insertRow(UserBean p); 
	 public List getList();
	 public UserBean getRowById(int id);
	 public int updateRow(UserBean p);
	 public int deleteRow(int id);
}

