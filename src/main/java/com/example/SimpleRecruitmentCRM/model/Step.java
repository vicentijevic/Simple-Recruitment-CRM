package com.example.SimpleRecruitmentCRM.model;

import java.util.Set;

public class Step extends BaseEntity {
    private String code;
    private String name;
    private Set<Process> processes;


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
}
