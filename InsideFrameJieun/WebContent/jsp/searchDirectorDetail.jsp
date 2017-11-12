<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.web.insideframe.memberdto.CareerDTO"%>
<%@page import="com.web.insideframe.memberdto.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<% 
	MemberDTO mdto = (MemberDTO)request.getAttribute("mdto");
	ArrayList<CareerDTO> cList = (ArrayList<CareerDTO>)request.getAttribute("cList");
	
	for(int i=0; i<cList.size();i++){
		System.out.println(cList.get(i).getTitle());
	}
%>
	<hr>
	<img src="">
		이름: <%=mdto.getName()%>
		이메일: <%=mdto.getEmail()%>
		번호: <%=mdto.getPhone()%>
		생년월일: <%=mdto.getBirth()%>
	<hr>
	
	<h2>영화</h2><hr>
<%
	for(int i=0; i<cList.size();i++){
		if(cList.get(i).getType().equals("영화")){
			
			CareerDTO cdto = cList.get(i);
%>
			<%=cdto.getTitle()%>/<%=cdto.getCdate()%>/<%=cdto.getRoll()%><br>
<%
		}
	}
%>
	<h2>연극</h2><hr>
<%
	for(int i=0; i<cList.size();i++){
		if(cList.get(i).getType().equals("연극")){
			System.out.println("연극"+i);
			CareerDTO cdto = cList.get(i);
%>
			<%=cdto.getTitle()%>/<%=cdto.getCdate()%>/<%=cdto.getRoll()%><br>
<%
		}
	}
%>
	<h2>드라마</h2><hr>
<%
	for(int i=0; i<cList.size();i++){
		if(cList.get(i).getType().equals("드라마")){
			CareerDTO cdto = cList.get(i);
%>
			<%=cdto.getTitle()%>/<%=cdto.getCdate()%>/<%=cdto.getRoll()%><br>
<%
		}
	}
%>	
	<h2>CF</h2><hr>
<%
	for(int i=0; i<cList.size();i++){
		if(cList.get(i).getType().equals("CF")){
			CareerDTO cdto = cList.remove(i);i++;
%>
			<%=cdto.getTitle()%>/<%=cdto.getCdate()%>/<%=cdto.getRoll()%><br>
<%
		}
	}
%>
	</body>
</html>