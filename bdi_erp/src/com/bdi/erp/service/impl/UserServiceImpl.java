package com.bdi.erp.service.impl;

import java.util.List;
import java.util.Map;

import com.bdi.erp.dao.UserDAO;
import com.bdi.erp.dao.impl.UserDAOImpl;
import com.bdi.erp.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDAO udao = new UserDAOImpl();
	@Override
	public boolean login(String id, String pwd) {
		return udao.login(id, pwd);
	}
	public List<Map<String,String>>getUserList(Map<String,String[]>param){
		return udao.getUserList(param);
		}

	public List<Map<String, String>> getUserList(String key, String val) {
		return udao.getUserList(key, val);
}
}