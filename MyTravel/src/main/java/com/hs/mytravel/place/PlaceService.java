package com.hs.mytravel.place;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hs.mytravel.place.model.PlaceVO;

@Service
public class PlaceService {
	
	@Autowired
	private PlaceMapper mapper;

	public int insPlace(PlaceVO vo) {
		return mapper.insPlace(vo);
	}
}
