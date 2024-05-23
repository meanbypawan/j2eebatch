package com.collectiondemo.main;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

public class MapMain {

	public static void main(String[] args) {
	
		Map<Integer, String> hmap = new HashMap<>();
		hmap.put(1233, "XYZ");
		hmap.put(1238, "ABC");
		hmap.put(1236, "LMN");
		hmap.put(1235, "PQR");
		hmap.put(1237, "DEF");
		hmap.put(1234, "TUV");
		hmap.put(1234, "XUV");
		
		System.out.println("All entries from hmap :- ");
		Set<Entry<Integer, String>> eset = hmap.entrySet();
		for(Entry<Integer, String> e : eset) {
			System.out.println(e.getKey() + " : " + e.getValue());
		}
		
		System.out.println("All keys from hmap are :- ");
		Set<Integer> kset = hmap.keySet();
		kset.forEach(System.out::println);
		
		System.out.println("Is key 1235 present in hmap : " 
				+ hmap.containsKey(1235));
		
		System.out.println("Is value DEF present in hmap : " 
				+ hmap.containsValue("DEF"));
		
		System.out.println("Value associated wth key 1236 : "
				+ hmap.get(1236));
		
		hmap.remove(1238);
		hmap.remove(1235, "Amit");
		
		System.out.println("After removal, all entries "
				+ "from hmap :- ");
		eset = hmap.entrySet();
		for(Entry<Integer, String> e : eset) {
			System.out.println(e.getKey() + " : " + e.getValue());
		}
		
		hmap.put(1234, "XUV 400");
		System.out.println("Now , value associated wth key 1234 : "
				+ hmap.get(1234));
	}
}




