<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*, java.sql.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/Astyle.css" />
<jsp:include page="/WEB-INF/views/common/adminHeader.jsp"></jsp:include>

<!-- <style>
#noticeViewDate {
	color: #898989;
}

button#noticeCancelkBtn{
	background-color: transparent;
	border-color: transparent;
}

button#noticeUpBtn{
background-color: transparent;
	border-color: transparent;
}

button#noticeListBtn{
background-color: transparent;
	border-color: transparent;
}
</style> -->

<style>
div#noticeContectDiv{
	min-height: 200px;
}
</style>
<script>
function fn_memberNoticeDel(e){
	
	var num = $(e).val();
	
	location.href="${path}/admin/memberNoticeDel.do?noticeNum="+num;
}

</script>


<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-10">
				<h4>${notice.NOTICETITLE }</h4>
			</div>
			<div class="col-sm-2">		
			</div>
			<div class="col-sm-2">
				<p>번호 <b>${notice.NOTICENUM }</b> 작성자 <b>관리자</b></p>
			</div>
			<div class="col-sm-3">
				<p>${notice.WRITEDATE }</p>
			</div>
			<div class="col-sm-2">
			</div>
			<div class="col-sm-2">
			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm-2">			
				<button id="noticeCancelkBtn" name="noticeCancelkBtn" class="btn btn-default float-right" value="${notice.NOTICENUM }" onclick="fn_memberNoticeDel(this)">삭제</button>
				<button id="noticeUpBtn" type="submit" onclick="return validate();" class="btn btn-default float-right">수정</button>
			</div>	
		</div>
		<hr/>
		<br/>	
		<div class="row">			
			<div class="col-sm-12" id="noticeContectDiv">
				${notice.NOTICECONTENT}
			</div>
			<div class="col-sm-2"></div>
		</div>
		<br>
		<hr>
		<button id="noticeListBtn" class="btn btn-default" >목록</button>
	</div>
</section>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>