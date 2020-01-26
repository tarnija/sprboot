package com.task.manager.app.service;

import java.util.List;

import com.task.manager.app.model.Document;

public interface DocumentService {

	public List<Document> getAllDocuments();
	
	public Document addDocument(Document document);
	
}
