package com.or.petspital.jboard.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.or.petspital.jboard.vo.JBoardVO;
import com.or.petspital.member.vo.MemberVO;

@Repository
public class JBoardDAO {
	@Autowired
	SqlSession SqlSession;
	
	String namespace = "com.or.petspital.jboard.jboardMapper";
	public List<JBoardVO> jboardList() {
		return SqlSession.selectList(namespace+".jboardList");
	}
	public void create(JBoardVO vo) {
		SqlSession.insert(namespace+".insert",vo);
		
	}
	public Object read(int bno) {
	
		return SqlSession.selectOne(namespace+".view",bno);
	}
	public void delete(int bno) {
		
		SqlSession.delete(namespace+".deleteArticle",bno);
	}
	public void update(JBoardVO vo) {
	SqlSession.update(namespace+".updateArticle",vo);
		
	}
	public void increaseViewcnt(int bno) {
	SqlSession.update(namespace+".increaseViewcnt",bno);
	}
	public MemberVO getMemVo(String memId) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("memId", memId);
		MemberVO vo = SqlSession.selectOne(namespace+".getMemVo", map);
		return vo;
	}
	


}
