package scriet.test.Controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import scriet.test.Service.StudentService;
import scriet.test.dao.StudentDao;
import scriet.test.dto.Student;
@WebServlet(value = "/scrietstudentregister")
@MultipartConfig
public class InsertStudentController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		long rollno = Long.parseLong(req.getParameter("studentid"));
		String name = req.getParameter("studentname");
		String email = req.getParameter("studentemialid");
		String gender = req.getParameter("studentgender");
		LocalDate dob = LocalDate.parse(req.getParameter("studentdob"));
		String course = req.getParameter("studentcourse");
		String year = req.getParameter("studentyear");
//		Object photo = (Object)req.getParameter("studentphoto");
		 Part filePart = req.getPart("studentphoto");
		 InputStream fileContent = filePart.getInputStream();
//		System.out.println(rollno);
//		System.out.println(name);
//		System.out.println(email);
//		System.out.println(gender);
//		System.out.println(dob);
//		System.out.println(course);
//		System.out.println(year);
//		System.out.println(photo);
//		System.out.println(fileContent);
		Student student = new Student(rollno, name, email, course, year, gender, dob, fileContent);
		StudentService stservice = new StudentService();
		Student student2 = stservice.insertStudent(student);
		PrintWriter pw = resp.getWriter();
		if (student2!=null) {
			pw.write("<html><body><h3>Registered Successfully !!</h3></body></html>");
			RequestDispatcher requestdispatcher = req.getRequestDispatcher("StudentRegister.jsp");
			requestdispatcher.include(req, resp);
		} else {
			pw.write("<html><body><h3>Registration Failed !!</h3></body></html>");
			RequestDispatcher requestdispatcher = req.getRequestDispatcher("StudentRegister.jsp");
			requestdispatcher.forward(req, resp);
		}
	}
}
