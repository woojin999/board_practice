<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="../common/header.jsp" />

<body>
<c:set var="bvo" value="${bdto.bvo }"/> 
<div id="wrap">
    <!-- @ CONTAINER -->
    <section id="container" class="sub">
        <!-- @ CONTENTS -->
        <div id="contents">
            <!-- @ SUB TITLE AREA -->
            <div class="sub-title-area">
                <h2 class="tit">News & Info </h2>
            </div>
            <div class="write_title">
              	${bvo.bname }
            </div>
            <div class="write_date">
            	<%-- <input type="text" id="bnoVal" name="bnoVal" value="${bvo.bno }">  --%>
                <span id="bnoVal" style="display: none;">${bvo.bno }</span>
                <span class="write_line"><strong>글 번호  :</strong> ${bvo.bno } </span>
                <span class="write_line"><strong>작성자  :</strong> ${bvo.writer } </span>
                <span class="write_line"><strong>조회수  :</strong> ${bvo.readCount}  </span>
                <span class="write_line">${bvo.modAt }</span>
                <span>${bvo.fileName }</span>

            </div>
            <div class="con_box">
               ${bvo.description }
            </div>

            <div class="btn_area">
                <a href="/board/list?pageNo=${pgvo.pageNo }&qty=${pgvo.qty}" class="btn_blue">목록</a>
				 <a class="btn_blue" href="/board/modify?bno=${bvo.bno }&pageNo=${pgvo.pageNo }&qty=${pgvo.qty}">수정</a>
				 <a class="btn_blue" id="boardRemove">삭제</a>
            </div>
            <form action="" id="boardRmForm" style="display: none;"
					method="post">
					<input type="hidden" id="bno" value="" name="bno">
					<input type="hidden" value="${pgvo.pageNo }" name="pageNo">  	
  					<input type="hidden" value="${pgvo.qty }" name="qty">  	
				</form>
        </div>
        <!-- CONTENTS @ -->
    </section>
    <!-- CONTAINER @ -->
</div>
</body>
<script src="/resources/js/board.detail.js"></script>
