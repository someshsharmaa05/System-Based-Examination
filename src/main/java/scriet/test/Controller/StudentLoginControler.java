package scriet.test.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import scriet.test.Service.StudentService;
import scriet.test.dto.Student;
@WebServlet(value="/scrietstudentlogin")
public class StudentLoginControler extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		long rollno = Long.parseLong(req.getParameter("studentemialid"));
		LocalDate dob = LocalDate.parse(req.getParameter("studentepassword"));
		StudentService stservices = new StudentService();
		Student student = stservices.getStudentByRollno(rollno);
		PrintWriter pw = resp.getWriter();
		if (student != null) {
			if (student.getDob().equals(dob)) {
				HttpSession session = req.getSession();
				session.setAttribute("strollno", student.getRollno());
				req.getRequestDispatcher("Exam.jsp").include(req, resp);
			} else {
				pw.write("<html><body><h3>Wrong DOB , Try Again !!</h3></body></html>");
				req.getRequestDispatcher("StudentLogin.jsp").include(req, resp);
			}
		} else {
			pw.write("<html><body><h3>Wrong Rollno , Try Again !!</h3></body></html>");
			req.getRequestDispatcher("StudentLogin.jsp").include(req, resp);
		}
	}
}
