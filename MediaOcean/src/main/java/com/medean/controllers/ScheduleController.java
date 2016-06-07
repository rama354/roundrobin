package com.medean.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.medean.services.ScheduleService;


@Controller
public class ScheduleController {
	
	@Autowired
	ScheduleService rrService;
        
	@RequestMapping(value="roundrobin.htm")
	public String createRoundRobinSchedule(@RequestParam(value="teamName")ArrayList<String> teams,Model model)
	{
		List<String> matches=rrService.createSchedule(teams);
		model.addAttribute("matches", matches);
		return "rrschedule";
		
	}
	
	@RequestMapping(value="/addteam.htm")
	public String addTeamPage(Model model)
	{
		return "addteam";	
	}
}
