package com.or.petspital.coupon.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.or.petspital.coupon.service.CouponService;
import com.or.petspital.coupon.vo.CouponVO;


@Controller
public class CouponController {
	
	@Autowired
	CouponService service;
	
	@ModelAttribute("cp")
	public String getCp(HttpServletRequest req) {
		return req.getContextPath();
	}
	
	@RequestMapping("/member/couponNum")
	@ResponseBody
	 public String couponNum(HttpSession session, @RequestParam("mem_num") String mem_num){
	  
		ModelAndView mav = new ModelAndView();	
		
		List<CouponVO> list = service.couponNum(mem_num);
		System.out.println(list.get(0).getCoupon_code());
		
		String coupon_code = list.get(0).getCoupon_code();
		
	   return coupon_code;
	 }
	
	@RequestMapping("/coupon/insertCoupon")
	@ResponseBody
	public int insertCoupon(HttpSession session, CouponVO couponVO, HttpServletRequest request){
	  
	ModelAndView mav = new ModelAndView();	
		
	int couponSize = 1;

	final char[] possibleCharacters =
	    {'1','2','3','4','5','6','7','8','9','0','A','B','C','D','E','F',
	     'G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V',
	     'W','X','Y','Z'};
	  
	final int possibleCharacterCount = possibleCharacters.length;
	
	Random rnd = new Random();
	int i = 0;
	String coupon_code = null;
	
	   StringBuffer buf = new StringBuffer(16);
	   
	   for (i= 8; i > 0; i--) {
	    buf.append(possibleCharacters[rnd.nextInt(possibleCharacterCount)]);
	   }
	   
	   coupon_code = buf.toString();
	   
	   couponVO.setCoupon_code(coupon_code);
	   couponVO.setMem_num((String) session.getAttribute("memJoinOk"));
	   
	   int result = service.insertCoupon(couponVO);//쿠폰발급
	   session.invalidate();//쿠폰세션 없앰
	  
		int insertUser = 0;

		Map<String, ?> flashMap = RequestContextUtils.getInputFlashMap(request);
		
		insertUser = (Integer)flashMap.get("insertUser");
		System.out.println("회원가입결과 :"+insertUser);
		System.out.println("쿠폰의 회원가입결과 :"+result);
		
		if(insertUser != 0) { //비번 맞아서 회원가입성공
				
			return result; //아마 1
				
		} else { //비번 틀려서 회원탈퇴 실패 deleteUser = 0
			return insertUser;
		}
	}
	
	@RequestMapping(value="/coupon/deleteCoupon")
	@ResponseBody
	 public int deleteCoupon(HttpSession session, HttpServletRequest request){
	
		int deleteUser = 0;
		
		String mem_num = (String)session.getAttribute("memLoginOk");

		Map<String, ?> flashMap = RequestContextUtils.getInputFlashMap(request);
		
		deleteUser = (Integer)flashMap.get("deleteUser");
			
		if(deleteUser != 0) { //비번 맞아서 회원탈퇴됨
				
			int result = service.deleteCoupon(mem_num); 
			session.removeAttribute("memLoginOk");	
					
			return result; //아마 1
				
		} else { //비번 틀려서 회원탈퇴 실패 deleteUser = 0
			return deleteUser;
		}
		
		
		
	 }

}

