package com.collectiondemo.main;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;
import java.util.TreeSet;

import com.collectiondemo.comparator.IdComparator;
import com.collectiondemo.comparator.NameComparator;
import com.collectiondemo.pojo.Employee;
import com.collectiondemo.pojo.Student;

public class SortingMain {

	public static void main(String[] args) {

		TreeSet<Student> sset = new TreeSet<>();
		
		Student s1 = new Student(36, "Amit");
		Student s2 = new Student(34, "Sumit");
		Student s3 = new Student(35, "Nimit");
		
		sset.add(s1);
		sset.add(s2);
		sset.add(s3);
		
		System.out.println("All students from sset are :- ");
		sset.forEach(System.out::println);
		
		Employee e1 = new Employee(1233, "XYZ");
		Employee e2 = new Employee(1235, "ABC");
		Employee e3 = new Employee(1234, "PQR");
		
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter 1 to sort on basis of id "
				+ " and 2 to sort on basis of name : ");
		int choice = scanner.nextInt();
		
		TreeSet<Employee> eset = null;
		
		if(choice == 1)
			eset = new TreeSet<>(new IdComparator());
		else
			eset = new TreeSet<>(new NameComparator());
		
		eset.add(e1);
		eset.add(e2);
		eset.add(e3);
		
		System.out.println("All employees from eset are :- ");
		eset.forEach(System.out::println);
		
		//sorting a list
		List<Employee> elist = new ArrayList<Employee>();
		elist.add(e1);
		elist.add(e2);
		elist.add(e3);
		Collections.sort(elist, new IdComparator());
		System.out.println("All employees from elist are :- ");
		elist.forEach(System.out::println);
	}
}
