package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Student;

public interface IStudentService {

	public Student getStudent(int id);

	public List<Student> getStudents();

	public void deleteStudent(int id);

	public void addStudent(Student student);
}
