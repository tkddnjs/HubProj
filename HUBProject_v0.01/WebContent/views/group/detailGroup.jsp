<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Modal -->
<div class="modal fade" id="detailGroupModal" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">모임방상세</h4>
			</div>
			<div class="modal-body">
				<div class="form-horizontal form-label-left groupForm">
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-3 col-xs-12" for="groupName">모임 이름 <span class="required">*</span></label>
						<div class="col-md-6 col-sm-6 col-xs-8">
							<label class="form-control col-md-7 col-xs-12" id="groupName"></label>
						</div>
					</div>
					<div class="form-group">
						<div>
							<label class="control-label col-md-2 col-sm-3 col-xs-12" for="managerId">모임 개설자 <span class="required">*</span></label>
							<div class="col-md-6 col-sm-6 col-xs-8">
								<label class="form-control col-md-7 col-xs-12" id="managerId"></label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div>
							<label class="control-label col-md-2 col-sm-3 col-xs-12" for="lastDay">모집 마감일 <span class="required">*</span></label>
							<div class="col-md-6 col-sm-6 col-xs-8">
								<label class="form-control col-md-7 col-xs-12" id="lastDay"></label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div>
							<label class="control-label col-md-2 col-sm-3 col-xs-12" for="local">지역 <span class="required">*</span></label>
							<div class="col-md-6 col-sm-6 col-xs-8">
								<label class="form-control col-md-7 col-xs-12" id="local"></label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div>
							<label class="control-label col-md-2 col-sm-3 col-xs-12" for="maxPeople">최대인원
									<span><small>(현재인원 : <label id="joinPeople"></label>)</small></span></label>
							<div class="col-md-6 col-sm-6 col-xs-8">
								<label class="form-control col-md-7 col-xs-12" id="maxPeople"></label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-3 col-xs-12">연결고리
							<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 col-xs-8">
							<label id="dgtags" class="tags form-control"></label>
						</div>
					</div>
					<div class="form-group"></div>
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-3 col-xs-12" for="introduce">모임방 소개</label>
						<div class="col-md-6 col-sm-6 col-xs-8">
							<label id="introduce" class="form-control"></label>
						</div>
					</div>
					<div class="ln_solid"></div>
					<div class="form-group">
						<div class="col-md-6 col-sm-6 col-xs-8 col-md-offset-4 col-sm-offset-4 col-xs-offset-4">
							<div id="myGroupBtns">
								<input type="hidden" id="no">
								<form action="${pageContext.request.contextPath}/group/remove.do" method="get">
									<input type="hidden" name="groupId" value="">
									<button id="modifyGroupBtn" type="button" data-toggle="modal" data-target="#modifyGroupModal" class="btn btn-default">수정</button>
									<button type="button" data-toggle="modal" data-target="#deleteGroupModal" class="btn btn-primary" >해체</button>
								</form>
							</div>
							
							<div id="joinedGroupBtn">
								<form action="${pageContext.request.contextPath}/group/exit.do" method="get">
									<input type="hidden" name="groupId" value="">
									<button type="submit" class="btn btn-primary">탈퇴</button>
								</form>
							</div>
							
							<div id="unjoinedGroupBtn">
								<form action="${pageContext.request.contextPath}/group/join.do" method="get">
									<input type="hidden" name="groupId" value="">
									<input type="hidden" name="maxPeople" value="">
									<input type="hidden" name="joinPeople" value="">
									<button type="submit" class="btn btn-primary">가입</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Modal -->
<div class="modal fade" id="deleteGroupModal" role="dialog" style="margin-top: 10%;">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">모임방해체</h4>
			</div>
   			<div class="modal-body" style="text-align: center;">
				<form action="${pageContext.request.contextPath}/group/remove.do" id="removeGroupForm" method="get">
					<h4>해체하시겠습니까?</h4><br>
					<button type="submit" class="btn btn-success" name="groupId">확인</button>
					<button type="button" class="btn btn-primary">취소</button>
				</form>
			</div>
  		</div>
	</div>
</div>