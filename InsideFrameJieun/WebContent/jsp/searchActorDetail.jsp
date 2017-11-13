<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.web.insideframe.dto.CareerDTO"%>
<%@page import="com.web.insideframe.dto.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/searchActorDetail.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <script>
            $(document).ready(function() {
                $("#nav-bar").click(function() {
                    $("#menu").fadeToggle();
                });
            });
        </script>
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>

<% 
	MemberDTO mdto = (MemberDTO)request.getAttribute("mdto");
	ArrayList<CareerDTO> cList = (ArrayList<CareerDTO>)request.getAttribute("cList");
	
	
	for(int i=0; i<cList.size();i++){
		System.out.println(cList.get(i).getTitle());
	}
	
%>

<body>
        <div id="container">
            <div class="info-area">
                <div class="name">
                    <h1><%=mdto.getName()%></h1> 
            </div>
                <div class="info">
                  <li class="infoList">
                        <label>Birth</label>
                        <%=mdto.getBirth()%></li>
                   <li class="infoList info-left">
                       <label>Height</label>
                       <%=mdto.getHeight()%></li>
                   <li class="infoList info-left">
                       <label>Weight</label>
                        <%=mdto.getWeight()%></li>
                   </div>
            </div>
                                          
        <div class="contents">                    
            <div class="photo-area">
               <div class="photo">
                <img src="../photo/actor.jpeg">
                </div>
            </div>
            
            <div class="detail-area">
                <ul class="detail">
                    <li class="type">
                        <span>MOVIE</span>
<%
		  for(int i=0; i<cList.size();i++){
			if(cList.get(i).getType().equals("영화")){
			
			CareerDTO cdto = cList.get(i);

  %>
                        <div class="title">
                           <ul class="title-ul">
                            <li class="titleLi Li1"><%=cdto.getCdate()%></li>
                            <li class="titleLi Li2">'<%=cdto.getTitle()%>'</li>
                            </ul>
                            
                        </div>
                        <div class="role"><%=cdto.getRoll()%></div>
 <%
			}
		  }
 %>                       
                        
                    </li>
              
                    <li class="type">
                        <span>DRAMA</span>
 <%
	for(int i=0; i<cList.size();i++){
		if(cList.get(i).getType().equals("드라마")){
			CareerDTO cdto = cList.get(i);
 %>
                        <div class="title">
                           <ul class="title-ul">
                            <li class="titleLi Li1"><%=cdto.getCdate()%></li>
                            <li class="titleLi Li2">'<%=cdto.getTitle()%>'</li>
                            </ul>
                           
                        </div>
                        <div class="role"><%=cdto.getRoll()%></div>
<%
		}
	}
%>
                        
                        
                    </li>
                    <li class="type">
                        <span>PLAY</span>
 <%
	for(int i=0; i<cList.size();i++){
		if(cList.get(i).getType().equals("연극")){
			CareerDTO cdto = cList.get(i);
%>
                        
                        
                        <div class="title">
                           <ul class="title-ul">
                            <li class="titleLi Li1"><%=cdto.getCdate()%></li>
                            <li class="titleLi Li2">'<%=cdto.getTitle()%>'</li>
                            </ul>
                        </div>
                        <div class="role"><%=cdto.getRoll()%></div>
                    
<%
		}
	}
%>
                    </li>
                    <li class="type">
                        <span>CF</span>
<%
	for(int i=0; i<cList.size();i++){
		if(cList.get(i).getType().equals("CF")){
			CareerDTO cdto = cList.get(i);
%>
                        
                        
                        <div class="title">
                           <ul class="title-ul">
                            <li class="titleLi Li1"><%=cdto.getCdate()%></li>
                            <li class="titleLi Li2">'<%=cdto.getTitle()%>'</li>
                            </ul>
                        </div>
                        <div class="role"><%=cdto.getRoll()%></div>
                    
<%
		}
	}
%>
                    
                </li>
                </ul>
                <div class="info-2">
                        <li class="infoList">
                           <label>E-mail</label>
                           <%=mdto.getEmail()%>
                       </li>
                       <li class="infoList info-left">
                           <label>Phone</label>
                           <%=mdto.getEmail()%>
                       </li>
                    </div>
            </div>
        </div>

    </div>



    </body>




</html>