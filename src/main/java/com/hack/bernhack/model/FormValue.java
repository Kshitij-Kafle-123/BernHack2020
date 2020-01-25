package com.hack.bernhack.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "form_value")
public class FormValue {
	
	@Id
	@GeneratedValue
	private int id;
	private String districtName;
	private String nagarpalika;
	private String category;
	private String description;
	//if Date not works change it to java.sql.Date in import section
	private String date;
	private String witness;
	private String phone;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDistrictName() {
		return districtName;
	}
	public void setDistrictName(String districtName) {
		this.districtName = districtName;
	}
	public String getNagarpalika() {
		return nagarpalika;
	}
	public void setNagarpalika(String nagarpalika) {
		this.nagarpalika = nagarpalika;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getWitness() {
		return witness;
	}
	public void setWitness(String witness) {
		this.witness = witness;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	
	

}
