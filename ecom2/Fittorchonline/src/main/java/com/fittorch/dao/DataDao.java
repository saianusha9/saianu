
package com.fittorch.dao;

import java.util.List;

import com.fittorch.model.Product;

public interface DataDao {
 public int insertRow(Product product,String h);

 public List getList();

 public Product getRowById(int pid);

 public int updateRow(Product employee);

 public int deleteRow(int pid);

}