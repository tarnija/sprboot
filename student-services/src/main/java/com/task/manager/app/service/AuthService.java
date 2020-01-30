package com.task.manager.app.service;

import java.util.List;

public interface AuthService {
	List<String> findAllUsersExceptAdmin();
}
