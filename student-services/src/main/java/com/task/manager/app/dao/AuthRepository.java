package com.task.manager.app.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.task.manager.app.model.Auth;

public interface AuthRepository extends JpaRepository<Auth, Long> {

	List<Auth> findAuthByName(String name);

	@Transactional
	void deleteAuthByName(String name);
	

	@Query(value = "SELECT a.name FROM Auth a WHERE a.authority!='admin'")
	List<String> findAllUsersExceptAdmin();
}
