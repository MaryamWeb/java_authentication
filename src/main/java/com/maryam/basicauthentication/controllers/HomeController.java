package com.maryam.basicauthentication.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.maryam.basicauthentication.models.User;
import com.maryam.basicauthentication.services.UserService;

@Controller
public class HomeController {

	@Autowired
	private UserService uServ;
	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("newUser", new User());
		return "index.jsp";
	}

}