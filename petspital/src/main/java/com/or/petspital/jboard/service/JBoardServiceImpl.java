package com.or.petspital.jboard.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.or.petspital.jboard.dao.JBoardDAO;
import com.or.petspital.jboard.vo.JBoardVO;
import com.or.petspital.member.vo.MemberVO;

@Service("JBoardServiceImpl")
public class JBoardServiceImpl implements JBoardService {

	@Autowired
	JBoardDAO dao;
	
	@Override
	public List<JBoardVO> jboardList() {
		// TODO Auto-generated method stub
		return dao.jboardList();
	}

	@Override
	public void create(JBoardVO vo) {
		String title=vo.getTitle();
		String content=vo.getContent();
		String writer=vo.getWriter();
		
		title=title.replace("<", "&lt");
		title=title.replace("<", "&gt");
		writer=writer.replace("<", "&lt");
		writer=writer.replace("<", "&gt");
		title=title.replace(" ",  "&nbsp;&nbsp;");
		writer=writer.replace(" ",  "&nbsp;&nbsp;");
		content=content.replace("\n", "<br>");
		vo.setTitle(title);
		vo.setContent(content);
		vo.setWriter(writer);
		dao.create(vo);
	}

	@Override
	public Object read(int bno) {
		
		return dao.read(bno);
	}

	@Override
	public void update(JBoardVO vo) {
		dao.update(vo);
	}

	@Override
	public void delete(int bno) {
		dao.delete(bno);
		
	}

	@Override
	public void increaseViewcnt(int bno, HttpSession session) {
		long update_time=0;
		if(session.getAttribute("update_time_"+bno)!=null) {
			update_time=(Long)session.getAttribute("update_time_"+bno);
		}
		long current_time=System.currentTimeMillis();
		if(current_time-update_time > 5*1000) {
			dao.increaseViewcnt(bno);
			session.setAttribute("update_time"+bno, current_time);
		}
	}

	@Override
	public MemberVO getMemVo(String memId) {
		MemberVO vo = dao.getMemVo(memId);
		return vo;
	}

}
