package sap.scanner.flying.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sap.scanner.flying.FlyingService;
import sap.scanner.flying.FlyingVO;

@Service("FlyingService")
public class FlyingServiceImpl implements FlyingService {
	@Autowired
	private FlyingDAO flyingDAO;

	@Override
	public void insertSchedule(FlyingVO vo) {
		flyingDAO.insertSchedule(vo);
	}

	@Override
	public void updateSchedule(FlyingVO vo) {
		flyingDAO.updateSchedule(vo);
	}

	@Override
	public void deleteSchedule(FlyingVO vo) {
		flyingDAO.deleteSchedule(vo);
	}

	@Override
	public List<FlyingVO> getSingleSchedule(FlyingVO vo) {
		return flyingDAO.getSingleSchedule(vo);
	}

	@Override
	public List<FlyingVO> getDoubleSchedule(FlyingVO vo) {
		return flyingDAO.getDoubleSchedule(vo);
	}

}
