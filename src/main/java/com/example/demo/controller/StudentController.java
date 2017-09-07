package com.example.demo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Student;
import com.example.demo.service.IStudentService;

@Controller
public class StudentController {
	@Autowired
	IStudentService studentService;

	@RequestMapping(value="/student/{rollNo}")
	String getStudent(Map<String, Object> model, @PathVariable int rollNo) {
		
		
		Student student=studentService.getStudent(rollNo);
		model.put("student",student);
		
		return "studentDetails";
	}
	
	@RequestMapping(value="/students")
	String getStudents(Map<String, Object> model) {

		List<Student> students=studentService.getStudents();
		model.put("students",students);
		
		return "studentsDetails";
	}
	
	@RequestMapping(value="/deleteStudent/{id}")
	String deleteStudent(@PathVariable int id) {

		studentService.deleteStudent(id);
		
		return "deleteSuccessful";
	}
	
	@RequestMapping(value="/createStudent")
	String createStudent() {

		return "createStudent";
	}
	
	@RequestMapping(value="/addStudent",method=RequestMethod.POST)
	String createStudent(@RequestParam int id, @RequestParam String name, @RequestParam int marks) {
		Student student=new Student();
		student.setId(id);
		student.setName(name);
		student.setMarks(marks);
		
		studentService.addStudent(student);
		return "addSuccessful";
	}

}
