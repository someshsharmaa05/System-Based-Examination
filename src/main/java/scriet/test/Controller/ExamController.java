package scriet.test.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import scriet.test.Service.TestServices;
import scriet.test.dto.Test;
@WebServlet(value = "/submitexam")
public class ExamController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 HttpSession session = req.getSession();
		int[] answers = new int[5];
		for (int i = 0; i < answers.length; i++) {
			if(req.getParameter("q"+(i+1))!= null)
				answers[i] = Integer.parseInt(req.getParameter("q"+(i+1)));
			else
				answers[i] = -1;
		}
		/*for (int i : answers) {
			System.out.println(i);
		}*/
		int marks = 0;
		for (int i : answers) {
			if(i!= -1) {
				if (i == 1) {
					marks+=4;
				} else {
					marks-=1;
				}
			}
		}
		//System.out.println(session.getAttribute("strollno"));
		Test test = new Test((long)session.getAttribute("strollno"), marks);
		TestServices tserv = new TestServices();
		tserv.setexam(test);
		session.invalidate();
		req.getRequestDispatcher("ExamSubmit.jsp").include(req, resp);
	}
}
