package com.jiaogai.model;

public class Basics {
    private Long id;

    private Integer projectId;

    private String basicsOne;
    
    private String basicsTwo;
    
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

	public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getProjectId() {
        return projectId;
    }

    public void setProjectId(Integer projectId) {
        this.projectId = projectId;
    }
}