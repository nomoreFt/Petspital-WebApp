package com.or.petspital.member.Controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.basic.BasicInternalFrameTitlePane.MaximizeAction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.or.petspital.member.service.MemberService;
import com.or.petspital.member.service.MemberServiceImpl;
import com.or.petspital.member.vo.MemberVO;
import com.or.petspital.qna.Vo.CommentVo;
import com.or.petspital.reserve.service.ReserveService;

@Controller
@RequestMapping("/member")
public class MemberController {
   
   @Autowired
   MemberServiceImpl service;
   
   @ModelAttribute("cp")
   public String getCp(HttpServletRequest req) {
      return req.getContextPath();
   }

   @RequestMapping("/memberlogin")
   public String memberlogin() {
      return "member/memberlogin";
   }
   
   @RequestMapping("/memberlogout")
   public String memberlogout(HttpSession session) {
	  session.removeAttribute("memLoginOk");	
	  
      return "main";
   }
   
   @RequestMapping("/join")
   public String memberjoin() {
      return "member/memberjoin";
   }
   
   @RequestMapping("/whatid")
   public String memberwhatid() {
      return "member/whatid";
   }
   
   @RequestMapping("/whatpw")
   public String memberwhatpw() {
      return "member/whatpw";
   }
   
   
   @RequestMapping("/delete")
   public String memberdeletego() {
      return "member/memberDelete";
   }
   
   
   @RequestMapping("/mypage")
   public ModelAndView membermypage(HttpSession session, MemberVO vo) {
      ModelAndView mav = new ModelAndView();
      
      String user_id = (String)session.getAttribute("memLoginOk");
      MemberVO mem = service.myPage(user_id);
      
      mav.addObject("mem",mem);
      mav.setViewName("member/mypage");
      return mav;
   }
   
   

   @RequestMapping("/logincheck")
   public ModelAndView logincheck(HttpSession session, MemberVO member) {
      
      ModelAndView mav = new ModelAndView();
      
      MemberVO mem = service.logincheck(member);
      if(mem != null) {
         
         session.setAttribute("memLoginOk", mem.getUser_id());
         System.out.println(mem.getUser_id());
         mav.setViewName("main");
         
      }else {
      
         mav.setViewName("member/memberloginFail");
      }
      
      return mav;
   }

   @RequestMapping(value = "/what_id", method=RequestMethod.POST)
   public ModelAndView what_id(MemberVO vo) {
      
      ModelAndView mav = new ModelAndView();
      
      MemberVO mem = service.what_id(vo);
      
      if(mem == null) {
         mav.setViewName("member/result_fail");
      } else {
         mav.addObject("mem", mem);
         mav.setViewName("member/result_id");
      }
      return mav;
   }
   
   @RequestMapping(value = "/what_pw")
   public ModelAndView what_pw(MemberVO vo) {
      
      ModelAndView mav = new ModelAndView();
      
      MemberVO mem = service.what_pw(vo);
      
      if(mem == null) {
         mav.setViewName("member/result_fail");
      }else {
         mav.addObject("mem", mem);
         mav.setViewName("member/result_pw");
      }
         return mav;
   }   
   
   
      @RequestMapping(value = "/id_Check")
      @ResponseBody
      public int id_Check(@RequestParam("user_id") String user_id) {
            System.out.println(user_id);
         int a = service.id_Check(user_id);
         return a;
      }
      
      @RequestMapping(value = "/insertUser", method=RequestMethod.POST, headers = { "Content-type=application/json" })
      public String insertUser(@RequestBody MemberVO vo, HttpSession session, RedirectAttributes redirectAttributes) {
    	  
    	  System.out.println("입력한 회원 아이디 : " + vo.getUser_id());
    	  
    	  int result = service.insertUser(vo);
          
          redirectAttributes.addFlashAttribute("insertUser",  result);
          
    	  session.setAttribute("memJoinOk", vo.getUser_id());
    	  session.setAttribute("coupon", "coupon");
    	  
    	  return "redirect:/coupon/insertCoupon";
      }
      
      @RequestMapping(value = "/updateUser", method=RequestMethod.POST, headers = { "Content-type=application/json" })
      @ResponseBody
      public int updateUser(@RequestBody MemberVO vo) {
    	 /* HttpSession session, 
    	  String user_id = (String)session.getAttribute("memLoginOk");
    	  */
    	  int result= service.updateUser(vo);
    	  
    	  return result;
      }
      
      @RequestMapping(value = "/deleteUser", method=RequestMethod.POST, headers = { "Content-type=application/json" })
      public String deleteUser(@RequestBody MemberVO member, HttpSession session, RedirectAttributes redirectAttributes) {
         
         String user_id = (String)session.getAttribute("memLoginOk");
         
         int result = service.deleteUser(user_id,member.getUser_pw());
         
         redirectAttributes.addFlashAttribute("deleteUser",  result);
         
         return "redirect:/coupon/deleteCoupon";
      }


}