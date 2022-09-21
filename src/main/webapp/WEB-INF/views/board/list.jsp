<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../common/header.jsp" />
<body>
<div id="wrap">
     <!-- @ CONTAINER -->
    <section id="container" class="sub  new">
        <!-- @ CONTENTS -->
        <div id="contents">
            <!-- @ SUB TITLE AREA -->
            <div class="sub-title-area">
                <h2 class="tit">News & Info </h2>
            </div>
			<div class="btn_area">
					<a href="/board/register" class="btn_blue_line">글쓰기</a>
              </div>
			<!-- 페이징 처리는 5개씩 해주세요-->
            <table class="news_list">
            <caption>News 리스트</caption>
            <colgroup>
                <col style="width: 10%">
                <col style="width:*">
                <col style="width: 10%">
                <col style="width: 10%">
                <col style="width: 5%">
                <col style="width: 8%">
            </colgroup>
            <thead>
                <tr>
                    <th scope="col">번호</th>
                    <th scope="col">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">등록일</th>
                    <th scope="col">조회</th>
                    <th scope="col">첨부</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${list }" var="bvo">
            <tr>
                <td>${bvo.bno }</td>
                <td class="board_txt">
                    <p>
                        <a href="/board/detail?bno=${bvo.bno }&pageNo=${pgn.pgvo.pageNo}&qty=${pgn.pgvo.qty}" class="ellip"> ${bvo.bname } </a>
                    </p>
                </td>
                <td class="board_man">${bvo.writer }</td>
                <td class="board_date">${bvo.modAt }</td>
                <td class="board_read">${bvo.readCount }</td>
                <td class="board_file">
                <c:if test="${bvo.fileCount > 0 }">
                <span>파일</span>
                </c:if>
                </td> 
            </tr>
            </c:forEach>
            </tbody>
            </table>




<div class="pagination" style="margin: auto; display: flex; justify-content: center;">
		<div class="pagination text-small text-uppercase text-extra-dark-gray mt-3">
			<ul style="list-style:none;">
					<c:if test="${pgn.prev }">
						<li style="float: left; margin-right: 20px;"><a href="/board/list/?pageNo=${1 }&qty=${pgn.pgvo.qty }">««</a></li>
					</c:if>
					<c:if test="${pgn.prev }">
						<li style="float: left; margin-right: 20px;"><a href="/board/list/?pageNo=${pgn.startPage-1 }&qty=${pgn.pgvo.qty }">«</a></li>
					</c:if>
					<c:forEach begin="${pgn.startPage }" end="${pgn.endPage }" var="i">
						<li style="float: left; margin-right: 20px;" class="${pgn.pgvo.pageNo == i ? 'active' : '' }">
						<a href="/board/list/?pageNo=${i }&qty=${pgn.pgvo.qty}">${i }</a></li>
					</c:forEach>
					<c:if test="${pgn.next }">
						<li style="float: left; margin-right: 20px;"><a href="/board/list/?pageNo=${pgn.endPage + 1 }&qty=${pgn.pgvo.qty }">»</a></li>
					</c:if>
					<c:if test="${pgn.next }">
						<li style="float: left; margin-right: 20px;"><a href="/board/list/?pageNo=${pgn.realEndPage }&qty=${pgn.pgvo.qty }">»»</a></li>
					</c:if>
			</ul>
		</div>
</div>



				<div class="find_wrap">
                <select name="" id="">
                    <option value="">제목</option>
                    <option value="">내용</option>
                </select>
                <input type="text" name="" id=""  title="검색어 입력" placeholder="검색어 입력">
                <a href="#" class="btn_gray">검색</a>
            </div>
        </div>
        <!-- CONTENTS @ -->
    </section>
    <!-- CONTAINER @ -->
</div>
</body>