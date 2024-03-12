package com.demo.dao;

import com.demo.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;
import java.util.List;

@Component
public class StudentDao {
    @Autowired
    HibernateTemplate hibernateTemplate;

    @Transactional
    public void insertStudent(Student student){
        hibernateTemplate.save(student);
    }

    public List<Student> allStudent(){
        return hibernateTemplate.loadAll(Student.class);
    }

    @Transactional
    public void updateStudent(Student student){
        hibernateTemplate.update(student);
    }

    @Transactional
    public void deleteStudent(int id){
        hibernateTemplate.delete(hibernateTemplate.load(Student.class,id));
    }

    public Student getStudentById(int id)
    {
        Student student= hibernateTemplate.get(Student.class, id);
        return student;
    }
}
