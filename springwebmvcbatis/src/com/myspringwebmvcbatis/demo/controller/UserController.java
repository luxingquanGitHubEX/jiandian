package com.myspringwebmvcbatis.demo.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myspringwebmvcbatis.demo.bean.SelfWeb;
import com.myspringwebmvcbatis.demo.bean.User;
import com.myspringwebmvcbatis.demo.service.TestServiceImpl;

@Controller
public class UserController {
	@Resource
	private TestServiceImpl service;

	@RequestMapping("login01")
	@ResponseBody
	public Map<String, String> login(HttpServletRequest request) {
		HttpSession session=request.getSession(true);
		String email = request.getParameter("email");
		String password = request.getParameter("password");	
		User u = new User();
		u.setEmail(email);
		u.setPassword(password);
		User user = service.selectUsers(u);
		Map<String, String> map = new HashMap<>();
		//System.out.println(email + ":" + password);
		if (user != null) {
			//System.out.println(user.toString());
			//将查询出来的User 放入session中
			session.setAttribute("user", user);
			
			map.put("result", "success");
			map.put("msg", "成功");
		} else {
			map.put("result", "error");
			map.put("msg", "失败");
		}
		//System.out.println(map);
		return map;
	}
	
	@RequestMapping("useradd")
	@ResponseBody
	public  Map<String,String>registe(HttpServletRequest request){
//		System.out.println("aaa");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
	//	System.out.println(email+"55"+password);
		int count =service.isHaveUser(email);
//		System.out.println(count);
		Map<String,String> result=new HashMap<>();
		if (count!=0) {
			//查询有重名的email重新填写资料
			result.put("result", "error");
			result.put("msg", "此邮箱已被占用");
			return result;
		}
		//查无此人可以添加
		Map<String,String> insertmap=new HashMap<>();
		insertmap.put("email", email);
		insertmap.put("password",password);
//		System.out.println(insertmap.toString()+"88888888888888888888");
		int isinsert =service.insertUser(insertmap);
		System.out.println(isinsert+"5555555555");
		if (isinsert==0) {//添加失败
			result.put("result", "error");
			result.put("msg", "添加失败");
			return result;
		} else {
			result.put("result", "success");
			return result;
		}
	}
	@RequestMapping("selfwebadd")
	@ResponseBody
	public  Map<String,String>registe01(HttpServletRequest request){
		HttpSession session=request.getSession(true);
//		System.out.println("aaa");
		String nickname=request.getParameter("nickname");
		String sex=request.getParameter("sex");
		String job=request.getParameter("job");
		String city=request.getParameter("city");
		String birthday=request.getParameter("birthday");
		String homepage=request.getParameter("homepage");
		String self_introduce=request.getParameter("self_introduce");
		String wechat=request.getParameter("wechat");
		String sina=request.getParameter("sina");
		String qq=request.getParameter("qq");
		String email=request.getParameter("email");
		SelfWeb selfweb=new SelfWeb();
		
	//	System.out.println(email+"55"+password);
		int count =service.isHaveUser(email);
//		System.out.println(count);
		Map<String,String> result=new HashMap<>();
		if (count!=0) {
			//查询有重名的email重新填写资料
			Map<String,String> insertmap01=new HashMap<>();
			insertmap01.put("nickname", nickname);
			insertmap01.put("sex",sex);
			insertmap01.put("job",job);
			insertmap01.put("city",city);
			insertmap01.put("birthday",birthday);
			insertmap01.put("homepage",homepage);
			insertmap01.put("self_introduce",self_introduce);
			insertmap01.put("wechat",wechat);
			insertmap01.put("sina",sina);
			insertmap01.put("qq",qq);
//			System.out.println(insertmap.toString()+"88888888888888888888");
			int isinsert =service.insertweb(insertmap01);
			System.out.println(isinsert+"5555555555");
			if (isinsert==0) {//添加失败
				session.setAttribute("selfweb", selfweb);
				result.put("result", "error");
				result.put("msg", "添加失败");
				return result;
			} else {
				result.put("result", "success");
				return result;
			}	
		}
		return result;
		
	}
}
