package com.river.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.river.model.Account;

@Service
public interface AccountService {
	Account findOneByUsername(String username);
	List<Account> findAll();
	List<Object[]> getAccount(); 
	Account findById(int id);
	void save(Account account);
}
