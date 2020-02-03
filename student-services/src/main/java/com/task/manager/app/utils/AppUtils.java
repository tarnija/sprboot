package com.task.manager.app.utils;

import java.util.Date;
import java.util.HashMap;

import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.fasterxml.jackson.databind.ObjectMapper;

public class AppUtils {

	public static String convertMapToStr(HashMap<String, Object> result) {
		String json = null;
		ObjectMapper map = new ObjectMapper();
	 	if (!result.isEmpty()) {
	 		try {
	 			json = map.writeValueAsString(result);
	 		} 
	 		catch (Exception e) {
	 			e.printStackTrace();
	 		}
	 	}
	 	return json;
	} 
	
	public static String getFileUri(String fileName) {
		String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath().path("/uploads/").path(fileName).toUriString();
		return fileDownloadUri;
	}
	
	public static String updateFileNameBeforeSave(Long userId, String extension) {
		return userId + "_" + new Date().getTime() + "_." + extension;
	}
}
