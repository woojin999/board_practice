<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../common/header.jsp" />
<body>
<div id="wrap">
     <!-- @ CONTAINER -->
     <section id="container" class="sub">
        <!-- @ CONTENTS -->
        <form action="/board/modify" method="post" enctype="multipart/form-data">
       <input type="hidden" value="${bdto.bvo.bno }" name="bno">
	  <input type="hidden" value="${pgvo.pageNo }" name="pageNo">
	<%-- <input type="hidden" value="${pgvo.qty }" name="qty"> --%>
	<input type="hidden" value="${pgvo.type }" name="type">
	<input type="hidden" value="${pgvo.kw }" name="kw"> 
        <div id="contents">
               <div class="sub-title-area">
                <h2 class="tit">News & Info </h2>
				</div>
                <table class="basic_write">
                    <caption>News 입력</caption>
                    <colgroup>
                        <col style="width:150px">
                        <col style="width:*">
                    </colgroup>
					   <tr>
                        <th>제목<span class="star">*</span></th>
                        <td><input type="text" title="제목" name="bname" id="name" class="add_txt"  placeholder="제목 *" value="${bdto.bvo.bname }"></td>
                    </tr>
                    <tr>
                        <th>작성자<span class="star">*</span></th>
                        <td><input type="text" title="성명" name="writer" id="writer" class="name_txt" placeholder="성명 *" value="${bdto.bvo.writer }"></td>
                    </tr>
                 
                     <tr>
                        <th>첨부파일</th>
                        <td>
                            <input type="file" title="첨부파일" name="fileAttached" id="files" placeholder="학과/부서" class="name_txt" accept=".gif, .jpg, .png, .jpeg, .gif" multiple>
                        </td>
                    </tr> 
                    <tr>
                        <th>내용 <span class="star">*</span></th>
                        <td>
                           <textarea name="description" id="" cols="30" rows="10" style="width:100%">${bdto.bvo.description }</textarea>
                        </td>
                    </tr>
                    
                </table>               
                <div class="btn_area">
					<button type="submit" class="btn_blue">확인</button> 
					<a href="/board/list" class="btn_blue_line">취소</a>
                </div>
        </div>
                </form>
        <!-- CONTENTS @ -->
    </section>
    <!-- CONTAINER @ -->
</div>
</body>