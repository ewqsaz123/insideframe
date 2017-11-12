package com.web.insideframe.memberservice;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.web.insideframe.common.DaoFactory;
import com.web.insideframe.memberdao.CareerDAO;
import com.web.insideframe.memberdao.MemberDAO;
import com.web.insideframe.memberdto.CareerDTO;
import com.web.insideframe.memberdto.MemberDTO;

public class SearchDirectorConditionService {
	DaoFactory df = new DaoFactory();
	MemberDAO mdao = df.memberDao();
	
	public ArrayList<MemberDTO> memberNameConditionDirector(String searchvalue){
		return mdao.selectConditionDirectorAsName(searchvalue);
	}
	
	public ArrayList<MemberDTO> memberTitleConditionDirector(String searchvalue){
		return mdao.selectConditionDirectorAsTitle(searchvalue);
	}

}
