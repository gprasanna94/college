package com.example.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Student;
import com.example.demo.repository.IStudentRepository;
import com.example.demo.service.IStudentService;

@Service
public class CollegeStudentServiceImpl implements IStudentService{
	@Autowired
	IStudentRepository studentRepository;
	public Student getStudent(int id){
		return studentRepository.findOne(id);
	}
	@Override
	public List<Student> getStudents() {
		// TODO Auto-generated method stub
		return studentRepository.findAll();
	}
	@Override
	public void deleteStudent(int id) {

		studentRepository.delete(id);
	}
	@Override
	public void addStudent(Student student) {

		studentRepository.save(student);
	}
}
