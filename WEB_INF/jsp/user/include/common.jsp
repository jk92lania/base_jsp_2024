<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="global.jsp" %>
    
<%
request.setCharacterEncoding("UTF-8");
String pagetype = request.getParameter("pagetype"); // main, sub, board 등 공통 타입(style 구분) 표기
String pagename = request.getParameter("pagename"); //page 명 표기(영어, css base 구분자)
String pagetxt = request.getParameter("pagetxt"); // page 명 표기(한글)
String [] cssLinks = request.getParameterValues("cssLinks"); // page 의 css 파일들
String navId = request.getParameter("navId"); // 상단 메뉴의 메뉴 위치 표시용
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no" /> <%-- pc기준, 전화 없는 표기 --%>
    <title>사이트명 - <%=pagetxt%></title>

    <%-- css jquery UI --%>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.14.0/themes/base/jquery-ui.css">

    <%-- css swiper --%>
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
    />
    <link rel="stylesheet" href="<%=pathBase%>/css/vendors/swiper/swiper-bundle.min.css">
    

    <link rel="stylesheet" href="<%=pathBase%>/css/user/compile/style.css">
    <% if(cssLinks != null ) { %>

        <% for(String link : cssLinks ) { %>
            <link rel="stylesheet" href="<%=pathBase%>/css/user/<%=link%>.css">
        <% } %>

    <% } %>


    <!-- js jquery -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <!-- js jquery UI -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <%-- js swiper --%>
    <script src="<%=pathBase%>/js/vendors/swiper/swiper-bundle.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    
    <!-- 벽돌 레이아웃, masonry(핀터레스트 레이아웃) -->
    <script src="<%=pathBase%>/js/vendors/masonry.min.js"></script>
    
    <!-- 이미지 로딩 before masonry(핀터레스트 레이아웃)  -->
    <script src="<%=pathBase%>/js/vendors/imagesloaded.pkgd.js"></script>
    <script src="https://unpkg.com/imagesloaded@5/imagesloaded.pkgd.js"></script>
    <script src="https://unpkg.com/imagesloaded@5/imagesloaded.pkgd.min.js"></script>

    <!-- 클립보드복사 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.6/clipboard.min.js"></script>

    <script src="<%=pathBase%>/js/user/common/common.js"></script>
    <script src="<%=pathBase%>/js/user/common/clipboard.js"></script>

</head>
<body>