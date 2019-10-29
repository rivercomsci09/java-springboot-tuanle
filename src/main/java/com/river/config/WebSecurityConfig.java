package com.river.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.river.security.UserDetailsServiceImpl;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	UserDetailsServiceImpl userDetailsService;

	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
		return bCryptPasswordEncoder;
	}

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());

	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
			.and().csrf().disable()
			.formLogin()
			.loginProcessingUrl("/spring_security")
			.loginPage("/login")
			.defaultSuccessUrl("/home")
			.failureUrl("/login?error=true")
			.usernameParameter("username")
			.passwordParameter("password");
		http.authorizeRequests().antMatchers("/", "/login", "/register").permitAll();
		http.authorizeRequests().antMatchers("/home").access("hasAnyAuthority('USER', 'ADMIN')");
		http.authorizeRequests().antMatchers("/admin/**").access("hasAuthority('ADMIN')");
		http.authorizeRequests().antMatchers("/user/**").access("hasAuthority('USER')");
		http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");
		http.authorizeRequests().and().logout().logoutUrl("/logout").logoutSuccessUrl("/");

	}

	
	
	
}
