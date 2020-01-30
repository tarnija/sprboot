package com.task.manager.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.task.manager.app.dao.AuthRepository;

@Service("authService")
public class AuthServiceImpl implements AuthService {
	
	@Autowired
	private AuthRepository dao;
	
	@Override
	public List<String> findAllUsersExceptAdmin(){
		return dao.findAllUsersExceptAdmin();
	}
}
