package com.ssm.employee.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.github.pagehelper.PageInfo;
import com.ssm.employee.pojo.EmployeeInfo;
import com.ssm.employee.pojo.JobInfo;
import com.ssm.employee.pojo.Master;
import com.ssm.employee.pojo.SkillInfo;
import com.ssm.employee.pojo.UserInfo;
import com.ssm.employee.service.EmployeeInfoService;
import com.ssm.employee.service.JobInfoService;
import com.ssm.employee.service.MasterService;
import com.ssm.employee.service.SkillInfoService;

@Controller
public class EmployeeQueryController {
	
	@Autowired
	private MasterService masterService;	
	@Autowired
	private EmployeeInfoService employeeInfoService;
	@Autowired
	private JobInfoService jobInfoService;
	@Autowired
	private SkillInfoService skillInfoService;
	public void setMasterService(MasterService masterService) {
		this.masterService = masterService;
	}

	public void setEmployeeInfoService(EmployeeInfoService employeeInfoService) {
		this.employeeInfoService = employeeInfoService;
	}
	
	public void setJobInfoService(JobInfoService jobInfoService) {
		this.jobInfoService = jobInfoService;
	}

	public void setSkillInfoService(SkillInfoService skillInfoService) {
		this.skillInfoService = skillInfoService;
	}
	
	@RequestMapping(value="/findEmp", method=RequestMethod.POST)
	public String findEmp(EmployeeInfo emp, HttpServletRequest request, Model model) {
		Map<String , Object> map = new HashMap<>();
		map.put("emp", emp);
		map.put("startDateFrom", request.getParameter("startDateFrom"));
		map.put("startDateTo", request.getParameter("startDateTo"));
		map.put("postCode", request.getParameter("postCode"));
		PageInfo<EmployeeInfo> page = employeeInfoService.findEmps(map,2);
		//page.setPageNum(4);
		for(EmployeeInfo e : page.getList()) {
			System.out.println("\t"+e);
		}
		System.out.println(page.getTotal());
		System.out.println(page.getPageNum());
		System.out.println(page.getPageSize());
		System.out.println(page.getPages());
		if(page.getList().size()>0) {
			model.addAttribute("page", page);
			model.addAttribute("tiaojian",map);
			return "employeDetail";
		}else {
			return "queryResult0";
		}
	}
	
	@RequestMapping("/employeQuery")
	public String showQuery(HttpSession session) {
		List<Master> typeList = masterService.getMastersBycategoryCode("0050");
		session.setAttribute("types", typeList);
		List<Master> siteList = masterService.getMastersBycategoryCode("0010");
		session.setAttribute("sites", siteList);
		List<Master> workList = masterService.getMastersBycategoryCode("1090");
		session.setAttribute("works", workList);
		List<Master> jobList = masterService.getMastersBycategoryCode("1050");
		session.setAttribute("job", jobList);
		List<Master> japaneselevelList = masterService.getMastersBycategoryCode("1070");
		session.setAttribute("japaneselevel", japaneselevelList);
		List<Master> GDCCList = masterService.getMastersBycategoryCode("1010");
		session.setAttribute("GDCC", GDCCList);
		List<Master> DeliveryList = masterService.getMastersBycategoryCode("1040");
		session.setAttribute("Delivery", DeliveryList);
		List<Master> ApprovalList = masterService.getMastersBycategoryCode("0060");
		session.setAttribute("Approval", ApprovalList);
		return "employeQuery";
	}
	
	//更新eid的详情
		@RequestMapping(value="/empupdateByeid")
		public String updateEmpByEid(String eid, Model model, HttpSession session) {
			System.out.println("\t"+eid);
			model.addAttribute("eid", eid);
			
			EmployeeInfo emp=employeeInfoService.findEmpByEid(eid);
			model.addAttribute("emp", emp);
			
			List<JobInfo> jobs = jobInfoService.getjobInfosByEid(eid);
			model.addAttribute("jobs", jobs);
			
			List<Master> gdccJobTitle= masterService.getMastersBycategoryCode("1010");
			model.addAttribute("gdccJobTitle",gdccJobTitle);
			
			System.err.print(gdccJobTitle);
			List<Master> delivery = masterService.getMastersBycategoryCode("1040");
			model.addAttribute("delivery",delivery);
			
			List<Master> jddcTitle = masterService.getMastersBycategoryCode("1050");
			model.addAttribute("jddcTitle",jddcTitle);
			
			List<Master> siteList = masterService.getMastersBycategoryCode("0010");
			session.setAttribute("sites", siteList);
			return "employeeUpate";
		}
		
		//查看eid的详情
		@RequestMapping("/empByeid")
		public String getEmpByEid(String eid, Model model) {
			EmployeeInfo emp = employeeInfoService.findEmpByEid(eid);
			model.addAttribute("emp", emp);
			
			List<JobInfo> jobs = jobInfoService.getjobInfosByEid(eid);
			model.addAttribute("jobs", jobs);
			
			return "employeReferto1";
		}
		
		@RequestMapping("/pageEmp")
		public String pageEmp(HttpSession session, int pagenum, Model model) {
			Map<String, Object> map = (Map<String, Object>)session.getAttribute("tiaojian");
			PageInfo<EmployeeInfo> page = employeeInfoService.findEmps(map, pagenum);
			model.addAttribute("page", page);
			return "employeDetail";
		}
		

		@RequestMapping(value="/empUpdate", method= {RequestMethod.POST, RequestMethod.GET})
		public String updateEmp(EmployeeInfo emp,Model model, HttpServletRequest request) throws UnsupportedEncodingException  {
			request.setCharacterEncoding("utf-8");
			System.out.println(request.getParameter("nameCn"));
			System.out.println("\t"+emp);
			employeeInfoService.updateEmp(emp);
			//获取技能信息，并更新或添加
			String[] skillcodes = request.getParameterValues("skillcode");
			System.out.println(Arrays.toString(skillcodes));
			String[] levelcodes = request.getParameterValues("levelcode");
			List<SkillInfo> skills = new ArrayList<SkillInfo>();
			for(int i=0; i< skillcodes.length; i++) {
				SkillInfo si = new SkillInfo();
				si.setEid(emp.getEid());
				si.setSkill(new Master());
				si.getSkill().setCode(skillcodes[i]);
				
				Master level = new Master();
				level.setCode(levelcodes[i]);
				si.setLevel(level);
				UserInfo ui = (UserInfo)request.getSession().getAttribute("user");
				System.out.println(ui);
				si.setUpdUserId(ui.getEid());
				skills.add(si);
			}
			for(SkillInfo s : skills) {
				System.out.println(s);
			}
			skillInfoService.updateOrInsetSkill(skills);
			model.addAttribute("updatesuccess", "ok");
			return "forward:findEmp";
		}
}
