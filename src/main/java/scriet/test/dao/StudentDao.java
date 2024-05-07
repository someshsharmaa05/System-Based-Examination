package scriet.test.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import scriet.test.connection.DBConnection;
import scriet.test.dto.Student;

public class StudentDao {
	static Connection connection = DBConnection.getDBConnection();
	String query;
	public Student insertStudentDao(Student student) {
		query = "insert into student values(?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setLong(1, student.getRollno());
			ps.setString(2, student.getName());
			ps.setString(3, student.getEmail());
			ps.setString(4, student.getCourse());
			ps.setString(6, student.getGender());
			ps.setString(5, student.getYear());
			ps.setObject(7, student.getDob());
			ps.setObject(8, student.getPhoto());
			ps.execute();
			return student;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return  null;
	}
	
	public Student getStudentByRollno(long rollno) {
		query = "select * from student where rollno = ?";
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setDouble(1, rollno);
			ResultSet rs =  ps.executeQuery();
			if (rs.next()) {
				return new Student(rs.getLong("rollno"),
						rs.getString("name"),
						rs.getString("email"),
						rs.getString("course"),
						rs.getString("year"),
						rs.getString("gender"),
						rs.getDate("dob").toLocalDate(),
						rs.getBytes("photo"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return  null;
	}
}
