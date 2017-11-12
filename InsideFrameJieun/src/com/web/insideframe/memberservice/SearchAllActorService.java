package com.web.insideframe.memberservice;

import java.util.ArrayList;
import java.util.List;

import com.web.insideframe.common.DaoFactory;
import com.web.insideframe.memberdao.MemberDAO;
import com.web.insideframe.memberdto.MemberDTO;

public class SearchAllActorService {
	DaoFactory df = new DaoFactory();
	MemberDAO mdao = df.memberDao();
	
	public ArrayList<MemberDTO> memberSelectAllActor(){
		return mdao.selectAllActor();	
	}
}
