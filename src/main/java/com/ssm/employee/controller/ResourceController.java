package com.ssm.employee.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.github.pagehelper.PageInfo;
import com.ssm.employee.pojo.EmployeeInfo;
import com.ssm.employee.pojo.Master;
import com.ssm.employee.pojo.ResourceInfo;
import com.ssm.employee.service.MasterService;
import com.ssm.employee.service.ResourceService;

@Controller
public class ResourceController {
	@Autowired
	private MasterService masterService;	
	@Autowired
	private ResourceService resourceService;	
	public void setEmployeeInfoService(ResourceService resourceService) {
		this.resourceService=resourceService;
	}
	public void setMasterService(MasterService masterService) {
		this.masterService = masterService;
	}
	
	@RequestMapping("/ResourceConfirmInfoQuery")
	String showQuery(ResourceInfo res, HttpServletRequest request, Model model){
		PageInfo<EmployeeInfo> page = resourceService.findResources(1);
		model.addAttribute("page", page);
		for(EmployeeInfo e : page.getList()) {
			System.out.println("\t"+e);
		}	
		return "ResourceConfirmInfoQuery";		
	}
	
	@RequestMapping("/ResourceConfirm")
	String resourceConfirm(ResourceInfo res, HttpServletRequest request, Model model){	
		PageInfo<EmployeeInfo> page = resourceService.findResources(1);
		model.addAttribute("page", page);
		return "assignResourceConfirm_result";		
	}
	
	@RequestMapping("/ResourceConfirmcr")
	String resourceConfirmcr(ResourceInfo res, HttpServletRequest request, Model model){	
		PageInfo<EmployeeInfo> page = resourceService.findResources(1);
		model.addAttribute("page", page);
		return "ResourceConfirmInfoQuery";		
	}
	
	@RequestMapping("/assignResourceQuery")
	String assignResourceQuery(HttpSession session){
		List<Master> siteList = masterService.getMastersBycategoryCode("0010");
		session.setAttribute("sites", siteList);
		List<Master> typeList = masterService.getMastersBycategoryCode("0050");
		session.setAttribute("types", typeList);
		List<Master> jobList = masterService.getMastersBycategoryCode("1050");
		session.setAttribute("job", jobList);
		List<Master> japaneselevelList = masterService.getMastersBycategoryCode("1070");
		session.setAttribute("japaneselevel", japaneselevelList);
		List<Master> GDCCList = masterService.getMastersBycategoryCode("1010");
		session.setAttribute("GDCC", GDCCList);
		List<Master> DeliveryList = masterService.getMastersBycategoryCode("1040");
		session.setAttribute("Delivery", DeliveryList);	
		return "assignResourceQuery";		
	}
	
	@RequestMapping(value="/assignResourceResult", method=RequestMethod.POST)
	public String findEmp(EmployeeInfo emp, HttpServletRequest request, Model model) {	
			return "assignResourceResult";		
	}
	
	@RequestMapping("/assignResourceUsedQuery")
	String assignResourceUsedQuery(HttpSession session){
		List<Master> siteList = masterService.getMastersBycategoryCode("0010");
		session.setAttribute("sites", siteList);
		List<Master> typeList = masterService.getMastersBycategoryCode("0050");
		session.setAttribute("types", typeList);
		List<Master> statusList = masterService.getMastersBycategoryCode("1090");
		session.setAttribute("status", statusList);
		return "assignResourceUsedQuery";		
	}
	
	@RequestMapping("/assignResourceUsedResult")
	String assignResourceUsedResult(HttpSession session){
		return "assignResourceUsedResult";		
	}
}
