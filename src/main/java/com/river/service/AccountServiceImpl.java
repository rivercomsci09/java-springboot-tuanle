package com.river.service;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.river.model.Account;
import com.river.model.Role;
import com.river.repository.AccountRepository;
import com.river.repository.RoleRepository;

@Service
public class AccountServiceImpl implements AccountService {
	@Autowired
	AccountRepository accountRepository;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	@Autowired
	private RoleRepository roleRepository;

	@Override
	public List<Object[]> getAccount() {
		return accountRepository.getAccount();
	}

	@Override
	public List<Account> findAll() {
		return accountRepository.findAll();
	}

	@Override
	public Account findOneByUsername(String username) {
		return accountRepository.findOneByUsername(username);
	}

	@Override
	public Account findById(int id) {
		return accountRepository.findById(id);
	}

	@Override
	public void save(Account account) {
		account.setPassword(bCryptPasswordEncoder.encode(account.getPassword()));
//		HashSet<Role> roles = new HashSet<>();
//		roles.add(roleRepository.findByRolename("USER"));
//		roles.add(roleRepository.findByRolename("ADMIN"));
//		account.setRoles(roles);
		Role userRole = roleRepository.findByRolename("USER");
		account.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
		accountRepository.save(account);

	}

}
