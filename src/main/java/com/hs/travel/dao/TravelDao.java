package com.hs.travel.dao;

import java.util.List;

import com.hs.travel.vo.TravelVO;

public interface TravelDao {
	
	public List<TravelVO> selectAll();
	
	public int insertTravel(TravelVO travelVO);

	public TravelVO selectTravelOne(int id);
	
}
