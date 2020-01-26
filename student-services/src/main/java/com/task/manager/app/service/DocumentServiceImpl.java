package com.task.manager.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.task.manager.app.dao.DocumentRepository;
import com.task.manager.app.model.Document;

@Service("documentService")
public class DocumentServiceImpl implements DocumentService {

	@Autowired
	private DocumentRepository repository;

	@Override
	public List<Document> getAllDocuments() {
		return null;
	}

	@Override
	public Document addDocument(Document document) {
		return repository.save(document);
	}
	
	
}
