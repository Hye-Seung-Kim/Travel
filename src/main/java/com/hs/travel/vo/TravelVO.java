package com.hs.travel.vo;

import org.springframework.web.multipart.MultipartFile;

public class TravelVO {
	private int id;
	
	private String title;
	private String body;
	private String nickname;
	private String userId;
	private String writeDate;
	private String category;
	private String location;
	private String transportation;
	//여행 숙소
	private String accommodations;
	//여행 준비물
	private String luggage;
	private String route;
	
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getTransportation() {
		return transportation;
	}
	public void setTransportation(String transportation) {
		this.transportation = transportation;
	}
	public String getAccommodations() {
		return accommodations;
	}
	public void setAccommodations(String accommodations) {
		this.accommodations = accommodations;
	}
	public String getLuggage() {
		return luggage;
	}
	public void setLuggage(String luggage) {
		this.luggage = luggage;
	}
	public String getRoute() {
		return route;
	}
	public void setRoute(String route) {
		this.route = route;
	}
	public String getBestPlace() {
		return bestPlace;
	}
	public void setBestPlace(String bestPlace) {
		this.bestPlace = bestPlace;
	}
	private String bestPlace;
	
	private int viewCount;
	private int recommendCount;
	private String requestIp;
	private MultipartFile file;
	private String displayFilename;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public int getRecommendCount() {
		return recommendCount;
	}
	public void setRecommendCount(int recommendCount) {
		this.recommendCount = recommendCount;
	}
	public String getRequestIp() {
		return requestIp;
	}
	public void setRequestIp(String requestIp) {
		this.requestIp = requestIp;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public String getDisplayFilename() {
		return displayFilename;
	}
	public void setDisplayFilename(String displayFilename) {
		this.displayFilename = displayFilename;
	}

	
}
