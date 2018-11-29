package com.myspringwebmvcbatis.demo.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.myspringwebmvcbatis.demo.bean.User;
@Repository
public interface ITestDao {
	public User selectUsers(User user);
	
	public int isHaveUser(String email);

	public int insertUser(Map<String, String> user);

	public int insertweb(Map<String, String> insertmap01);
	
}
