package com.green.users.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.users.dto.UserDTO;
import com.green.users.mapper.UserMapper;

@Controller
@RequestMapping("/Users")
public class UserContoller {
	
	@Autowired
	private	UserMapper userMapper;
	
	// /Users/List
	@RequestMapping("/List")
	public String list ( Model model ) {
		List<UserDTO> userList = userMapper.getUserList();
		System.out.println(userList);
		model.addAttribute("userList", userList);
		return "users/list";
	} // list () end
	
	// /Users/WriteForm
	@RequestMapping("/WriteForm")
	public String writeForm () {
		
		return "users/write";
	} // writeForm() end
	
	// http://localhost:8080/Users/Write?
	// userid=spring01&password=1234&username=spring01&
	// email=spring01%40green.com
	// /Users/Write
	@RequestMapping("/Write")
	public String	write (UserDTO userDTO) {
		userMapper.insertUser(userDTO);
		return "redirect:/Users/List";
	}
	
	// http://localhost:8080/Users/Delete?userid=spring03
	// Users/Delete
	@RequestMapping("/Delete")
	public String	delete (UserDTO userDTO) {
		userMapper.deleteUser(userDTO);
		return "redirect:/Users/List";
	}
	
	// /Users/UpdateForm?userid=${user.userid}
	// /Users/UpdateForm
	@RequestMapping("/UpdateForm")
	public String	updateForm (UserDTO userDTO, Model model) {
		UserDTO user = userMapper.getUser(userDTO);
		model.addAttribute("user", user);
		return "users/update";
	}
	
	//http://localhost:8080/Users/Update?
	// userid=&password=12345&username=spring02&
	// email=spring02%40naver.com
	@RequestMapping("/Update")
	public String	update (UserDTO userDTO) {
		userMapper.updateUser(userDTO);
		return "redirect:/Users/List";
	}
	
	
} // class UserContoller end