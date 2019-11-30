package com.springbootweb.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.springbootweb.dao.UserRepository;
import com.springbootweb.model.UserNew;




@Service
public class UserDetailsServiceImpl implements UserDetailsService {
@Autowired
private UserRepository userDao;

@Override
public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
	UserNew u=userDao.findUserByName(username);
	  if (u == null) {
          System.out.println("User not found! " + username);
          throw new UsernameNotFoundException("User " + username + " was not found in the database");
      }
	  System.out.println("Found User: " + username);
	  List<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();
	  UserDetails userDetails = (UserDetails) new User(u.getName(), //
              u.getPassword(), grantList);
	return userDetails;
}

}
