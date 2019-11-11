package com.or.petspital.member.service;

import java.sql.SQLException;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.or.petspital.member.vo.MemberVO;


public interface MemberService {

   
   public int id_Check(String user_id);
   

   public int insertUser(MemberVO vo);
   public int updateUser(MemberVO vo);
   
   
   public MemberVO what_id(MemberVO vo);
   public MemberVO what_pw(MemberVO vo);

   MemberVO logincheck(MemberVO member);
   
   public int deleteUser(String user_id, String user_pw);
}