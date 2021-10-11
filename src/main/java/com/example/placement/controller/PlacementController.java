package com.example.placement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.placement.dao.Placement;
import com.example.placement.dao.User;
import com.example.placement.dao.UserRegistration;
import com.example.placement.services.PlacementRepository;
import com.example.placement.services.UserRegistrationRepository;
import com.example.placement.services.UserRepository;

@Controller
public class PlacementController {

	@Autowired
	private PlacementRepository placementRepository;
	@Autowired
	private UserRegistrationRepository studentRepository;

	@GetMapping("placemntsController")
	public String getUsers(Model model) {
		return "placement.jsp";
	}

	@PostMapping("/placement_register")
	public String processRegister(Placement placement) {

		placementRepository.save(placement);

		return "success.jsp";

	}

	@GetMapping("studentController")
	public String getStudentRegistration(Model model) {
		return "userregistration.jsp";
	}

	@PostMapping("/student_register")
	public String studentRegister(UserRegistration placement) {

		studentRepository.save(placement);

		return "success.jsp";

	}

	@GetMapping("userStudents")
	public String getStudents(Model model) {
		model.addAttribute("lists", studentRepository.findAll());
		return "students.jsp";
	}
}
