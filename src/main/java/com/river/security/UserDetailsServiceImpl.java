package com.river.security;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.river.model.Account;
import com.river.model.Role;
import com.river.repository.RoleRepository;
import com.river.service.AccountService;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	AccountService accountService;

	@Autowired
	RoleRepository roleRepository;

	@Override
	@Transactional
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Account account = accountService.findOneByUsername(username);
		if (account == null) {
			throw new UsernameNotFoundException("User not found");
		}
		List<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>();
		Set<Role> roles = account.getRoles();
		for (Role role : roles) {
			grantedAuthorities.add(new SimpleGrantedAuthority(role.getRolename()));
			System.out.println(grantedAuthorities);
		}

		UserDetails userDetails = new org.springframework.security.core.userdetails.User(account.getUsername(), account.getPassword(),
				true, true, true, true, grantedAuthorities);
		return userDetails;
	}

}
