package com.myspringwebmvcbatis.demo.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.myspringwebmvcbatis.demo.bean.User;
import com.myspringwebmvcbatis.demo.dao.ITestDao;
@Service
public class TestServiceImpl implements ITestService{
	@Resource
	private ITestDao dao;
	@Override
	public User selectUsers(User user) {
		// TODO Auto-generated method stub
		return dao.selectUsers(user);
	}
	public int isHaveUser(String email) {
		// TODO Auto-generated method stub
		return dao.isHaveUser(email);
	}
	public int insertUser(Map<String, String> user) {
		// TODO Auto-generated method stub
		return dao.insertUser(user);
	}
	public int insertweb(Map<String, String> insertmap01) {
		// TODO Auto-generated method stub
		return dao.insertweb(insertmap01);
	}
	
	
}
