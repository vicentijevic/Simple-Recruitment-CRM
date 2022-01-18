package com.example.SimpleRecruitmentCRM.model;

public class ApplicationDocument extends BaseEntity {
    private Application application;
    private Document document;

    public Application getApplication() {
        return application;
    }

    public void setApplication(Application application) {
        this.application = application;
    }

    public Document getDocument() {
        return document;
    }

    public void setDocument(Document document) {
        this.document = document;
    }
}
