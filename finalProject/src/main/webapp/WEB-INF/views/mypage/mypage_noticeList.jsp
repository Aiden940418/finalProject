<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- header -->
<%@ include file="../includes/header.jsp"%>

<!-- leftmenubar -->
<%@ include file="../includes/mypage_leftMenuBar.jsp"%>
<!-- page -->
<div class="contentDiv">

	<div class="container">
		<div class="row mt-5 ms-5">
			<h1>QnA</h1>
			<br>
		</div>

		<!-- 카테고리 드롭다운 부분 -->
		<div class="btn-group" style="margin-left: 50px;">
			<button type="button"
				class="btn btn-outline-success dropdown-toggle mt-3"
				data-bs-toggle="dropdown" aria-expanded="false">카테고리 선택</button>
			<ul class="dropdown-menu">
				<li><a class="dropdown-item" href="#">입양공고</a></li>
				<li><a class="dropdown-item" href="#">입양일기</a></li>
				<li><a class="dropdown-item" href="#">굿즈</a></li>
				<li><a class="dropdown-item" href="#">사이트 이용</a></li>
			</ul>
		</div>

		<div class="row" style="float: right; margin-right:100px;">
			<input type="button" class="btn btn-outline-success mb-5" value="글쓰기"
				onclick="location.href='noticeWrite.do'"
				style="width: 100px;">
		</div>
		<br> <br> <br>
		<div class="row ms-4" >

			<br>

			<table class="table text-center table-hover table-striped">
				<thead class="table-dark">
					<tr>
						<th style="width: 10%;">번호</th>
						<th style="width: 10%;">카테고리</th>
						<th style="width: 60%;">제목</th>
						<th style="width: 20%;">날짜</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>2</td>
						<td>입양공고</td>
						<td><a href="myNoticeDetail.do">입양절차는 어떤 식으로 이루어지나요?</a></td>
						<td>2021-04-15</td>
					</tr>
					<tr>
						<td>1</td>
						<td>굿즈</td>
						<td><a href="myNoticeDetail.do">굿즈관련 문의 드립니다!</a></td>
						<td>2021-04-14</td>
					</tr>

				</tbody>
			</table>

		</div>
		</div>
		</div>
		
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<!-- footer -->
		<%@ include file="../includes/footer.jsp"%>