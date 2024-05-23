package com.collectiondemo.pojo;

import java.util.Objects;

public class Engine {

	private int capacity;
	private String fuel;
	
	public Engine(int capacity, String fuel) {
		this.capacity = capacity;
		this.fuel = fuel;
	}

	public Engine() {
	}

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public String getFuel() {
		return fuel;
	}

	public void setFuel(String fuel) {
		this.fuel = fuel;
	}
	
	@Override
	public String toString() {
		return capacity + " : " + fuel;
	}
	
	@Override
	public boolean equals(Object obj) {
		Engine e = (Engine) obj;
		return this.capacity == e.capacity && 
				this.fuel.equals(e.fuel);
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(capacity,fuel);
	}
}
