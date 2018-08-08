package com.bdi.erp.service.impl;

import com.bdi.erp.service.UserService;

public class UserServiceImpl implements UserService {

	@Override
	public boolean login(String id, String pwd) {
		if(id==null || pwd == null) {
		return false;
	}
		if(id.equals("mango")) {
			if(pwd.equals("rrrrr")) {
				return true;
			}
		}
		return false;
	}
}
