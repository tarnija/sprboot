package com.springbootweb;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import com.springbootweb.dao.AuthRepository;
import com.springbootweb.dao.UserRepository;
import com.springbootweb.model.Auth;
import com.springbootweb.model.UserNew;

@Component
public class AppEvent {
	@Autowired
	UserRepository userDao;
	@Autowired
	AuthRepository authDao;

	private static final Logger logger = LoggerFactory.getLogger(AppEvent.class);

	@EventListener(ApplicationReadyEvent.class)
	public void startApp() {
		
		//to add admin to newly created table
		BCryptPasswordEncoder encoder=new BCryptPasswordEncoder();
		UserNew u = new UserNew();
		u.setName("admin1");
		u.setEmail("admin1@gmail.com");
		u.setPassword(encoder.encode("admin123"));
		u.setSecurityQuestion("What's your favourite colour?");
		u.setAnswer("black");
		UserNew u1 = userDao.findUserByName("admin1");
		if (u1 == null) {
			userDao.save(u);
			Auth a = new Auth();
			a.setName("admin1");
			a.setAuthority("admin");
			authDao.save(a);
			logger.info("admin added");
		}
	}
}