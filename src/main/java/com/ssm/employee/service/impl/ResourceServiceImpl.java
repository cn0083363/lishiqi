package com.ssm.employee.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.employee.dao.ResourceMapper;
import com.ssm.employee.pojo.EmployeeInfo;
import com.ssm.employee.pojo.ResourceInfo;
import com.ssm.employee.service.ResourceService;
@Service
public class ResourceServiceImpl implements ResourceService {
	@Autowired
	private ResourceMapper resourceMapper;
	
	public void setEmployeeInfoMapper(ResourceMapper resourceMapper) {
		this.resourceMapper = resourceMapper;
	}
	@Override
	public PageInfo<EmployeeInfo> findResources(int pageNo) {
		//设置分页的页码、每页记录数
		PageHelper.startPage(pageNo, 10);
		//查询全部符合条件的记录
		List<EmployeeInfo> list = resourceMapper.findResources();
		//设置分页信息（当前页码、每页个数、总记录数、总页数、前一页页码、后一页页码、是否第一页、是否最后一页、当前页的记录。。。）
		PageInfo<EmployeeInfo> page = new PageInfo<>(list);
		return page;
	}

}
