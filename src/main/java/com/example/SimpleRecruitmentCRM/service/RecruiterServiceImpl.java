package com.example.SimpleRecruitmentCRM.service;

import com.example.SimpleRecruitmentCRM.model.Recruiter;
import com.example.SimpleRecruitmentCRM.repository.RecruiterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecruiterServiceImpl implements RecruiterService {
    @Autowired
    private RecruiterRepository recruiterRepository;

    @Override
    public List<Recruiter> getAllRecruiters() {
        return recruiterRepository.findAll();
    }
}
