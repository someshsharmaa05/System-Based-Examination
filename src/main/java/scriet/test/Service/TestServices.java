package scriet.test.Service;

import scriet.test.dao.TestDao;
import scriet.test.dto.Test;

public class TestServices {
	TestDao tdao = new TestDao();
	public Test setexam(Test test) {
		return tdao.insertTestDao(test);
	}
}
