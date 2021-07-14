package sap.scanner.vo.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sap.scanner.vo.PaymentService;
import sap.scanner.vo.PaymentVO;

@Service("paymentService")
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired
	private PaymentDAO paymentDAO;
	
	// 결제 정보 입력
	public void insertPaymentInfo(PaymentVO vo) {		
		
		paymentDAO.insertPaymentInfo(vo);
		
	}

}
