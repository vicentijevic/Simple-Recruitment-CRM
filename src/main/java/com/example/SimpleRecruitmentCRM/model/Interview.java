package com.example.SimpleRecruitmentCRM.model;

import java.util.Date;

public class Interview extends BaseEntity {
    private Date startTime;
    private Date endTime;
    private Application application;

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Application getApplication() {
        return application;
    }

    public void setApplication(Application application) {
        this.application = application;
    }
}
