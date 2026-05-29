package org.example.demo_jstl2.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.demo_jstl2.entity.Student;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "StudentController", value = "/student")
public class StudentController extends HttpServlet {
    private static List<Student> studentList = new ArrayList<>();
    static {
        studentList.add(new Student(1,"chánh",true,7.5f));
        studentList.add(new Student(2,"chánh",false,3.5f));
        studentList.add(new Student(3,"chánh",true,6.5f));
        studentList.add(new Student(4,"chánh",true,9.5f));
        studentList.add(new Student(5,"chánh",true,7.5f));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
           req.setAttribute("studentList",studentList);
           req.getRequestDispatcher("/view/student/list.jsp").forward(req,resp);
    }
}
