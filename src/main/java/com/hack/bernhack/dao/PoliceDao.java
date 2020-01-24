package com.hack.bernhack.dao;

import com.hack.bernhack.model.Police;


public interface PoliceDao {
	Police login(String branchName, String password);
}
