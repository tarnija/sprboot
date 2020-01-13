package com.springbootweb.controller;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springbootweb.model.Note;
import com.springbootweb.service.NoteService;

@Controller
public class NoteController {

	@Autowired
	private NoteService noteService;
	
	@GetMapping(value = "/notes")
	public String getNotes(ModelMap map) {
		List<Note> notes = noteService.getAllNotes();
		map.put("notes", notes);
		return "notes";
	}
	
	@PostMapping(value = "/notes")
	public String addNote(ModelMap map, @RequestParam(name = "title")String title, @RequestParam(name = "content")String content, @RequestParam(name = "tags[]")Set<String> tags) {
		Note note = new Note(title, content, tags);
		Long noteId =  noteService.addNote(note);
		note.setId(noteId);
		map.put("note", note);
		return "note";
	}

	@PutMapping(value = "/notes")
	public @ResponseBody String updateNote(@RequestParam(name = "noteId")Long noteId, @RequestParam(name = "title")String title, @RequestParam(name = "content")String content, @RequestParam(name = "tags[]")Set<String> tags) {
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
