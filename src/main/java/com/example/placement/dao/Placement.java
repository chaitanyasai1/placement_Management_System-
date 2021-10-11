package com.example.placement.dao;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "placement")

public class Placement {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int companyid;
	private String name;
	private int numberofvacancies;

	public int getCompanyid() {
		return companyid;
	}

	public void setCompanyid(int companyid) {
		this.companyid = companyid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getNumberofvacancies() {
		return numberofvacancies;
	}

	public void setNumberofvacancies(int numberofvacancies) {
		this.numberofvacancies = numberofvacancies;
	}

}
