package com.collectiondemo.main;

import java.util.HashSet;
import java.util.Set;

import com.collectiondemo.pojo.Engine;

public class SetMain {

	public static void main(String[] args) {
	
		Set<Engine> eset = new HashSet<>();
		
		Engine e1 = new Engine(1200, "petrol");
		Engine e2 = new Engine(1500, "diesel");
		Engine e3 = new Engine(1000, "cng");
		Engine e4 = new Engine(1000, "cng");
		
		eset.add(e3);
		eset.add(e1);
		eset.add(e2);
		eset.add(e4);
		
		System.out.println("All engines from eset are :- ");
		eset.forEach(System.out::println);
	}
}
