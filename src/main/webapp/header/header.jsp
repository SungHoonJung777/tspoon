<%@page import="common.CommonUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&family=Noto+Sans+KR:wght@100..900&family=Poor+Story&display=swap" rel="stylesheet">
		
	<link type="text/css" rel="stylesheet" href="/Project4/css/header.css"/>
	
    <header id="header">
        <div id="headcontainer">
        	<% boolean login = CommonUtil.loginCheck(session); %>
            <div id="logo">
                <a href="/Project4/kmocMain.do?command=main"><img src="/Project4/mainImg/header_logo.png" alt=""></a>
            </div>
            <nav id="top_menu">
                <ul>
                    <li><button style="margin-left: 50px ;" onclick="location.href='/Project4/lecture/lecture_main.do'">강좌</button></li>
                    <li><a href="/Project4/comu.do">커뮤니티</a></li>
                </ul>
            </nav>
            <nav id="top_menu_1">
                <ul>
                	<% if(!login){ %>
                    <li><a href="/Project4/member/login.do">로그인</a></li>
                    <li><a href="/Project4/member/joinchoice.do">회원가입</a></li>
                    <%}else{ %>
                    <li><a href="/Project4/member/logout.do">로그아웃</a></li>
                    <li><a href="/Project4/mypage/mypage.do">마이페이지</a></li>
                    <%} %>
                </ul>
            </nav>
        </div>
    </header>
