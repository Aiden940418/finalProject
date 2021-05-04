<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style type="text/css">
</style>
<!-- header -->
<%@ include file="../includes/header.jsp"%>
<!-- leftmenubar -->
<%@ include file="../includes/admin_leftMenuBar.jsp"%>
<!-- page -->
<div class="contentDiv">

	<div class="container">

		<div class="row">
			<!-- title -->
			<div class="row my-4" style="text-align: center;">
				<h1>QnA 등록</h1>
			</div>

			<!-- form -->
			<div style="margin: auto; text-align: center;">
				<form action="adminAWriteRes.do" style="display: inline-block;">
				<input type="hidden" name="qno" value="${answerQno}">  
					<table>
						<tr>
							<th><button type="button"
									class="btn btn-outline-success mx-2 my-2"
									style="width: 130px; pointer-events: none;">카테고리 선택</button></th>
							<td style="text-align: left;">
								<!-- 카테고리 선택 드롭박스 -->
								<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
									<input type="radio" class="btn-check" name="qctgy" value="입양공고"
										id="btnradio1" autocomplete="off" checked>
										<label class="btn btn-outline-success" for="btnradio1">입양공고</label>
	
									<input type="radio" class="btn-check" name="qctgy" value="입양일기"
										id="btnradio2" autocomplete="off"> 
										<label class="btn btn-outline-success" for="btnradio2">입양일기</label>
	
									<input type="radio" class="btn-check" name="qctgy" value="굿즈"
										id="btnradio3" autocomplete="off"> 
										<label class="btn btn-outline-success" for="btnradio3">굿즈</label>
										
									<input type="radio" class="btn-check" name="qctgy" value="사이트이용"
										id="btnradio4" autocomplete="off"> 
										<label class="btn btn-outline-success" for="btnradio4">사이트 이용</label>
								</div>
							</td>
						</tr>
						<tr>
							<th><button type="button" class="btn btn-outline-success mx-3 my-1"
									style="width: 130px; pointer-events: none;">제목</button></th>
							<td><input type="text" class="form-control my-1" id="" name="qtitle"
								size="100"></td>
						</tr>

						<tr>
							<th style="vertical-align: top;"><button type="button"
									class="btn btn-outline-success	 mx-3 my-1"
									style="width: 130px; pointer-events: none;">내용</button></th>
							<td><textarea rows="20" cols="100" class="form-control my-1"
									id="" name="qcontent"></textarea></td>
						</tr>

						<tr>
							<th><button type="button" class="btn btn-outline-success mx-3 my-1"
									style="width: 130px; pointer-events: none;">이미지</button></th>
							<td><input type="text" class="form-control my-1" id=""
								size="100" placeholder="이미지를 등록해주세요."></td>
						</tr>

						<tr>
							<td colspan="2"><input type="button" value="취소"
								class="btn btn-outline-success my-1" onclick="location.href='myQnaList.do'"
								style="width: 90px; float: right;"> 
								<input type="submit"
								value="작성" class="btn btn-outline-success mx-3 my-1"
								style="width: 90px; float: right;"></td>

						</tr>
					</table>
				</form>
			</div>
		</div>
		<!-- footer -->
		<%@ include file="../includes/footer.jsp"%>
	</div>

</div>
</html>