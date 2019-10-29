package com.river.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.river.model.Account;
import com.river.model.Equipment;
import com.river.service.AccountService;
import com.river.service.EquipmentService;

@Controller
public class ApplicationController {
	@Autowired
	AccountService accountService;
	@Autowired
	EquipmentService equipmentService;

	@GetMapping(value = { "/", "index" })
	public String showIndex() {
		return "index";
	}

	@GetMapping("/login")
	public String showLogin() {
		return "login";
	}

	@GetMapping("/logout")
	public String showLogout() {
		return "logout";
	}

	@GetMapping(value = { "/home" })
	public String showHome() {
		return "home";
	}

	@GetMapping(value = { "/403" })
	public String show403() {
		return "/403";
	}

	@GetMapping("/register")
	public String showRegister() {
		return "register";
	}

	@PostMapping("/register")
	public String showRegister(@ModelAttribute("account") Account account, RedirectAttributes redirAttrs) {
		Account accountExists = accountService.findOneByUsername(account.getUsername());
		if (accountExists != null) {
			redirAttrs.addAttribute("error", true);
			return "redirect:register";

		} else {
			accountService.save(account);
			redirAttrs.addFlashAttribute("account", account);
			return "redirect:login";
		}
	}

	@GetMapping("/admin")
	public String showAdminPage(Model model) {
		List<Object[]> lists = accountService.getAccount();
		model.addAttribute("lists", lists);
		return "admin";
	}

	@GetMapping(value = { "admin/home" })
	public String showAHome() {
		return "redirect:/home";
	}
	
	@GetMapping(value = { "admin/index" })
	public String showAIndex() {
		return "redirect:/index";
	}

	@GetMapping("/user")
	public String showUserPage(Model model) {
		SecurityContext context = SecurityContextHolder.getContext();
		Authentication authentication = context.getAuthentication();
		String username = authentication.getName();
		Account accountuser = accountService.findOneByUsername(username);
		accountuser.setPassword(accountuser.getPassword());
		model.addAttribute("accountuser", accountuser);

		List<Equipment> equipments = accountuser.getEquipment();
		model.addAttribute("equipments",equipments);
		return "user";
	}

}
