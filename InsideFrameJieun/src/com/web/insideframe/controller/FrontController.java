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
		
		String viewPage=null; //��û�� ���� ������ ���� ������
		Command command=null; //���������� ���� command������
		
		String uri=request.getRequestURI();
		String conPath=request.getContextPath();
		String comName=uri.substring(conPath.length());
		
		if(comName.equals("/jsp/join.do")){
			viewPage="join.jsp";
		}else if(comName.equals("/jsp/searchActor.do")){
			//��� �˻�
			command = new SearchActorCommand();
			command.execute(request, response);
			viewPage="searchActor.jsp";
		}else if(comName.equals("/jsp/searchDirector.do")){
			//���� �˻�
			command = new SearchDirectorCommand();
			command.execute(request, response);
			viewPage="searchDirector.jsp";
		}else if(comName.equals("/jsp/searchActorDetail.do")){
			//��� ������ �󼼺���
			command = new SearchActorDetailCommand();
			command.execute(request, response);
			viewPage="searchActorDetail.jsp";
		}else if(comName.equals("/jsp/searchDirectorDetail.do")){
			//���� ������ �󼼺���
			command = new SearchDirectorDetailCommand();
			command.execute(request, response);
			viewPage="searchDirectorDetail.jsp";
		}
		
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(viewPage);
		dispatcher.forward(request,response);
	}

}
