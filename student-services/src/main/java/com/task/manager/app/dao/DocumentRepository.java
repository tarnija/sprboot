package com.task.manager.app.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.task.manager.app.model.Document;

public interface DocumentRepository extends JpaRepository<Document, Long> {

}
