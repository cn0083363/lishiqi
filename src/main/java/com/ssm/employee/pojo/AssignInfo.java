package com.ssm.employee.pojo;

/**
 * @author dalongmao
 *
 */
public class AssignInfo {
	private String ddcNo;
	private String eid;
	private String assignStartDate;
	private String assignPercent;
	private String assignPrepareFlg;
	private String roleCd;	
	private String confirmFlg;
	private String updUserId;
	private String updTimestamp;
	private String assignType;
	
	public AssignInfo() {
		super();
	}
	
	public AssignInfo(String ddcNo, String eid, String assignStartDate, String assignPercent, String assignPrepareFlg,
			String roleCd, String confirmFlg, String updUserId, String updTimestamp, String assignType) {
		this.ddcNo = ddcNo;
		this.eid = eid;
		this.assignStartDate = assignStartDate;
		this.assignPercent = assignPercent;
		this.assignPrepareFlg = assignPrepareFlg;
		this.roleCd = roleCd;
		this.confirmFlg = confirmFlg;
		this.updUserId = updUserId;
		this.updTimestamp = updTimestamp;
		this.assignType = assignType;
	}
	
	public String getDdcNo() {
		return ddcNo;
	}

	public void setDdcNo(String ddcNo) {
		this.ddcNo = ddcNo;
	}

	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getAssignStartDate() {
		return assignStartDate;
	}

	public void setAssignStartDate(String assignStartDate) {
		this.assignStartDate = assignStartDate;
	}

	public String getAssignPercent() {
		return assignPercent;
	}

	public void setAssignPercent(String assignPercent) {
		this.assignPercent = assignPercent;
	}

	public String getAssignPrepareFlg() {
		return assignPrepareFlg;
	}

	public void setAssignPrepareFlg(String assignPrepareFlg) {
		this.assignPrepareFlg = assignPrepareFlg;
	}

	public String getRoleCd() {
		return roleCd;
	}

	public void setRoleCd(String roleCd) {
		this.roleCd = roleCd;
	}

	public String getConfirmFlg() {
		return confirmFlg;
	}

	public void setConfirmFlg(String confirmFlg) {
		this.confirmFlg = confirmFlg;
	}

	public String getUpdUserId() {
		return updUserId;
	}

	public void setUpdUserId(String updUserId) {
		this.updUserId = updUserId;
	}

	public String getUpdTimestamp() {
		return updTimestamp;
	}

	public void setUpdTimestamp(String updTimestamp) {
		this.updTimestamp = updTimestamp;
	}

	public String getAssignType() {
		return assignType;
	}

	public void setAssignType(String assignType) {
		this.assignType = assignType;
	}

	@Override
	public String toString() {
		return "AssignInfo [ddcNo=" + ddcNo + ", eid=" + eid + ", assignStartDate=" + assignStartDate
				+ ", assignPercent=" + assignPercent + ", assignPrepareFlg=" + assignPrepareFlg + ", roleCd=" + roleCd
				+ ", confirmFlg=" + confirmFlg + ", updUserId=" + updUserId + ", updTimestamp=" + updTimestamp
				+ ", assignType=" + assignType + "]";
	}
	
	

}
