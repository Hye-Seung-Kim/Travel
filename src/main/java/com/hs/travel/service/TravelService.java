package com.hs.travel.service;

import java.util.List;

import com.hs.travel.vo.TravelVO;

public interface TravelService {
	
	public List<TravelVO> getAll();
	
	public boolean createTravel(TravelVO travelVO);

	public TravelVO getOne(int id);
	
	
}
