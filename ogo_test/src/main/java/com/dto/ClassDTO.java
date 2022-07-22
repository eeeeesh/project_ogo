package com.dto;

public class ClassDTO {
	String classId;
	String className;
	String userId;
	String category;
	int price;
	String schedule;
	String place;
	
	public ClassDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ClassDTO(String classId, String className, String userId, String category, int price, String schedule,
			String place) {
		super();
		this.classId = classId;
		this.className = className;
		this.userId = userId;
		this.category = category;
		this.price = price;
		this.schedule = schedule;
		this.place = place;
	}

	public String getClassId() {
		return classId;
	}

	public void setClassId(String classId) {
		this.classId = classId;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getSchedule() {
		return schedule;
	}

	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	@Override
	public String toString() {
		return "ClassDTO [classId=" + classId + ", className=" + className + ", userId=" + userId + ", category="
				+ category + ", price=" + price + ", schedule=" + schedule + ", place=" + place + "]";
	}
	
	
}
