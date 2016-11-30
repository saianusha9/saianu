
package com.fittorch.services;

import java.util.List;

import com.fittorch.model.Supplier;

public interface SupplierService {
 public int insertRow(Supplier supplier);

 public List getList();

 public Supplier getRowById(int spid);

 public int updateRow(Supplier supplier);

 public int deleteRow(int spid);

}