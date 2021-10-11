package com.example.placement.services;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.placement.dao.Placement;

public interface PlacementRepository  extends JpaRepository<Placement, Long> {
	
	
	 
}