package com.jiaogai.model.vo;

import java.util.Date;
import java.util.List;

import com.jiaogai.model.Budget;
import com.jiaogai.model.Group;
import com.jiaogai.model.Result;

public class ProjectVo {
	private long id;

    private String pTitle;

    private Date createTime;

    private String according;//立项依据
   
    private String groups;
    
    private String endTime;
    
    private String applyTime;
    
    private Integer status;
    //教师信息
    private long teacherId;
    
    private String teacherName;
    
    private String teacherSex;

    private String tBirthday;
    
    private String resume;//主要教学工作简历

    //教师自己的项目研究成果集合
    private List<Result> resultList;
    
    //部门信息
    private String dName;

    private String dAddress;

    private String dTel;
    
    private String dEmail;
    //类型信息
    private  Integer typeId;

    private String typeName;
    
    //小组成员集合

    private List<Group> groupList;
    //项目实施方案及实施计划
    private String printOne;
    
    private String printTwo;
    
    private String printThree;
    
    private String printFour;
    //教学改革基础
    private String basicsOne;
    
    private String basicsTwo;
    //经费预算集合
    private List<Budget> budgetList;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getpTitle() {
		return pTitle;
	}
	public void setpTitle(String pTitle) {
		this.pTitle = pTitle;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getAccording() {
		return according;
	}
	public void setAccording(String according) {
		this.according = according;
	}
	public String getGroups() {
		return groups;
	}
	public void setGroups(String groups) {
		this.groups = groups;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getApplyTime() {
		return applyTime;
	}
	public void setApplyTime(String applyTime) {
		this.applyTime = applyTime;
	}
	
	public String getdName() {
		return dName;
	}
	public void setdName(String dName) {
		this.dName = dName;
	}
	public long getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(long teacherId) {
		this.teacherId = teacherId;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getTeacherSex() {
		return teacherSex;
	}
	public void setTeacherSex(String teacherSex) {
		this.teacherSex = teacherSex;
	}
	public String gettBirthday() {
		return tBirthday;
	}
	public void settBirthday(String tBirthday) {
		this.tBirthday = tBirthday;
	}
	public String getResume() {
		return resume;
	}
	public void setResume(String resume) {
		this.resume = resume;
	}
	
	public String getdAddress() {
		return dAddress;
	}
	public void setdAddress(String dAddress) {
		this.dAddress = dAddress;
	}
	public String getdTel() {
		return dTel;
	}
	public void setdTel(String dTel) {
		this.dTel = dTel;
	}
	public String getdEmail() {
		return dEmail;
	}
	public void setdEmail(String dEmail) {
		this.dEmail = dEmail;
	}
	public Integer getTypeId() {
		return typeId;
	}
	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public String getPrintOne() {
		return printOne;
	}
	public void setPrintOne(String printOne) {
		this.printOne = printOne;
	}
	public String getPrintTwo() {
		return printTwo;
	}
	public void setPrintTwo(String printTwo) {
		this.printTwo = printTwo;
	}
	public String getPrintThree() {
		return printThree;
	}
	public void setPrintThree(String printThree) {
		this.printThree = printThree;
	}
	public String getPrintFour() {
		return printFour;
	}
	public void setPrintFour(String printFour) {
		this.printFour = printFour;
	}
	public String getBasicsOne() {
		return basicsOne;
	}
	public void setBasicsOne(String basicsOne) {
		this.basicsOne = basicsOne;
	}
	public String getBasicsTwo() {
		return basicsTwo;
	}
	public void setBasicsTwo(String basicsTwo) {
		this.basicsTwo = basicsTwo;
	}
	public List<Result> getResultList() {
		return resultList;
	}
	public void setResultList(List<Result> resultList) {
		this.resultList = resultList;
	}
	public List<Budget> getBudgetList() {
		return budgetList;
	}
	public void setBudgetList(List<Budget> budgetList) {
		this.budgetList = budgetList;
	}
	
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public List<Group> getGroupList() {
		return groupList;
	}
	public void setGroupList(List<Group> groupList) {
		this.groupList = groupList;
	}
	@Override
	public String toString() {
		return "ProjectVo [id=" + id + ", pTitle=" + pTitle + ", createTime=" + createTime + ", according=" + according
				+ ", groups=" + groups + ", endTime=" + endTime + ", applyTime=" + applyTime + ", status=" + status
				+ ", teacherId=" + teacherId + ", teacherName=" + teacherName + ", teacherSex=" + teacherSex
				+ ", tBirthday=" + tBirthday + ", resume=" + resume + ", resultList=" + resultList + ", dName=" + dName
				+ ", dAddress=" + dAddress + ", dTel=" + dTel + ", dEmail=" + dEmail + ", typeId=" + typeId
				+ ", typeName=" + typeName + ", groupList=" + groupList + ", printOne=" + printOne + ", printTwo="
				+ printTwo + ", printThree=" + printThree + ", printFour=" + printFour + ", basicsOne=" + basicsOne
				+ ", basicsTwo=" + basicsTwo + ", budgetList=" + budgetList + "]";
	}
	
	
    
    
}
