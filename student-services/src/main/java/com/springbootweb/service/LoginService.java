package com.springbootweb.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbootweb.dao.UserRepository;
import com.springbootweb.model.UserNew;

@Service
public class LoginService {
@Autowired
UserRepository userDao;
	
		public UserNew findUser(String name) {
	  UserNew user=  userDao.findUserByName(name);
	  return user;
	    }

		


}
