package com.task.manager.app.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.task.manager.app.model.Document;
import com.task.manager.app.service.DocumentService;
import com.task.manager.app.utils.AppURLs;

@Controller
@RequestMapping(value = AppURLs.BASE_URL_APP_USERS)
public class DocumentController extends BaseController {

	@Autowired
	private DocumentService documentService;
	
	@GetMapping("/documents")
	public String getUserDocs(ModelMap map) {
		map.addAttribute("title", "Documents");
		return "documents";
	}
	
	@PostMapping("/documents/{userId}")
	public @ResponseBody String addUserDocs(ModelMap map, @RequestParam("file") MultipartFile file, @PathVariable("userId") Long userId) throws IllegalStateException, IOException {
		File userDoc = new File(file.getOriginalFilename());
		file.transferTo(userDoc);
		Document document = new Document(file.getOriginalFilename(), file.getSize(), file.getContentType(), userId);
		return "uploaded";
	}
	
}
