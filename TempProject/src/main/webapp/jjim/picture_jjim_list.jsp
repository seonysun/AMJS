<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
// href="../mypage/jjim_delete.do?no=${vo.jno }
$(function(){
	$('.jjim_delBtn').click(function(){
		let no = $(this).attr('data-no')
		$.ajax({
			type:'post',
			url:'../mypage/jjim_delete.do',
			data:{'no':no},
			success:function(response) {
				$('.mypage_home_div').html(response)
			}
		})
		
	})

})

</script>
<style type="text/css">
.mypage_home_title {
	margin: 0px;
	margin-bottom: 10px;
	padding-bottom: 15px;
	border-bottom: 2px solid #E2E2E2;
}
.mypage_home_content {
	margin: 0px;
}
.mypage_home_subtitle {
	color: #27375C;
}

</style>
</head>
<body>
		<div class="col-11 mypage_home_title">
			<h4 class="mypage_home_subtitle">내가 찜한 그림</h4>
		</div>
		<div class="col-11 mypage_home_content">
			<table class="table">
				<tr>
					<th width="40%" class="text-center">제목</th>
					<th width="15%" class="text-center">그림</th>
					<th width="15%" class="text-center">작가</th>
					<th width="20%" class="text-center">작품코드</th>
					<th width="10%" class="text-center">삭제여부</th>
				</tr>
				<c:forEach var="vo" items="${list }">
				<tr>
					<td width="40%" class="text-center" style="vertical-align: middle;"><b>${vo.title}</b></td>
					<td width="15%" class="text-center"><img src="${vo.image}" style="width:60px; height: 60px"></td>
					<td width="15%" class="text-center" style="vertical-align: middle">${vo.name }</td>
					<td width="20%" class="text-center" style="vertical-align: middle">${vo.code }</td>
					<td width="10%" class="text-center" style="vertical-align: middle">
					<span data-no="${vo.jno }" class="btn btn-sm jjim_delBtn" style="background-color: red; color: #fff; border-radius: 5px;">삭제</span>
					</td>
				</tr>
				</c:forEach>
			</table>
		</div>
</body>
</html>