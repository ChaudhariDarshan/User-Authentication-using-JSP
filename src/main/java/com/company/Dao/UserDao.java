package com.company.Dao;

public interface UserDao {

	boolean isValidUser(String username, String password);
	public boolean addUser(User user) ;
}
