package com.hack.bernhack.dao;

import java.util.List;

import com.hack.bernhack.model.FormValue;

public interface FormDao {
	public void addReport(FormValue formValue);
	public List<FormValue> getAllReports();
}
