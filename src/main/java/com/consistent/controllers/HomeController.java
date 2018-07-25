package com.consistent.controllers;

import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.bind.annotation.RenderMapping;

/**
 * @author liferay
 */
@Controller
@RequestMapping("VIEW")
public class HomeController {

	@RenderMapping
	public String view(RenderRequest request, RenderResponse response) {
		return "view";
	}
	
	@RenderMapping(params = "action=paramViewDetail")
	public String viewDetail(RenderRequest request, RenderResponse response) {
		return "detail";
	}
}