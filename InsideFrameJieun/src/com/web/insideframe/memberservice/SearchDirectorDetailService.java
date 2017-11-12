package com.web.insideframe.memberservice;

import java.util.ArrayList;
import java.util.List;

import com.web.insideframe.common.DaoFactory;
import com.web.insideframe.memberdao.CareerDAO;
import com.web.insideframe.memberdao.MemberDAO;
import com.web.insideframe.memberdto.CareerDTO;
import com.web.insideframe.memberdto.MemberDTO;

public class SearchDirectorDetailService {
	DaoFactory df = new DaoFactory();
	MemberDAO mdao = df.memberDao();
	CareerDAO cdao = df.careerDao();
	
	public MemberDTO memberSelectDirector(String email){
		return mdao.select(email);
	}
	public ArrayList<CareerDTO> careerSelectDirector(String email){
		return cdao.selectCareer(email);
	}
}
