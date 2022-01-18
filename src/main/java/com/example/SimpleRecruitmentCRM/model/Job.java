package com.example.SimpleRecruitmentCRM.model;

import java.util.Date;

public class Job extends BaseEntity {
    private String code;
    private String name;
    private String description;
    private Date datePublished;
    private Date jobStartDate;
    private int noOfVacancies;
    private JobCategory jobCategory;
    private JobPosition jobPosition;
    private JobPlatform jobPlatform;
    private Organization organization;
    private Process process;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDatePublished() {
        return datePublished;
    }

    public void setDatePublished(Date datePublished) {
        this.datePublished = datePublished;
    }

    public Date getJobStartDate() {
        return jobStartDate;
    }

    public void setJobStartDate(Date jobStartDate) {
        this.jobStartDate = jobStartDate;
    }

    public int getNoOfVacancies() {
        return noOfVacancies;
    }

    public void setNoOfVacancies(int noOfVacancies) {
        this.noOfVacancies = noOfVacancies;
    }

    public JobCategory getJobCategory() {
        return jobCategory;
    }

    public void setJobCategory(JobCategory jobCategory) {
        this.jobCategory = jobCategory;
    }

    public JobPosition getJobPosition() {
        return jobPosition;
    }

    public void setJobPosition(JobPosition jobPosition) {
        this.jobPosition = jobPosition;
    }

    public JobPlatform getJobPlatform() {
        return jobPlatform;
    }

    public void setJobPlatform(JobPlatform jobPlatform) {
        this.jobPlatform = jobPlatform;
    }

    public Organization getOrganization() {
        return organization;
    }

    public void setOrganization(Organization organization) {
        this.organization = organization;
    }

    public Process getProcess() {
        return process;
    }

    public void setProcess(Process process) {
        this.process = process;
    }
}
