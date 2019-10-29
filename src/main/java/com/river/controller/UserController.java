package com.river.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.river.model.Account;
import com.river.service.AccountService;
import com.river.service.EquipmentService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	AccountService accountService;
	@Autowired
	EquipmentService equipmentService;

	@GetMapping("/changepass")
	public String showChangePass(@RequestParam("id") int id, Model model) {
		Account account = accountService.findById(id);
		model.addAttribute("account",account);
		return "changepass";
	}
	
	@PostMapping("/changepass")
	public String showChangePass(@ModelAttribute("account") Account account) {
		account.setId(account.getId());
		account.setEmail(account.getEmail());
		System.out.println(account.getId()+"-"+account.getUsername());
		accountService.save(account);
		return "redirect:/login";
	}
	
}
