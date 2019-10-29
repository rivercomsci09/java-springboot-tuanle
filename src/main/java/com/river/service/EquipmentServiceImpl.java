package com.river.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.river.model.Equipment;
import com.river.repository.EquipmentRepository;

@Service
public class EquipmentServiceImpl implements EquipmentService {

	@Autowired
	EquipmentRepository equipmentRepository;

	@Override
	public void save(Equipment equipment) {
		equipmentRepository.save(equipment);
	}

	@Override
	public List<Equipment> findAll() {
		return equipmentRepository.findAll();
	}

	@Override
	public Equipment findById(int id) {
		return equipmentRepository.findById(id);
	}

	@Override
	public void deleteById(Integer id) {
		equipmentRepository.deleteById(id);
	}

	@Override
	public List<Object[]> getEquipment() {
		return equipmentRepository.getEquipment();
	}

	@Override
	public void save(Equipment equiment, int id) {
		equiment.setId(id);
		equipmentRepository.save(equiment);
	}

}
