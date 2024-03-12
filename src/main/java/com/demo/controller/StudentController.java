package com.demo.controller;

import com.demo.model.Student;
import com.demo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping
public class StudentController {

    @Autowired
    StudentService studentService;

    @GetMapping("addStudent")
    public String insertStu(){
        return "AddStudent";
    }

    @PostMapping("/insertStudent")
    public String insertEmployee(@ModelAttribute("insertStudent") Student student)
    {

        studentService.inserStudent(student);
        return "redirect:/allStudent";
    }

    @GetMapping("allStudent")
    public String getAllStudent(Model model){
        model.addAttribute("student",studentService.allStudent());
        model.addAttribute("title","Student Report");
        return "AllStudent";
    }

    @PostMapping("editStudent/updateStudent")
    public String updateStudent(@ModelAttribute("updateStudent") Student student){
        studentService.updateStudent(student);
        return "redirect:/allStudent";
    }

    @GetMapping("/deleteStudent/{id}")
    public String deleteStudent(@PathVariable int id){
        studentService.deleteStudent(id);
        return "redirect:/allStudent";
    }

    @GetMapping("/editStudent/{id}")
    public String loadEditForm(@PathVariable(value="id") int id, Model m) {
        Student student = studentService.getById(id);

        System.out.println(student);
        m.addAttribute("student", student);
        m.addAttribute("title", "Edit student");

        return "EditStudent";
    }
}
