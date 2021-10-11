package com.example.placement.services;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.placement.dao.User;

public interface UserRepository extends JpaRepository<User, Long> {
	
	User getByUserName(String userName);
	 
}