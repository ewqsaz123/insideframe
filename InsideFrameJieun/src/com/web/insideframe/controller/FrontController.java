package com.web.insideframe.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.insideframe.command.*;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		commandAction(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		commandAction(request,response);
	}
	private void commandAction(HttpServletRequest request,HttpServletResponse response) throws  ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		
		String viewPage=null; //요청에 대한 응답을 받을 페이지
		Command command=null; //로직수행을 위한 command생성자
		
		String uri=request.getRequestURI();
		String conPath=request.getContextPath();
		String comName=uri.substring(conPath.length());
		
		if(comName.equals("/jsp/join.do")){
			viewPage="join.jsp";
		}else if(comName.equals("/jsp/searchActor.do")){
			//배우 검색
			command = new SearchActorCommand();
			command.execute(request, response);
			viewPage="searchActor.jsp";
		}else if(comName.equals("/jsp/searchDirector.do")){
			//감독 검색
			command = new SearchDirectorCommand();
			command.execute(request, response);
			viewPage="searchDirector.jsp";
		}else if(comName.equals("/jsp/searchActorDetail.do")){
			//배우 프로필 상세보기
			command = new SearchActorDetailCommand();
			command.execute(request, response);
			viewPage="searchActorDetail.jsp";
		}else if(comName.equals("/jsp/searchDirectorDetail.do")){
			//감독 프로필 상세보기
			command = new SearchDirectorDetailCommand();
			command.execute(request, response);
			viewPage="searchDirectorDetail.jsp";
		}
		
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(viewPage);
		dispatcher.forward(request,response);
	}

}
