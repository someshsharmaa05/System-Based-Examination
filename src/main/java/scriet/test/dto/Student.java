package scriet.test.dto;

import java.beans.Transient;
import java.time.LocalDate;

public class Student {
	private long rollno;
	private String name;
	private String email;
	private String course;
	private String year;
	private String gender;
	private LocalDate dob;
	private Object photo;
	
	private transient byte[] fetchImage;
	
	public Student() {
		super();
	}

	public Student(long rollno, String name, String email, String course, String year, String gender, LocalDate dob,
			Object photo) {
		super();
		this.rollno = rollno;
		this.name = name;
		this.email = email;
		this.course = course;
		this.year = year;
		this.gender = gender;
		this.dob = dob;
		this.photo = photo;
	}
	

	public Student(long rollno, String name, String email, String course, String year, String gender, LocalDate dob,
			byte[] fetchImage) {
		super();
		this.rollno = rollno;
		this.name = name;
		this.email = email;
		this.course = course;
		this.year = year;
		this.gender = gender;
		this.dob = dob;
		this.fetchImage = fetchImage;
	}

	public byte[] getFetchImage() {
		return fetchImage;
	}

	public void setFetchImage(byte[] fetchImage) {
		this.fetchImage = fetchImage;
	}

	public long getRollno() {
		return rollno;
	}

	public void setRollno(long rollno) {
		this.rollno = rollno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public LocalDate getDob() {
		return dob;
	}

	public void setDob(LocalDate dob) {
		this.dob = dob;
	}

	public Object getPhoto() {
		return photo;
	}

	public void setPhoto(Object photo) {
		this.photo = photo;
	}
	
}
