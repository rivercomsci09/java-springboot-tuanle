package com.river.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.river.model.Equipment;

@Service
public interface EquipmentService {
	
	void save(Equipment equipment);
	
	void save(Equipment equiment, int id);

	List<Equipment> findAll();

	Equipment findById(int id);
	
	void deleteById(Integer id);
	
	List<Object[]> getEquipment();
}
