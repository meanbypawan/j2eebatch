package com.collectiondemo.pojo;

import java.util.Objects;

public class Student implements Comparable<Student> {

	private int rollno;
	private String name;
	
	public Student() {
	}

	public Student(int rollno, String name) {
		this.rollno = rollno;
		this.name = name;
	}

	public int getRollno() {
		return rollno;
	}

	public void setRollno(int rollno) {
		this.rollno = rollno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public int hashCode() {
		return Objects.hash(rollno);
	}

	@Override
	public boolean equals(Object obj) {
		Student other = (Student) obj;
		return rollno == other.rollno;
	}
	
	@Override
	public String toString() {
		return rollno + " : " + name;
	}
	
	@Override
	public int compareTo(Student o) {
		//return this.rollno - o.rollno;
		return this.name.compareTo(o.name);
	}
}
