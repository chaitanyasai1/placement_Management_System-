package com.example.placement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.placement.dao.User;
import com.example.placement.services.UserRepository;

@Controller
public class UserDetailsController {
	
	@Autowired
    private UserRepository userRepo;
	
	
	@GetMapping("userMapp")
	public String  getUsers(Model model) {
		List<User> list = userRepo.findAll();
        model.addAttribute("lists", list);
		return "users.jsp";
	}

}
