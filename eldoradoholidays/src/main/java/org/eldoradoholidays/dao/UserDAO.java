package org.eldoradoholidays.dao;

import java.util.List;

import org.eldoradoholidays.dto.User;

public interface UserDAO {

	boolean addUser(User user);

	boolean getUser(String email, String password);
	
	User getUserByEmail(String email);
	
	boolean updateUser(User user);
	
	User getWinterPackage(User user);
	
	List<User> getUsers();
}


