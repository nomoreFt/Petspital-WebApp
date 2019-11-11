package com.or.petspital.jboard.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.or.petspital.jboard.vo.JBoardVO;
import com.or.petspital.member.vo.MemberVO;

public interface JBoardService {
	void create(JBoardVO vo);
	Object read(int bno);
	void update(JBoardVO vo);
	void delete(int bno);
	List<JBoardVO> jboardList();
	void increaseViewcnt(int bno, HttpSession session);
	MemberVO getMemVo(String memId);

	

	

	



	



}
