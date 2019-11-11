package com.or.petspital.coupon.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.or.petspital.coupon.dao.CouponDAO;
import com.or.petspital.coupon.vo.CouponVO;

@Service("CouponService")
public class CouponService implements ICouponService{

	@Autowired
	CouponDAO Dao;
	
	@Override
	public List<CouponVO> couponNum(String mem_num){
		return Dao.couponNum(mem_num);
	}

	@Override
	public int insertCoupon(CouponVO couponVO) {
		return Dao.insertCoupon(couponVO);
	}
	@Override
	public int deleteCoupon(String mem_num) {
		return Dao.deleteCoupon(mem_num);
	}
}
