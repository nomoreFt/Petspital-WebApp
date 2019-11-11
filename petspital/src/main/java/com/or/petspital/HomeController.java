package com.or.petspital;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@ModelAttribute("cp")
	public String getCp(HttpServletRequest req) {
		return req.getContextPath();
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "index";
	}
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
		return "main";
	}
	

	@RequestMapping(value = "/introduction", method = RequestMethod.GET)
	public String introduction() {
		return "introduction";
	}
	
	@RequestMapping(value = "/map", method = RequestMethod.GET)
	public String map() {
		return "map";
	}
	@RequestMapping(value = "/people", method = RequestMethod.GET)
	public String people() {
		return "people";
	}
	
}
