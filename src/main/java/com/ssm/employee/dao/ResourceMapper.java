package com.ssm.employee.dao;

import java.util.List;
import java.util.Map;

import com.ssm.employee.pojo.EmployeeInfo;
import com.ssm.employee.pojo.ResourceInfo;

public interface ResourceMapper {
	public List<EmployeeInfo> findResources();
}
