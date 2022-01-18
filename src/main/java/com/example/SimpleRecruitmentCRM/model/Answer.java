package com.example.SimpleRecruitmentCRM.model;

public class Answer extends BaseEntity {
    private ApplicationTest applicationTest;
    private Recruiter recruiter;
    private String totalGrades;
    private Boolean pass;
    private String answerDetails;

    public ApplicationTest getApplicationTest() {
        return applicationTest;
    }

    public void setApplicationTest(ApplicationTest applicationTest) {
        this.applicationTest = applicationTest;
    }

    public Recruiter getRecruiter() {
        return recruiter;
    }

    public void setRecruiter(Recruiter recruiter) {
        this.recruiter = recruiter;
    }

    public String getTotalGrades() {
        return totalGrades;
    }

    public void setTotalGrades(String totalGrades) {
        this.totalGrades = totalGrades;
    }

    public Boolean getPass() {
        return pass;
    }

    public void setPass(Boolean pass) {
        this.pass = pass;
    }

    public String getAnswerDetails() {
        return answerDetails;
    }

    public void setAnswerDetails(String answerDetails) {
        this.answerDetails = answerDetails;
    }
}
