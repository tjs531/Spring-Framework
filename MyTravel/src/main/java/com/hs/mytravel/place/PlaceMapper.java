package com.hs.mytravel.place;

import org.apache.ibatis.annotations.Mapper;

import com.hs.mytravel.place.model.PlaceVO;

@Mapper
public interface PlaceMapper {
	int insPlace(PlaceVO param);
}
