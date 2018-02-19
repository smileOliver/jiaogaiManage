package com.jiaogai.model;

import java.util.Date;

public class Declaration {

	private long id;
	private String declarationTitle;
	private String declarationContent;
	private long userId;
	private String userName;
	private Date createTime;
	private Integer status;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getDeclarationTitle() {
		return declarationTitle;
	}
	public void setDeclarationTitle(String declarationTitle) {
		this.declarationTitle = declarationTitle;
	}
	public String getDeclarationContent() {
		return declarationContent;
	}
	public void setDeclarationContent(String declarationContent) {
		this.declarationContent = declarationContent;
	}
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	
	
	
	
}
