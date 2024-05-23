package com.collectiondemo.comparator;

import java.util.Comparator;

import com.collectiondemo.pojo.Employee;

public class IdComparator implements Comparator<Employee> {

	@Override
	public int compare(Employee o1, Employee o2) {
		return o1.getEmpId() - o2.getEmpId();
	}
}
