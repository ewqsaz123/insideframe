package com.web.insideframe.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.insideframe.memberdto.CareerDTO;
import com.web.insideframe.memberdto.MemberDTO;
import com.web.insideframe.memberservice.SearchActorConditionService;
import com.web.insideframe.memberservice.SearchActorDetailService;
import com.web.insideframe.memberservice.SearchAllActorService;

public class SearchActorDetailCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		String email = request.getParameter("email");
		SearchActorDetailService sa = new SearchActorDetailService();
		MemberDTO mdto = sa.memberSelectActor(email);
		ArrayList<CareerDTO> cList = sa.careerSelectActor(email);
		
		request.setAttribute("mdto", mdto);
		request.setAttribute("cList", cList);
	}

}
