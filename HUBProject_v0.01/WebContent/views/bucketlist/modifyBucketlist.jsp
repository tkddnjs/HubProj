<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Modal -->
<div class="modal fade" id="modifyBucketlistModal" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">버킷리스트수정</h4>
			</div>
   			<div class="modal-body">
				<form id="modifyBucketlistForm" action="${pageContext.request.contextPath}/bucketlist/modify.do" class="form-horizontal form-label-left bucketlistForm" method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-3 col-xs-12" for="title">제목<span>*</span></label>
						<div class="col-md-6 col-sm-6 col-xs-8">
							<input type="text" id="title" name="title" class="form-control col-md-7 col-xs-12">
						</div>
						<p title="titleCheckResult"></p>
					</div>
					<div class="form-group">
						<div>
							<label class="control-label col-md-2 col-sm-3 col-xs-12" for="progress">진행도<span>*</span></label>
							<div class="col-md-2 col-sm-3 col-xs-3">
								<input id="progress" name="progress" class="knob" data-width="90" data-height="120" data-angleOffset=90 data-linecap=round
									data-fgColor="#26B99A" data-displayPrevious=true>
							</div>
						</div>
						<div style="margin-right:30%;">
							<div>
								<label class="control-label col-md-2 col-sm-3 col-xs-12" for="lock">잠금</label>
								<div class="col-md-3 col-sm-3 col-xs-3">
									<div style="vertical-align: middle;">
										<input type="radio" id="public" name="lock" value="${true }"><b>공개</b>
										<input type="radio" id="private" name="lock" value="${false }"><b>비공개</b>
									</div>
									<div class="form-group"></div>
								</div>
							</div>
							<div>
								<label class="control-label col-md-2 col-sm-3 col-xs-12" for="goal">목표기간<span>*</span></label>
								<div class="col-md-3 col-sm-3 col-xs-3">
									<input type="text" id="goal" name="goal" class="form-control col-md-7 col-xs-12">
									<p title="goalCheckResult"></p>
								</div>
							</div>
							<div>
								<label class="control-label col-md-2 col-sm-3 col-xs-12" for="star">중요도</label>
								<div class="col-md-3 col-sm-3 col-xs-3">
									<input type="hidden" id="star" name="star">
									<div class="starrr changeStar" style="padding-top: 5%;" data-rating="0"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-3 col-xs-12">연결고리<span>*</span></label>
						<div class="col-md-6 col-sm-6 col-xs-8">
							<input type="text" id="mbtags" name="connChains" class="tags form-control" />
						</div>
						<p title="connChainResult"></p>
					</div>
					<div class="form-group"></div>
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-3 col-xs-12" for="sos">SOS</label>
						<div class="col-md-6 col-sm-6 col-xs-8">
							<textarea class="form-control" rows="3" id="sos" name="sos"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-3 col-xs-12" for="memo">메모</label>
						<div class="col-md-6 col-sm-6 col-xs-8">
							<textarea class="form-control" rows="12" id="memo" name="memo"></textarea>
						</div>
					</div>
					<div class="ln_solid"></div>
					<div class="form-group">
						<div class="col-md-6 col-sm-6 col-xs-8 col-md-offset-4 col-sm-offset-4 col-xs-offset-4">
							<input type="hidden" id="userId" name="userId">
							<input type="hidden" id="bucketlistId" name="bucketlistId">
							<button type="submit" class="btn btn-success">수정</button>
							<button type="button" class="btn btn-primary">취소</button>
						</div>
					</div>
				</form>
			</div>
  		</div>
	</div>
</div>