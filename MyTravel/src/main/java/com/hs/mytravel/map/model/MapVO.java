package com.hs.mytravel.map.model;

import java.util.List;

public class MapVO {
	private int map_no;
	private String map_name;
	private String r_dt;
	private String m_dt;
	private List<PlaceVO> places;
	private int u_no;
	
	public int getMap_no() {
		return map_no;
	}
	public void setMap_no(int map_no) {
		this.map_no = map_no;
	}
	public String getMap_name() {
		return map_name;
	}
	public void setMap_name(String map_name) {
		this.map_name = map_name;
	}
	public String getR_dt() {
		return r_dt;
	}
	public void setR_dt(String r_dt) {
		this.r_dt = r_dt;
	}
	public String getM_dt() {
		return m_dt;
	}
	public void setM_dt(String m_dt) {
		this.m_dt = m_dt;
	}
	public List<PlaceVO> getPlaces() {
		return places;
	}
	public void setPlaces(List<PlaceVO> places) {
		this.places = places;
	}
	public int getU_no() {
		return u_no;
	}
	public void setU_no(int u_no) {
		this.u_no = u_no;
	}
	
	
}
