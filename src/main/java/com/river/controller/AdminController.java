package com.river.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.river.model.Account;
import com.river.model.Equipment;
import com.river.service.AccountService;
import com.river.service.EquipmentService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	@Qualifier("accountServiceImpl")
	AccountService accountService;
	@Autowired
	EquipmentService equipmentService;

	@GetMapping("/equipment")
	public String showEquipment(Model model) {
		List<Object[]> lists = equipmentService.getEquipment();
		model.addAttribute("lists", lists);
		return "equipment";
	}

	@GetMapping("/createequipment")
	public String showCEquipment(Model model) {
		List<Account> accounts = accountService.findAll();
		model.addAttribute("accounts", accounts);
		return "createequipment";
	}

	@PostMapping("/createequipment")
	public String showCEquipment(@ModelAttribute("equipment") Equipment equipment) {
		equipment.setStatus(true);
		equipmentService.save(equipment);
		return "redirect:equipment";
	}

	@GetMapping("/editequipment")
	public String showEEquipment(Model model, Model model2, @RequestParam("id") Integer id) {
		Equipment equipment = equipmentService.findById(id);
		model.addAttribute("equipment", equipment);
		List<Account> accounts = accountService.findAll();
		model2.addAttribute("accounts", accounts);
		return "editequipment";
	}
	
	@PostMapping("/editequipment")
	public String showEEquipment(@ModelAttribute("equipment") Equipment equipment) {
		int id = equipment.getId();
		equipmentService.save(equipment,id);
		return "redirect:equipment";
	}

	@GetMapping("/deleteequipment")
	public String showDEquipment(@RequestParam("id") Integer id) {
		equipmentService.deleteById(id);
		return "redirect:equipment";
	}
	
	@GetMapping("/userequipment")
	public String showUserEquipment(@RequestParam("id") Integer id, Model model) {
		Account account = accountService.findById(id);
		List<Equipment> equipments = account.getEquipment();
		model.addAttribute("equipments", equipments);
		model.addAttribute("account", account);
		return "userequipment";
	}
	
	@GetMapping("/deleteuserequipment")
	public String showDUEquipment(@RequestParam("id") Integer id, @RequestParam("uid") Integer uid, Model model) {
		equipmentService.deleteById(id);
		Account account = accountService.findById(uid);
		List<Equipment> equipments = account.getEquipment();
		model.addAttribute("equipments", equipments);
		model.addAttribute("account", account);
		return "userequipment";
		
	}
}
