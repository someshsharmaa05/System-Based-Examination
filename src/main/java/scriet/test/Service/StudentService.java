package scriet.test.Service;

import scriet.test.dao.StudentDao;
import scriet.test.dto.Student;

public class StudentService {
	StudentDao dao = new StudentDao();
	public Student insertStudent(Student student) {
		return dao.insertStudentDao(student);
	}
	
	public Student getStudentByRollno(long rollno) {
		return dao.getStudentByRollno(rollno);
	}
}
