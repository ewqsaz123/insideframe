<%@page import="com.web.insideframe.memberdto.CareerDTO"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.web.insideframe.memberdto.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/director.css"/> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>감독 검색</title>

<script type="text/javascript">

</script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
    <script>
        $(document).ready(function() {
            $("#nav-bar").click(function() {
                $("#menu").fadeToggle();
            });
        });
        
        function submitClick(form){
    			form.submit();
    	}
        
    </script>
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<header id="header">
        <nav>
            <div id="nav-logo">
                <a href="#">
                    <h1>INSIDEFRAME</h1>
                </a>
            </div>
            <div id="nav-bar">
                <i class="fa fa-bars"></i>
            </div>
        </nav>
    </header>
	 <menu id="menu">
        <nav>
            <li>LOOK FOR</li>
            <li class="look">
                <a class="mlist" href="searchDirector.do">DIRECTOR</a>
            </li>
            <li class="look">
                <a class="mlist" href="searchActor.do">ACTOR</a>
            </li>
            <li class="look">
                <a class="mlist" href="#">CINEMA</a>
            </li>
            <li class="look">
                <a class="mlist" href="borde.html">BOARD</a>
            </li>
            <li class="look">
                <a class="mlist" href="#">NOTICE</a>
            </li>

            <li class="login">
                <a class="mlist2" href="login.html">LOGIN</a>
                <a class="mlist2" href="join.html">JOIN</a>
            </li>
        </nav>
    </menu>

    <div id="intro">
        <div class="intro-video">
            <video controls autoplay loop>
              <source src="../video/video_2.mp4" type="video/mp4">
            </video>
        </div>
        <div class="intro-container">
            <h1>INSIDEFRAME</h1>
            <p>Look for Director.</p>
            <div class="searchActor">
                <form action="searchDirector.do" method="post">
                    <fieldset class="searchName">
                       <select name="searchtype">
                           <option value="이름">이름</option>
                           <option value="작품명">작품명</option>
                        </select>
                        <input class="sName" type="text" name="searchvalue" placeholder="Enter the search word" size=70>
                        <input class="sIcon" onClick="submitClick(this.form)" type="button">
                    </fieldset>


                    <input type="text" id="search" name="search" value="true">
                </form>
            </div>
        </div>
    </div>
    

	<div class="profilelist">
	<div class="profile-row">
<%
	ArrayList<MemberDTO> mList = (ArrayList<MemberDTO>)request.getAttribute("mList");
	
	try{
		String searchtype = request.getParameter("searchtype");
			Iterator<MemberDTO> it = mList.iterator();
			while(it.hasNext()){		// while start --------------
				MemberDTO mdto = it.next();
%>
				<div class="profiles">
					<a href="searchDirectorDetail.do?email=<%=mdto.getEmail()%>">
						<div id="blackbox"></div>
						<img id="profileimg" src="../photo/actor.jpeg"/>
						<p>
							이메일: <%=mdto.getEmail()%></br>
							이름: <%=mdto.getName()%></br>
							생년월일: <%=mdto.getBirth()%></br>
						</p>
					</a>
				</div>
<%					
			}							//while end ----------------
	}catch(Exception e){}
	
%>		
		</div>
	</div>
	<footer id="footer">
        <div class="footer-area">
            <div class="footersns">
                <span class="social">connect</span>
                <div class="connect">

                    Mobile: +82 (0) 10 1234 5678<br> Kakao: INSIDE FRAME STUDIO<br> Email: <a href="#">info@insideframe.co.kr</a>
                </div>

                <a href="https://www.instagram.com/dasom._.52/">
                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="16" viewBox="0 0 14 16">
                      <path d="M9.143 8c0-1.259-1.027-2.286-2.286-2.286S4.571 6.741 4.571 8s1.027 2.286 2.286 2.286S9.143 9.259 9.143 8zm1.232 0c0 1.946-1.571 3.518-3.518 3.518S3.339 9.947 3.339 8 4.91 4.482 6.857 4.482 10.375 6.053 10.375 8zm.964-3.661c0 .455-.366.821-.821.821s-.821-.366-.821-.821.366-.821.821-.821.821.366.821.821zM6.857 2.375c-1 0-3.143-.08-4.045.277-.313.125-.545.277-.786.518s-.393.473-.518.786c-.357.902-.277 3.045-.277 4.045s-.08 3.143.277 4.045c.125.313.277.545.518.786s.473.393.786.518c.902.357 3.045.277 4.045.277s3.143.08 4.045-.277c.313-.125.545-.277.786-.518s.393-.473.518-.786c.357-.902.277-3.045.277-4.045s.08-3.143-.277-4.045c-.125-.313-.277-.545-.518-.786s-.473-.393-.786-.518c-.902-.357-3.045-.277-4.045-.277zM13.714 8c0 .946.009 1.884-.045 2.83-.054 1.098-.304 2.071-1.107 2.875s-1.777 1.054-2.875 1.107c-.946.054-1.884.045-2.83.045s-1.884.009-2.83-.045c-1.098-.054-2.071-.304-2.875-1.107S.098 11.928.045 10.83C-.009 9.884 0 8.946 0 8s-.009-1.884.045-2.83c.054-1.098.304-2.071 1.107-2.875s1.777-1.054 2.875-1.107c.946-.054 1.884-.045 2.83-.045s1.884-.009 2.83.045c1.098.054 2.071.304 2.875 1.107s1.054 1.777 1.107 2.875c.054.946.045 1.884.045 2.83z"></path>
                    </svg>
                </a>
                <a href="https://www.facebook.com/" target="_blank">
					<svg xmlns="http://www.w3.org/2000/svg" width="9" height="16" viewBox="0 0 9 16">
                      <path d="M8.563.107v2.357H7.161c-1.098 0-1.304.527-1.304 1.286v1.688h2.616l-.348 2.643H5.857v6.777H3.125V8.081H.848V5.438h2.277V3.492c0-2.259 1.384-3.491 3.402-3.491.964 0 1.795.071 2.036.107z"></path>
                    </svg>
				</a>
                <a href="https://www.twitter.com/" target="_blank">
					<svg xmlns="http://www.w3.org/2000/svg" width="15" height="16" viewBox="0 0 15 16">
                      <path d="M14.464 3.643c-.393.571-.884 1.08-1.446 1.491.009.125.009.25.009.375 0 3.813-2.902 8.205-8.205 8.205-1.634 0-3.152-.473-4.429-1.295.232.027.455.036.696.036 1.348 0 2.589-.455 3.58-1.232-1.268-.027-2.33-.857-2.696-2 .179.027.357.045.545.045.259 0 .518-.036.759-.098C1.956 8.902.964 7.741.964 6.34v-.036c.384.214.83.348 1.304.366C1.491 6.152.982 5.268.982 4.268c0-.536.143-1.027.393-1.455 1.42 1.75 3.554 2.893 5.946 3.018-.045-.214-.071-.438-.071-.661 0-1.589 1.286-2.884 2.884-2.884.83 0 1.58.348 2.107.911.652-.125 1.277-.366 1.83-.696-.214.67-.67 1.232-1.268 1.589.58-.063 1.143-.223 1.661-.446z"></path>
                    </svg>
				</a>
            </div>

            <div class="intro">
                <div>
                    <span>Info</span>
                    <ul>
                        <li>NODI NHO</li>
                        <li>WOMAN YOON</li>
                        <li>GIGO JUNG</li>
                        <li>SOMDA KIM</li>
                    </ul>
                </div>
                <div>
                    <span>undergrad</span>
                    <ul>
                        <li>2013335031</li>
                        <li>2011335049</li>
                        <li>2013335069</li>
                        <li>2013335010</li>
                    </ul>
                </div>
            </div>

            <div class="aboutus">
                <p>Lorem ipsum dolor si. Impedit facilis hic tenetur sapiente aliquam.Praesent consequat sapien ut dui hendrerit imperdiet. Donec tinciunt risus et semper accumsan.Morbi ali non condimentum enim fermentum. Ut blandit interdum quam ac consequat.</p>

                © INSIDEFRAME
            </div>

        </div>
    </footer>
</body>
</html>