package com.collectiondemo.main;

import java.util.Iterator;
import java.util.LinkedList;

public class LinkedLIstMain {

	public static void main(String[] args) {
	
		LinkedList<Integer> lst = new LinkedList<>();
		lst.add(123);
		lst.add(678);
		lst.add(345);
		lst.add(789);
		lst.add(111);
		lst.add(456);
		lst.addFirst(111);
		lst.addLast(999);
		
		System.out.println("All elements in lst are :- ");
		Iterator<Integer> it = lst.iterator();
		while(it.hasNext()) {
			System.out.println(it.next());	
		}
		
		lst.remove();
		lst.removeFirst();
		lst.removeLast();
		
		System.out.println("After removal, all elements from"
				+ " lst are :- ");
		lst.forEach(System.out::println);
		
		System.out.println("result of peekFirst() : " + 
				lst.peekFirst());
		System.out.println("result of peekLast() : " + 
				lst.peekLast());
		System.out.println("result of pollFirst() : " + 
				lst.pollFirst());
		System.out.println("result of pollLast() : " + 
				lst.pollLast());
		
		System.out.println("After polling, all elements from"
				+ " lst are :- ");
		lst.forEach(System.out::println);
	}
}
