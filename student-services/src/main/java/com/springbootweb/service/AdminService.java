package com.springbootweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbootweb.dao.UserRepository;
import com.springbootweb.model.UserNew;



@Service
public class AdminService {
@Autowired 
UserRepository userDao;
	public List<UserNew> retrieveUsers() {
		List<UserNew> users=userDao.findAll();
		return users;
		
		
	}

}
