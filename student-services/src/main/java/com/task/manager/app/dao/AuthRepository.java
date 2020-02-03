package com.task.manager.app.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.task.manager.app.model.Auth;
import com.task.manager.app.model.UserNew;

public interface AuthRepository extends JpaRepository<Auth, Long> {

	List<Auth> findAuthByName(String name);

	@Transactional
	void deleteAuthByName(String name);
	

	@Query(value = "SELECT a FROM Auth a WHERE a.authority!='admin'")
	List<UserNew> findAllUsersExceptAdmin();
}
