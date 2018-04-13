package com.hs.travel.dao;

import java.util.ArrayList;
import java.util.List;

import com.hs.travel.vo.TravelVO;

public class TravelDaoImpl implements TravelDao {

	
	private List<TravelVO> travelList;
	
	public TravelDaoImpl() {
		travelList= new ArrayList<TravelVO>();
	}
	
	
	@Override
	public List<TravelVO> selectAll() {
		return travelList;
	}

	@Override
	public int insertTravel(TravelVO travelVO) {
		travelVO.setId(travelList.size() + 1);
		travelList.add(travelVO);
		return 1;
	}


	@Override
	public TravelVO selectTravelOne(int id) {
		return null;
	}

}
