package com.example.placement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.placement.beans.LoginBean;
import com.example.placement.dao.User;
import com.example.placement.services.PlacementRepository;
import com.example.placement.services.UserRepository;

@Controller
public class LoginController {
	@Autowired
    private UserRepository userRepo;
	
	@Autowired
	private PlacementRepository placementRepository;
	
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String init(Model model) {
        model.addAttribute("msg", "Please Enter Your Login Details");
        return "login.jsp";
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String submit(Model model,
            @ModelAttribute("loginBean") LoginBean loginBean) {
        if (loginBean != null && loginBean.getUserName() != null
                & loginBean.getPassword() != null) {
        	User u = userRepo.getByUserName(loginBean.getUserName());
            if (u!=null && loginBean.getUserName().equals(u.getUserName())
                    && loginBean.getPassword().equals(u.getPassword())) {
                model.addAttribute("user", loginBean.getUserName());
                model.addAttribute("lists", placementRepository.findAll());
                model.addAttribute("isadmin", u.isAdmin());
                return "success.jsp";
            } else {
                model.addAttribute("error", "Invalid Details");
                return "login.jsp";
            }
        } else {
            model.addAttribute("error", "Please enter Details");
            return "login.jsp";
        }
    }
    
    @GetMapping("register")
    public String viewHomePage() {
        return "register.jsp";
    }
    
    @PostMapping("/process_register")
    public String processRegister(User user) {
         
        userRepo.save(user);
         
        return "login.jsp";
    }
}