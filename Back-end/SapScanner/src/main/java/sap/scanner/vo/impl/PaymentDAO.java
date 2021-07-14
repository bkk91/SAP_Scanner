package sap.scanner.vo.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sap.scanner.vo.PaymentVO;

@Repository
public class PaymentDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertPaymentInfo(PaymentVO vo) {		
		mybatis.insert("PaymentDAO.insertPaymentInfo", vo);
	}
	
}
