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
			command=new JoinCommand();
			command.execute(request, response);
			viewPage="joinOk.jsp";
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
		}else if(comName.equals("/jsp/joinPage.do")){
			viewPage="join.jsp";
		}else if(comName.equals("/jsp/loginPage.do")){
			viewPage="login.jsp";
		}else if(comName.equals("/jsp/index.do")){
			viewPage="index.jsp";
		}else if(comName.equals("/jsp/login.do")){
			command=new LoginCommand();
			command.execute(request, response);
			viewPage="index.jsp";
		}else if(comName.equals("/jsp/logout.do")){
			command=new LogoutCommand();
			command.execute(request, response);
			viewPage="index.jsp";
		}else if(comName.equals("/jsp/profilePage.do")){
			command=new ProfileCommand();
			command.execute(request, response);
			viewPage="profile.jsp";
		}else if(comName.equals("/jsp/profilealter.do")){
			command=new ProfileAlterCommand();
			command.execute(request, response);
			viewPage="index.jsp";
		}else if(comName.equals("/jsp/boardlist.do")){
			command=new BoardListCommand();
			command.execute(request, response);
			viewPage="boardList.jsp";
		}else if(comName.equals("/jsp/boardDetailView.do")){
			command=new BoardDetailViewCommand();
			command.execute(request, response);
			viewPage="boardDetailView.jsp";
		}else if(comName.equals("/jsp/reply.do")){
			command=new ReplyCommand();
			command.execute(request, response);
			viewPage="boardDetailView.do?idx="+request.getParameter("comment_board")+"&commentPage=1";
		}else if(comName.equals("/jsp/cinemaSearchPage.do")){
			command=new CinemaSearchCommand();
			command.execute(request, response);
			viewPage="cinemaSearch.jsp?";
		}else if(comName.equals("/jsp/cinemaSearch.do")){
			command=new CinemaSearchCommand();
			command.execute(request, response);
			viewPage="cinemaSearch.jsp";
		}else if(comName.equals("/jsp/movieDetailView.do")){
			command=new MovieDetailViewCommand();
			command.execute(request, response);
			viewPage="movieDetailView.jsp";
		}else if(comName.equals("/jsp/movieReply.do")){
			command=new MovieReplyCommand();
			command.execute(request, response);
			viewPage="movieDetailView.do?movieno="+request.getParameter("movieno")+"&commentPage=1";
		}else if(comName.equals("/jsp/changePasswordPage.do")){
			viewPage="changePassword.jsp";
		}
		
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(viewPage);
		dispatcher.forward(request,response);
	}

}
