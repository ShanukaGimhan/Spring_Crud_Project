package com.demo.service;

import com.demo.dao.StudentDao;
import com.demo.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;
@Component
@Service
public class StudentService {

    @Autowired
    StudentDao studentDao;

    public void inserStudent(Student student){
        studentDao.insertStudent(student);
    }

    public List<Student> allStudent(){
       return studentDao.allStudent();
    }

    public void updateStudent(Student student){
        studentDao.updateStudent(student);
    }

    public void deleteStudent(int id){
        studentDao.deleteStudent(id);
    }

    public Student getById(int id)
    {
        return studentDao.getStudentById(id);
    }
}
