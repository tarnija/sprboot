package com.task.manager.app.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.task.manager.app.model.UserNew;

@Repository
public interface UserRepository extends JpaRepository<UserNew, Long>{
	
	@Query(value = "SELECT u FROM UserNew u where email=?1")
	List<UserNew> findAllUsersWithEmai(String email);
	
	@Query(value = "SELECT u.id FROM UserNew u where name=?1 AND password=?2")
	List<Integer> findIdIfLogin(String name, String password);

	List<UserNew> findUserNewByEmail(String email);

	UserNew findUserByName(String name);

	UserNew findUserByNameOrEmail(String name, String email);

	UserNew findUserNewById(Long id);
	
	@Modifying
	@Query("UPDATE UserNew un SET un.profileImage =:profileImage WHERE un.id =:id")
	void updateUserProfilePic(@Param("profileImage") String profileImage, @Param("id") Long id);
	
	@Transactional
	@Modifying
	@Query("UPDATE UserNew un SET un.firstName =:firstName, un.lastName =:lastName, un.contact =:contact, un.dateOfBirth =:dateOfBirth WHERE un.id =:id")
	void updateUserProfile(@Param("firstName") String firstName, @Param("lastName") String lastName, @Param("contact") String contact, 
			@Param("dateOfBirth") Date dateOfBirth, @Param("id") Long id);
}
