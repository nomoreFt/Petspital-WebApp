package com.or.petspital.shopping.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.or.petspital.shopping.DAO.ShoppingDAO;
import com.or.petspital.shopping.service.ShoppingService;
import com.or.petspital.shopping.vo.DetailVO;
import com.or.petspital.shopping.vo.ReplyVO;
import com.or.petspital.shopping.vo.ShoppingVO;

@Controller

@RequestMapping("/shopping")
public class ShoppingController {

	@Autowired
	ShoppingService shoppingservice;

	@ModelAttribute("cp")
	public String getCp(HttpServletRequest req) {
		return req.getContextPath();
	}

	@RequestMapping("/ShoppingList")
	public String ShoppingList(Model mod) {

		List<ShoppingVO> list = shoppingservice.selectall();
		mod.addAttribute("list", list);

		return "/shopping/ShoppingList";
	}

	@RequestMapping("/Shop")
	public String goToShopjsp(Model mod, ShoppingVO ShoppingVO) {

		List<DetailVO> list1 = shoppingservice.Detail(String.valueOf(ShoppingVO.getProduct_num()));
		mod.addAttribute("ShoppingVO", ShoppingVO);
		mod.addAttribute("list1", list1);

		return "/shopping/Shop";
	}

	
	@RequestMapping(value = "/commentList/{gdsNum}", method = RequestMethod.GET)
	@ResponseBody
	public Map getCommentList(@PathVariable String gdsNum) {
		
		List<ReplyVO> commentList = shoppingservice.ViewReply(gdsNum);
		System.out.println(gdsNum);
		Map result = new HashMap();
		result.put("result", Boolean.TRUE);
		result.put("data", commentList);
		return result;
	}
	
	@RequestMapping(value = "/comment/{repNum}", method = RequestMethod.DELETE)
	@ResponseBody
	public Map deleteComment(@PathVariable String repNum) {
		System.out.println(repNum);
		shoppingservice.DeleteReply(repNum);
		Map result = new HashMap();
		result.put("result", Boolean.TRUE);
		return result;
	}
	
	@RequestMapping(value = "/commentList", method = RequestMethod.POST, headers = { "Content-type=application/json" })
	@ResponseBody
	public Map insertComment(@RequestBody ReplyVO replyVO) {
		if (replyVO != null)
			shoppingservice.InsertReply(replyVO);
		Map result = new HashMap();
		result.put("result", Boolean.TRUE);
		return result;
	}
	
	
	
	/*@RequestMapping(value = "/Shop", method = RequestMethod.POST)
	public String InsertReply(Model mod, ReplyVO replyVO, ShoppingVO shoppingVO, DetailVO detailVO) {
		mod.addAttribute("shoppingVO", shoppingVO);		
		shoppingservice.registReply(replyVO);
		
		List<ReplyVO> list =shoppingservice.ViewReply(String.valueOf(shoppingVO.getProduct_num()));
		mod.addAttribute("list", list);
		
		return "/shopping/Shop";

	}*/
	
	
	
}
