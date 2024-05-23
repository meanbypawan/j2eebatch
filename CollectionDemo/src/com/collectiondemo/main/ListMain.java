package com.collectiondemo.main;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.collectiondemo.pojo.Engine;

public class ListMain {

	public static void main(String[] args) {
	
		List<Engine> lstEngine = new ArrayList<>();
		
		Engine e1 = new Engine(1200, "petrol");
		Engine e2 = new Engine(1500, "diesel");
		Engine e3 = new Engine(1000, "cng");
		Engine e4 = new Engine(800, "petrol");
		
		lstEngine.add(e3);
		lstEngine.add(e1);
		lstEngine.add(1,e4);
		lstEngine.add(e2);
		
		System.out.println("All engines from lstEngine are :- ");
		for(Engine e : lstEngine) {
			System.out.println(e);
		}
		
		Engine e5 = new Engine(1500, "diesel");
		
		System.out.println("is e5 present in lstEngine : " + 
				lstEngine.contains(e5));
		
		System.out.println("e5 is present in lstEngine"
				+ " at index : " + lstEngine.indexOf(e5));
		
		System.out.println("engine present at index 1 :- "
				+ lstEngine.get(1));
		
		lstEngine.remove(1);
		lstEngine.remove(e5);
		lstEngine.removeIf(e -> e.getCapacity() > 1000);
		
		System.out.println("After removal, all engines from"
				+ " lstEngine are :- ");
		lstEngine.forEach(System.out::println);
		
		//array to list
		Integer[] ar = {10,20,30,40,50};
		List<Integer> lst = Arrays.asList(ar);
		System.out.println("All elements in lst are :- ");
		lst.forEach(System.out::println);
		
		//list to array
		List<String> l1 = new ArrayList<>();
		l1.add("hi");
		l1.add("hello");
		
		Object[] ar2 = l1.toArray();
		System.out.println("All elements in ar2 are :- ");
		for(Object obj : ar2)
			System.out.println(obj);
	}
}







