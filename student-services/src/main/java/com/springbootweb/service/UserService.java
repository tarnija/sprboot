package com.springbootweb.service;



import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.springbootweb.controller.NewUserController;
import com.springbootweb.dao.AuthRepository;
import com.springbootweb.dao.UserRepository;
import com.springbootweb.model.Auth;
import com.springbootweb.model.UserNew;

@Service
public class UserService {
@Autowired
UserRepository userDao;
@Autowired
AuthRepository authDao;
public boolean addUser(String name,String password,String email, String ques, String ans) {
	BCryptPasswordEncoder encoder=new BCryptPasswordEncoder();
	try{
		UserNew u=new UserNew();
	u.setName(name);
	u.setPassword(encoder.encode(password));
	u.setEmail(email);
	u.setSecurityQuestion(ques);
	u.setAnswer(ans);
	userDao.save(u);
	Auth a=new Auth();
	a.setName(name);
	a.setAuthority("user");
	authDao.save(a);
	return true;
	}
	catch (Exception e) {
		return false;
	} 
}
public boolean checkifuserAlreadyExists(String email, HashMap<String, String> result) {
	List<UserNew> user=userDao.findAllUsersWithEmai(email);
	
	if(user.size()>0){
		result.put("question",user.get(0).getSecurityQuestion());
		result.put("answer",user.get(0).getAnswer());
		return true;
	}
	else {
	return false;
	}
}
public boolean checkifuserAlreadyExistsWithName(String name, HashMap<String, String> result) {
	UserNew user=userDao.findUserByName(name);
	
	if(user!=null){
		result.put("question",user.getSecurityQuestion());
		result.put("answer",user.getAnswer());
		return true;
	}
	else {
	return false;
	}
}
public String getUserCredentials(String email) {

	List<UserNew> user=userDao.findUserNewByEmail(email);
	UserNew u=	userDao.findUserByName(email);
	String username="";
	String password="";
	if(user.size()>0)
	{
		username=user.get(0).getName();
		password=user.get(0).getPassword();
	}
	else {
		username=u.getName();
		password=u.getPassword();
		}
	String msg= "Your credentials are: Username: "+username+" Password: "+password;
	return msg;
			
}
public boolean updateUserPassword(String email, String pass) {
	BCryptPasswordEncoder encoder=new BCryptPasswordEncoder();
	UserNew user=userDao.findUserByNameOrEmail(email,email);
	if(user!=null) {
	user.setPassword(encoder.encode(pass));
	userDao.save(user);
	return true;
	}
	else {
		return false;
	}
}
}
