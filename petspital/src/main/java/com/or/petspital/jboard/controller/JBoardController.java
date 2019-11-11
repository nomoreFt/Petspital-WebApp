package com.or.petspital.jboard.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.or.petspital.jboard.service.JBoardService;
import com.or.petspital.jboard.vo.JBoardVO;
import com.or.petspital.member.vo.MemberVO;


@Controller
@RequestMapping("/jboard")
public class JBoardController {

		
		@Autowired
		JBoardService service;
		
		@ModelAttribute("cp")
		public String getCp(HttpServletRequest req) {
			return req.getContextPath();
		}
		//寃뚯떆湲� 紐⑸줉
		@RequestMapping("/jboardList")
		public ModelAndView jboardList() {
			List<JBoardVO> jboardList= service.jboardList();
			ModelAndView mav=new ModelAndView();
			mav.setViewName("jboard/jboardList");
			mav.addObject("jboardList",jboardList);
			return mav;
		}
		//寃뚯떆湲� �옉�꽦�솕硫�
		@RequestMapping("/write")
		public String write() {
			return "jboard/write";
		}
		
		@RequestMapping(value="/insert",method=RequestMethod.POST)
		public String insert(@ModelAttribute JBoardVO vo) {
			service.create(vo);
			return "redirect:jboardList";
		}
		
		@RequestMapping("/view")
		public ModelAndView view(@RequestParam int bno,HttpSession session) {
		service.increaseViewcnt(bno,session);
		String memId = (String)session.getAttribute("memLoginOk");
		MemberVO memVo = service.getMemVo(memId);
		ModelAndView mav=new ModelAndView();
		mav.addObject("memPw", memVo.getUser_pw());
		mav.setViewName("jboard/view");
		mav.addObject("vo",service.read(bno));
		return mav;		
}
		@RequestMapping(value="/update",method=RequestMethod.POST)
		public String update(@ModelAttribute JBoardVO vo) {
			service.update(vo); 
			return "redirect:jboardList";
		}
		@RequestMapping("/delete")
		public String delete(@RequestParam int bno) {
			service.delete(bno);
			return "redirect:jboardList";
		}
}