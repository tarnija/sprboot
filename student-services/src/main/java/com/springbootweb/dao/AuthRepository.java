package com.springbootweb.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springbootweb.model.Auth;


public interface AuthRepository extends JpaRepository<Auth, Integer>{

	List<Auth> findAuthByName(String name);

	@Transactional
	void deleteAuthByName(String name);

	

}
