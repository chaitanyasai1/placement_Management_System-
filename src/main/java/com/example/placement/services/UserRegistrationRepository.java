package com.example.placement.services;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.placement.dao.UserRegistration;

public interface UserRegistrationRepository extends JpaRepository<UserRegistration, Long> {

}
