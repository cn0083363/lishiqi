package com.ssm.employee.pojo;

public class ResourceInfo {
	private String eid;
	private String nameCn;
	private String nameKanji;
	
	public ResourceInfo() {
	}

	public ResourceInfo(String eid, String nameCn, String nameKanji) {
		super();
		this.eid = eid;
		this.nameCn = nameCn;
		this.nameKanji = nameKanji;
	}

	
	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getNameCn() {
		return nameCn;
	}

	public void setNameCn(String nameCn) {
		this.nameCn = nameCn;
	}

	public String getNameKanji() {
		return nameKanji;
	}

	public void setNameKanji(String nameKanji) {
		this.nameKanji = nameKanji;
	}

	@Override
	public String toString() {
		return "ResourceInfo [eid=" + eid + ", nameCn=" + nameCn + ", nameKanji=" + nameKanji + "]";
	}
	

}
