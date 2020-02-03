package com.task.manager.app.controller;

import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.task.manager.app.model.UserNew;
import com.task.manager.app.service.UserService;
import com.task.manager.app.utils.AppURLs;
import com.task.manager.app.utils.AppUtils;

@Controller
@RequestMapping(value = AppURLs.BASE_URL_APP_USERS)
public class ProfileController extends BaseController {

	@Autowired
	private UserService userService;
	
	@GetMapping("/profile/{userId}")
	public String getUserProfile(ModelMap map, @PathVariable(name = "userId", required = true) Long userId) {
		UserNew user = userService.getUser(userId);
		map.addAttribute("title", "Profile");
		map.addAttribute("activeUser", user);
		return "profile";
	}
	
	@PostMapping("/profile/{userId}")
	public @ResponseBody String updateUserProfile(ModelMap map, @RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName, 
			@RequestParam("contact") String contact, @RequestParam("day") int day, @RequestParam("month") int month, @RequestParam("year") int year, 
			@PathVariable(name = "userId", required = true) Long userId) {
			userService.updateUserProfile(firstName, lastName, contact, day, month+1, year, userId);
		return "UPDATED";
	}
	
	@PutMapping("/profile/{userId}")
	public @ResponseBody String updateUserProfilePic(ModelMap map, @RequestParam("file") MultipartFile file, @PathVariable(name = "userId", required = true) Long userId) throws IOException {
		byte[] bytes = file.getBytes();
		
		String ext = FilenameUtils.getExtension(file.getOriginalFilename());
		
		String name = AppUtils.updateFileNameBeforeSave(userId, ext);
		
		Path path = Paths.get("../uploads/" + name);
        Files.write(path, bytes);
        userService.updateUserProfilePic(file.getOriginalFilename(), userId);
		return "UPLOADED";
	}
	
	@GetMapping("/images/{fileName:.+}")
    public ResponseEntity<Resource> downloadFile(@PathVariable String fileName, HttpServletRequest request) {
		Path path = Paths.get("..\\uploads").toAbsolutePath().normalize();
		Resource resource = null;
		try {
            Path filePath = path.resolve(fileName).normalize();
            resource = new UrlResource(filePath.toUri());
        } 
		catch (MalformedURLException ex) {
        	ex.printStackTrace();
        }
        String contentType = null;
        try {
            contentType = request.getServletContext().getMimeType(resource.getFile().getAbsolutePath());
        } 
        catch (IOException ex) {
        	ex.printStackTrace();
        }

        // Fallback to the default content type if type could not be determined
        if(contentType == null) {
            contentType = "application/octet-stream";
        }

        return ResponseEntity.ok()
        					 .contentType(MediaType.parseMediaType(contentType))
        					 .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + resource.getFilename() + "\"")
        					 .body(resource);
    }
}
