package com.hs.travel.service;

import java.util.List;

import com.hs.travel.dao.TravelDao;
import com.hs.travel.vo.TravelVO;

public class TravelServiceImpl implements TravelService {
	
	private TravelDao travelDao;

	@Override
	public List<TravelVO> getAll() {
		return travelDao.selectAll();
	}

	@Override
	public boolean createTravel(TravelVO travelVO) {
		int insertCount = travelDao.insertTravel(travelVO);
		return insertCount > 0;
	}

	@Override
	public TravelVO getOne(int id) {
		return travelDao.selectTravelOne(id);
	}
	
	
}
