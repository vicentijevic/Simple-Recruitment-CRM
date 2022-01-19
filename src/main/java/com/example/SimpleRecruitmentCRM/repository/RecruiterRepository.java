package com.example.SimpleRecruitmentCRM.repository;

import com.example.SimpleRecruitmentCRM.model.Recruiter;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RecruiterRepository extends JpaRepository<Recruiter, Long> {
}
