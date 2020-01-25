package com.hack.bernhack.dao;

import java.util.List;

import com.hack.bernhack.model.FormValue;
import com.hack.bernhack.model.Police;


public interface PoliceDao {
	Police login(String branchName, String password);
	
}
