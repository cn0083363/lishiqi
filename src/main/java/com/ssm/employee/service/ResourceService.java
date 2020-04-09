package com.ssm.employee.service;
import com.github.pagehelper.PageInfo;
import com.ssm.employee.pojo.EmployeeInfo;

public interface ResourceService {
	
	public PageInfo<EmployeeInfo> findResources(int pageNo);

}
