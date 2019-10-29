package com.river.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.river.model.Equipment;

@Repository
public interface EquipmentRepository extends JpaRepository<Equipment, Integer> {
	
	Equipment findById(int id);
	
	@Query("SELECT e.id,e.name,e.type,e.description,e.status, a.username FROM Equipment e INNER JOIN e.account a ORDER BY e.id ASC")
	List<Object[]> getEquipment();
}
