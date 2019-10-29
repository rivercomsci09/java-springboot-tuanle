package com.river.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.river.model.Account;

@Repository
public interface AccountRepository extends JpaRepository<Account, Integer> {
	Account findOneByUsername(String username);
	Account findById(int id);
	@Query("SELECT a.id, a.username, a.email, r.rolename FROM Account a INNER JOIN a.roles r")
	List<Object[]> getAccount();
}
