package com.web.insideframe.memberservice;

import java.util.ArrayList;
import java.util.List;

import com.web.insideframe.common.DaoFactory;
import com.web.insideframe.memberdao.CareerDAO;
import com.web.insideframe.memberdao.MemberDAO;
import com.web.insideframe.memberdto.CareerDTO;
import com.web.insideframe.memberdto.MemberDTO;

public class SearchActorDetailService {
	DaoFactory df = new DaoFactory();
	MemberDAO mdao = df.memberDao();
	CareerDAO cdao = df.careerDao();
	
	public MemberDTO memberSelectActor(String email){
		return mdao.select(email);
	}
	public ArrayList<CareerDTO> careerSelectActor(String email){
		return cdao.selectCareer(email);
	}
}
