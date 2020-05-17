<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 1.해당회원의 닉네임과 포인트를 불러와서 출력 -->
<!-- 2.입력한 포인트를 회원의 포인트 수에 더하는 로직 추가 -->

<div class="admin-user">
	<a href="<%= request.getContextPath()%>/admin.do" class="admin-logo">관리자 페이지</a>	
	<a href="<%= request.getContextPath()%>/userList.do" class="user-button">회원관리</a>
	<a href="<%= request.getContextPath()%>/noticeManage.do" class="notice-button">공지사항</a><br/>
	<div class="point-box">
		<form name="point-form" method="post" action="pointCharge.do">
			<p>포인트 충전</p>
			<p>${userId}님의 현재 포인트 : 0P</p>
			<p><input type="text" name="point"/>P 충전하기<br/></p>
			<input type="hidden" name="id" value="${userId}"/>
			<p><input type="submit" value="충전"/></p>
		</form>
	</div>
</div>