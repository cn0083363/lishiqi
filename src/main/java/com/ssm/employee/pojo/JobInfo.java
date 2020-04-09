package com.ssm.employee.pojo;

public class JobInfo {
	private String eid;
	private String jobTitleCode;
	private String jobLevelCode;
	private String deliveryCapabilityCode;
	private String jobPositionCode;
	private String confirmStatus;
	private String rejectReason;
	private String insUserid;
	private String insTimestamp;
	private String updUserid;
	private String updTimestamp;
	private Master title;
	private Master capability;
	private Master position;
	private Master confirm;
	
	public JobInfo() {}
	public Master getTitle() {
		return title;
	}

	public void setTitle(Master title) {
		this.title = title;
	}
	public Master getCapability() {
		return capability;
	}

	public void setCapability(Master capability) {
		this.capability = capability;
	}

	

	public Master getPosition() {
		return position;
	}

	public void setPosition(Master position) {
		this.position = position;
	}

	public Master getConfirm() {
		return confirm;
	}

	public void setConfirm(Master confirm) {
		this.confirm = confirm;
	}
	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getJobTitleCode() {
		return jobTitleCode;
	}

	public void setJobTitleCode(String jobTitleCode) {
		this.jobTitleCode = jobTitleCode;
	}

	public String getJobLevelCode() {
		return jobLevelCode;
	}

	public void setJobLevelCode(String jobLevelCode) {
		this.jobLevelCode = jobLevelCode;
	}

	public String getDeliveryCapabilityCode() {
		return deliveryCapabilityCode;
	}

	public void setDeliveryCapabilityCode(String deliveryCapabilityCode) {
		this.deliveryCapabilityCode = deliveryCapabilityCode;
	}

	public String getJobPositionCode() {
		return jobPositionCode;
	}

	public void setJobPositionCode(String jobPositionCode) {
		this.jobPositionCode = jobPositionCode;
	}

	public String getConfirmStatus() {
		return confirmStatus;
	}

	public void setConfirmStatus(String confirmStatus) {
		this.confirmStatus = confirmStatus;
	}

	public String getRejectReason() {
		return rejectReason;
	}

	public void setRejectReason(String rejectReason) {
		this.rejectReason = rejectReason;
	}

	public String getInsUserid() {
		return insUserid;
	}

	public void setInsUserid(String insUserid) {
		this.insUserid = insUserid;
	}

	public String getInsTimestamp() {
		return insTimestamp;
	}

	public void setInsTimestamp(String insTimestamp) {
		this.insTimestamp = insTimestamp;
	}

	public String getUpdUserid() {
		return updUserid;
	}

	public void setUpdUserid(String updUserid) {
		this.updUserid = updUserid;
	}

	public String getUpdTimestamp() {
		return updTimestamp;
	}

	public void setUpdTimestamp(String updTimestamp) {
		this.updTimestamp = updTimestamp;
	}

	@Override
	public String toString() {
		return "JobInfo [eid=" + eid + ", jobTitleCode=" + jobTitleCode + ", jobLevelCode=" + jobLevelCode
				+ ", deliveryCapabilityCode=" + deliveryCapabilityCode + ", jobPositionCode=" + jobPositionCode
				+ ", confirmStatus=" + confirmStatus + ", rejectReason=" + rejectReason + ", insUserid=" + insUserid
				+ ", insTimestamp=" + insTimestamp + ", updUserid=" + updUserid + ", updTimestamp=" + updTimestamp
				+ "]";
	}
	
	
}
