package com.task.manager.app.controller;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.task.manager.app.model.Note;
import com.task.manager.app.model.UserNew;
import com.task.manager.app.service.LoginService;
import com.task.manager.app.service.NoteService;
import com.task.manager.app.utils.AppURLs;

@Controller
@RequestMapping(value = AppURLs.BASE_URL_APP_USERS)
public class NoteController extends BaseController {

	@Autowired
	private NoteService noteService;
	
	@Autowired
	private LoginService userService;
	
	@GetMapping(value = "/notes")
	public String getNotes(ModelMap map) {
		if(!StringUtils.isEmpty(getLoggedInUserName())) {
			UserNew user = userService.findUser(getLoggedInUserName());
			map.put("user", user);
			List<Note> notes = noteService.getAllNotesByUserId(user.getId());
			map.put("notes", notes);
			map.put("title", "Notes");
			return "notes";
		}
		map.put("title", "Session Expired");
		return "sessionerror";
	}
	
	@PostMapping(value = "/notes")
	public String addNote(ModelMap map, @RequestParam(name = "title") String title, @RequestParam(name = "content") String content, 
			@RequestParam(name = "tags[]") Set<String> tags, @RequestParam(name = "userId") Long userId) {
		Note note = new Note(title, content, tags);
		note.setCreatedBy(userId);
		Long noteId =  noteService.addNote(note);
		note.setId(noteId);
		map.put("note", note);
		return "note";
	}

	@PutMapping(value = "/notes")
	public @ResponseBody String updateNote(@RequestParam(name = "noteId") Long noteId, @RequestParam(name = "title") String title, 
			@RequestParam(name = "content")String content, @RequestParam(name = "tags[]")Set<String> tags) {
		Note note = new Note(title, content, tags);
		note.setId(noteId);
		noteService.updateNote(note);
		return "UPDATED";
	}
	
	@DeleteMapping("/notes")
	public @ResponseBody String deleteNote(@RequestParam(name = "noteId")Long noteId) {
		noteService.deleteNote(noteId);
		return "DELETED";
	}
	
}
