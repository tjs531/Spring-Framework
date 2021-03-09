package com.hs.mytravel.place.model;

public class PlaceVO {
	private int place_no;
	private String place_name;
	private double p_lat;
	private double p_long;
	private String p_arrival;
	private String p_leave;
	
	public int getPlace_no() {
		return place_no;
	}
	public void setPlace_no(int place_no) {
		this.place_no = place_no;
	}
	public String getPlace_name() {
		return place_name;
	}
	public void setPlace_name(String place_name) {
		this.place_name = place_name;
	}
	public double getP_lat() {
		return p_lat;
	}
	public void setP_lat(double p_lat) {
		this.p_lat = p_lat;
	}
	public double getP_long() {
		return p_long;
	}
	public void setP_long(double p_long) {
		this.p_long = p_long;
	}
	public String getP_arrival() {
		return p_arrival;
	}
	public void setP_arrival(String p_arrival) {
		this.p_arrival = p_arrival;
	}
	public String getP_leave() {
		return p_leave;
	}
	public void setP_leave(String p_leave) {
		this.p_leave = p_leave;
	}
	
	
}
