package com.jiaogai.model;

public class Group {
    private Long id;

    private String gName;

    private String birthday;

    private String jobTitle;

    private String workUnit;

    private String fengong;

    private String qianzhang;

    private Integer projectid;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getgName() {
        return gName;
    }

    public void setgName(String gName) {
        this.gName = gName;
    }


    public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getWorkUnit() {
        return workUnit;
    }

    public void setWorkUnit(String workUnit) {
        this.workUnit = workUnit;
    }

    public String getFengong() {
        return fengong;
    }

    public void setFengong(String fengong) {
        this.fengong = fengong;
    }

    public String getQianzhang() {
        return qianzhang;
    }

    public void setQianzhang(String qianzhang) {
        this.qianzhang = qianzhang;
    }

    public Integer getProjectid() {
        return projectid;
    }

    public void setProjectid(Integer projectid) {
        this.projectid = projectid;
    }
}