package com.consistent.controllers;

import java.util.Map;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.RenderRequest;

import javax.portlet.RenderResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.bind.annotation.ActionMapping;
import org.springframework.web.portlet.bind.annotation.RenderMapping;

import com.consistent.models.Persona;

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
	public String viewDetail(RenderRequest request, RenderResponse response, Map<String, Object> map) {
		Persona persona = new Persona();
		map.put("persona", persona);
		return "detail";
	}
	@ActionMapping(value= "handleCustomer")
	public void getPersonaData(@ModelAttribute("persona") Persona persona, ActionRequest actionRequest, ActionResponse actionResponse, Model model){
		System.out.println("#############Calling getCustomerData##########");
		actionResponse.setRenderParameter("action", "success");
		model.addAttribute("successModel", persona);
	}
	@RenderMapping(params="action=success")
	public String viewSuccess(){
		return "success";
	}
	
}