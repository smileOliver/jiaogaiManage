package com.jiaogai.model;

public class Print {
    private Long id;

    private Integer projectId;
    
    private String printOne;
    
    private String printTwo;
    
    private String printThree;
    
    private String printFour;
    

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