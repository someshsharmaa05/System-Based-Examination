package scriet.test.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import scriet.test.connection.DBConnection;
import scriet.test.dto.Test;

public class TestDao {
	static Connection connection = DBConnection.getDBConnection();
	String query;
	public Test insertTestDao(Test test) {
		query = "insert into exam values(?,?)";
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setLong(1, test.getStrol());
			ps.setInt(2, test.getMarks());
			ps.execute();
			return test;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return  null;
	}
}
