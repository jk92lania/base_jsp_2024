<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../include/global.jsp" %>
	

<%
	String pagetype = "main"; // main, sub, board 등 공통 타입(style 구분) 표기
	String pagename = "main"; // page 명 표기(영어, css base 구분자)
	String pagetxt = "메인"; // page 명 표기(한글)
	String navId = "0001"; // 상단 메뉴의 메뉴 위치 표시용
%>



<jsp:include page="../../include/common.jsp" flush="false" >
	<jsp:param name="pagetype" value="<%=pagetype%>" />
	<jsp:param name="pagename" value="<%=pagename%>" />
	<jsp:param name="pagetxt" value="<%=pagetxt%>" />
	<jsp:param name="navId" value="<%=navId%>" />
    <jsp:param name="cssLinks" value="compile/main" />
</jsp:include>

<%--
<jsp:param name="cssLinks" value="common/swiper" />
<jsp:param name="cssLinks" value="common/sect_relic" />
<jsp:param name="cssLinks" value="pages/main/main_style" />
--%>

<script language=javascript>
	const pagetype = "<%=pagetype%>";
	const pagename = "<%=pagename%>";
	const navId = "<%=navId%>"; // 상단 메뉴의 메뉴 위치 표시용
	const pathBase = "<%=pathBase%>"; // 경로 자료 (assets)
	const pathPage = "<%=pathPage%>"; // 경로 jsp (이 페이지가 포함된 폴더)
</script>

<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="sysNow"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" /></c:set>

<%-- custom scrollar 만들기 - base rangebar 이용 --%>
<input type="range" class="scrollbar-custom-main" step="0.1" min="0" max="100">

<%-- wrap : html 대신한 최상위 --%>
<div class="wrap wrap-<%=pagename%>">
	
    <%-- modal 공통 ( 전체 메뉴 등 ) --%>
	<jsp:include page="../../include/modal.jsp" flush="false" ></jsp:include>

	<%-- main용 popup --%>
	<div class="modals-container">
		<%-- 
		<div class="modal-wrap modal-first-wrap">
			<div class="modal">
				<div class="modal-top">
				</div>
				<div class="modal-main">
					<a href="https://docs.google.com/forms/d/e/1FAIpQLScXfYmN9KO50LOrgj59XITpqxDtMd1msUI7u_mxzp7DF3LAeQ/viewform" target="_blank rel="noopener noreferrer">
						<img src="/images/user/popup/popup-service.png" alt="팝업">
					</a>
				</div>
				<div class="modal-bottom">
					<div class="modal-controller">
						<div class="btn-wrap">
							<button type="button" class="btn btn-close-today">
								<div class="txt">오늘 하루 팝업창을 열지 않습니다.</div>
							</button>		
						</div>
						<div class="btn-wrap">
							<button type="button" class="btn btn-close">닫기</button>
						</div>
					</div>
				</div>
			</div>
		</div> 
		--%>
		<div class="modal-wrap modal-first-wrap" data-popup-id="3">
			<div class="modal">
				<div class="modal-top">
				</div>
				<div class="modal-main">
					<div class="modal-imgs" style="display: flex; flex-wrap: wrap;">
						<img src="/images/user/popup/popup-2024-newtech-conference-01.jpg" alt="팝업">
						<%-- <img src="/images/user/popup/popup-2024-newtech-conference-01.jpg" alt="팝업" style="width: 50%;"> --%>
						<%-- <img src="/images/user/popup/popup-2024-newtech-conference-02.jpg" alt="팝업" style="width: 50%;"> --%>
					</div>
					<script>
						const imgs = document.querySelectorAll('.modal-imgs img');
						imgs.forEach( el => {
							// resizeFirstPopup( el );
							window.addEventListener('resize', function(){
								// resizeFirstPopup( el );
							})
						})

						function resizeFirstPopup( elImg ) {
							if(window.matchMedia("screen and (max-width: 1024px)").matches) {
								elImg.style.width = '100%';
							} else {
								elImg.style.width = '50%';
							}
						}
					</script>
				</div>
				<div class="modal-bottom">
					<div class="modal-controller">
						<div class="btn-wrap">
							<button type="button" class="btn btn-close-today">
								<div class="txt">오늘 하루 팝업창을 열지 않습니다.</div>
							</button>		
						</div>
						<div class="btn-wrap">
							<button type="button" class="btn btn-close">닫기</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<%-- ex --%>
		<%-- <div class="modal-wrap modal-first-wrap">
			<div class="modal">
				<div class="modal-top">
				</div>
				<div class="modal-main">
					<a href="" target="_blank" rel="noopener noreferrer">
						<img src="" alt="">
					</a>
				</div>
				<div class="modal-bottom">
					<div class="modal-controller">
						<div class="btn-wrap">
							<button type="button" class="btn btn-close-today">
								<div class="txt">오늘 하루 팝업창을 열지 않습니다.</div>
							</button>		
						</div>
						<div class="btn-wrap">
							<button type="button" class="btn btn-close">닫기</button>
						</div>
					</div>
				</div>
			</div>
		</div> --%>
		<%-- ex --%>
	</div>

    <%-- header 최상위 상단 --%>
	<jsp:include page="../../include/header.jsp" flush="false" >
		<jsp:param name="pagetype" value="<%=pagetype%>" />
		<jsp:param name="pagename" value="<%=pagename%>" />
		<jsp:param name="navId" value="<%=navId%>" />
	</jsp:include>

    <%-- main : 내용들 --%>
	<div class="main <%=pagename%>-main">

        <%-- 내용 - ex youtube --%>
		<section class="main-sect sect-youtube">
			<div class="layout">
				<button type="button" class="btn">button</button>
			</div>
		</section>



	</div>

</div>


<!-- 페이지별 script -->
<!-- <script async src="https://www.youtube.com/iframe_api"></script>  
<script src="/js/user/common/youtubeAPI.js"></script> -->
<script src="<%=pathBase%>/js/user/pages/main/main.js"></script>


<!-- 푸터 -->
<jsp:include page="../../include/footer.jsp" flush="false" />