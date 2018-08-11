package com.bdi.erp.dao;

import java.util.List;
import java.util.Map;

public interface UserDAO {

	public boolean login(String id, String pwd);
	public List<Map<String,String>> getUserList(String name, String val);
	public List<Map<String, String>> getUserList(Map<String, String[]> param);
}