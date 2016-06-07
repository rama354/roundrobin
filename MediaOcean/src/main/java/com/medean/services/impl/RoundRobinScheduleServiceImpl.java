package com.medean.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.medean.services.ScheduleService;

@Service("rrService")
public class RoundRobinScheduleServiceImpl implements ScheduleService{

	@Override
	public List<String> createSchedule(List<String> teams) {
		
		if (teams.size()%2!=0)
			teams.add("dummy");
		
		int numOfTeams=teams.size();
		
		int totalDays = (numOfTeams-1)*2;
		int matchesPerDay = numOfTeams/2;
		    
		List<String> temp=new ArrayList<String>(teams);
		temp.remove(0);
		int tempsize=numOfTeams-1;
		List<String> matches = new ArrayList<String>();
		for (int day = 0; day < totalDays; day++)
		{
			int teamIdx = day % tempsize;
			
			String matchString = "Team " + teams.get(0)
                    + " plays against Team " + temp.get(teamIdx);
			
			matches.add(matchString);
			//System.out.println(roundString);
			
			 for (int match = 1; match < matchesPerDay; match++)
		        {               
		            int firstTeam = (day + match) % tempsize;
		            int secondTeam = (day  + tempsize - match) % tempsize;
		            
		            
		            if (temp.get(firstTeam).equalsIgnoreCase("dummy")){
		            	matchString = "Team " + temp.get(secondTeam)
		            			 + " gets a Bye!! ";
		            }
		            else if (temp.get(secondTeam).equalsIgnoreCase("dummy")){
		            	matchString = "Team " + temp.get(firstTeam)
		            			 + " gets a Bye!! ";
		            }
		            else
		            {
		            	matchString = "Team " + temp.get(firstTeam)
		            			 + " plays against Team " + temp.get(secondTeam);
		            }
		                   
		            
		            //System.out.println(roundString);
		            matches.add(matchString);
		        }
		}
		
		
		 		
		return matches;
		
	}

}
