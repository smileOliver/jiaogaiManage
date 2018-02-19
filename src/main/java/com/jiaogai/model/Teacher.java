package com.jiaogai.model;

public class Teacher {
    private long id;

    private String tName;

    private String tSex;

    private String tBirthday;

    private String tQq;

    private String tTel;

    private String tEmail;

    private String idNumber;

    private Integer teacherNum;

    private long departmentId;

    private String departmentName;

    private long factionId;

    private String factionName;

    private String tPassword;

    private Integer isProfessor;

    private Integer state;

    private String resume;
    
    private String maxDegree;

    private String jobTitle;
    
    private String headImg;
    
    private String idPhone;
    
    private String nickname;
    

    public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getHeadImg() {
		return headImg;
	}

	public void setHeadImg(String headImg) {
		this.headImg = headImg;
	}

	public String getIdPhone() {
		return idPhone;
	}

	public void setIdPhone(String idPhone) {
		this.idPhone = idPhone;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	

	public String getMaxDegree() {
		return maxDegree;
	}

	public void setMaxDegree(String maxDegree) {
		this.maxDegree = maxDegree;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName;
    }

    public String gettSex() {
        return tSex;
    }

    public void settSex(String tSex) {
        this.tSex = tSex;
    }

    public String gettBirthday() {
        return tBirthday;
    }

    public void settBirthday(String tBirthday) {
        this.tBirthday = tBirthday;
    }

    public String gettQq() {
        return tQq;
    }

    public void settQq(String tQq) {
        this.tQq = tQq;
    }

    public String gettTel() {
        return tTel;
    }

    public void settTel(String tTel) {
        this.tTel = tTel;
    }

    public String gettEmail() {
        return tEmail;
    }

    public void settEmail(String tEmail) {
        this.tEmail = tEmail;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber;
    }

    public Integer getTeacherNum() {
        return teacherNum;
    }

    public void setTeacherNum(Integer teacherNum) {
        this.teacherNum = teacherNum;
    }


    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }


    public long getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(long departmentId) {
		this.departmentId = departmentId;
	}

	public long getFactionId() {
		return factionId;
	}

	public void setFactionId(long factionId) {
		this.factionId = factionId;
	}

	public String getFactionName() {
        return factionName;
    }

    public void setFactionName(String factionName) {
        this.factionName = factionName;
    }

    public String gettPassword() {
        return tPassword;
    }

    public void settPassword(String tPassword) {
        this.tPassword = tPassword;
    }

    public Integer getIsProfessor() {
        return isProfessor;
    }

    public void setIsProfessor(Integer isProfessor) {
        this.isProfessor = isProfessor;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getResume() {
        return resume;
    }

    public void setResume(String resume) {
        this.resume = resume;
    }
}