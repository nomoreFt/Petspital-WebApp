package com.or.petspital.reserve.controller;

import java.text.SimpleDateFormat;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.or.petspital.member.vo.MemberVO;
import com.or.petspital.reserve.service.ReserveService;
import com.or.petspital.reserve.vo.Reservation;

@Controller
@RequestMapping("/reserve")
public class ReserveController {
	
	@Autowired
	ReserveService service;
	
	@ModelAttribute("cp")
	public String getCp(HttpServletRequest req) {
		return req.getContextPath();
	}
	
	@RequestMapping("/reserveDateForm")
	public ModelAndView boardList() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/reserve/reserveDateForm");
		return mav;
	}
	
	@RequestMapping(value = "/date_check", method=RequestMethod.POST, headers = { "Content-type=application/json" })
	@ResponseBody
	public int date_check(@RequestBody Reservation vo) {
		
		String[] selectDate = vo.getRes_date().split("-");
		
		 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		Calendar today = Calendar.getInstance();
		today.set(Calendar.YEAR, today.get(Calendar.YEAR));
		today.set(Calendar.MONTH, today.get(Calendar.MONTH));
		today.set(Calendar.DAY_OF_MONTH , today.get(Calendar.DAY_OF_MONTH));
		
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.YEAR, Integer.parseInt(selectDate[0]));
		cal.set(Calendar.MONTH, Integer.parseInt(selectDate[1])-1);
		cal.set(Calendar.DAY_OF_MONTH , Integer.parseInt(selectDate[2]));
		
		System.out.println(dateFormat.format(today.getTime())+" compareTo "+dateFormat.format(cal.getTime()));
		
		int result = today.compareTo(cal);
		System.out.println("result : "+result);
   	  	
		if(result >= 0) { //선택한 날이 오늘 또는 오늘이전 
			return 1;
		}
		
   	  return 0; //선택한 날이 오늘 이후
	}

	
	@RequestMapping("/reserveDateOk")
	public ModelAndView resDate(HttpSession session, Reservation reserveVO) {
		
		ModelAndView mav = new ModelAndView();
		session.setAttribute("res_date", reserveVO.getRes_date());
	
		mav.setViewName("/reserve/reserveTimeForm");
		
		return mav;
	}
	
	@RequestMapping("/reserveTimeOk")
	public ModelAndView resSelectTime(HttpSession session, Reservation reserveVO) {
		
		ModelAndView mav = new ModelAndView();

		boolean result = service.resSelectTime(reserveVO);
		
		if(result == true) {
			reserveVO.setRes_id((String) session.getAttribute("memLoginOk"));
			service.resInsert(reserveVO);
			
			mav.setViewName("redirect:reserveList");
			
		} else {
			mav.setViewName("/reserve/reserveFail");
		}
		return mav;
	}
	
	
	@RequestMapping("/reserveList")
	public ModelAndView resSelectList(HttpSession session, Reservation reserveVO) {
		
		ModelAndView mav = new ModelAndView();
		
		reserveVO.setRes_id((String) session.getAttribute("memLoginOk"));
		List<Reservation> reserveList = service.resSelectList(reserveVO);
		
		mav.addObject("reserveList", reserveList);
		mav.setViewName("/reserve/reserveList");
		
		return mav;
	}
	
	@RequestMapping("/reserveMemo")
	public ModelAndView resSelectMemo(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		
		String res_num = request.getParameter("res_num");
		
		Reservation res = service.resSelectMemo(res_num);
		mav.addObject("reserveMemo", res);
		mav.setViewName("/reserve/reserveMemo");
		
		return mav;
	}
	

	
	@RequestMapping("/memoUpdate")
	public ModelAndView resUpdateMemo(Reservation reserveVO) {
		
		ModelAndView mav = new ModelAndView();
		
		service.resUpdateMemo(reserveVO);
		
		mav.addObject("reserveMemo", reserveVO);
		mav.setViewName("redirect:reserveList");
		
		return mav;
	}
	
	@RequestMapping(value = "/time_check")
	@ResponseBody
	public int time_check(@RequestParam("time") String time, @RequestParam("date") String date) {
		int result = service.time_check(date, time);
		return result;
	}
	
	
	@RequestMapping(value = "/delete_check")
	@ResponseBody
	public int delete_check(@RequestParam("res_num") int res_num, @RequestParam("res_date") String res_date, Reservation reserveVO) {
		
		Calendar today = Calendar.getInstance();
		today.set(Calendar.YEAR, today.get(Calendar.YEAR));
		today.set(Calendar.MONTH, today.get(Calendar.MONTH));
		today.set(Calendar.DAY_OF_MONTH , today.get(Calendar.DAY_OF_MONTH));
		
		String[] selectDate = res_date.split("-");
		
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.YEAR, Integer.parseInt(selectDate[0]));
		cal.set(Calendar.MONTH, Integer.parseInt(selectDate[1])-1);
		cal.set(Calendar.DAY_OF_MONTH , Integer.parseInt(selectDate[2]));
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		System.out.println(dateFormat.format(today.getTime())+" compareTo "+dateFormat.format(cal.getTime()));

		int result = today.compareTo(cal);
		System.out.println("result : "+result);
		  	
		if(result > 0) { //선택한 날이 오늘이전 
			return 1;
		}
		
		  result = service.resDelete(res_num); 
		  return 0; //선택한 날이 오늘 이후
	}
	

	
}
