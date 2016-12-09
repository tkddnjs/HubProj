<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
	.ui-autocomplete{
		z-index: 99999;
	}
</style>

<!-- Modal -->
<div class="modal fade" id="registerUserModal" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">회원가입</h4>
			</div>
   			<div class="modal-body">
				<form id="demo-form2" action="${pageContext.request.contextPath}/user/register.do" data-parsley-validate class="form-horizontal form-label-left" method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-3 col-xs-12" for="userId">ID <span class="required">*</span></label>
						<div class="col-md-2 col-sm-3 col-xs-3">
							<input type="text" id="userId" name="userId" required="required" class="form-control col-md-7 col-xs-12">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-3 col-xs-12" for="password">Password <span class="required">*</span></label>
							<div class="col-md-2 col-sm-3 col-xs-3">
								<input type="password" id="pw" name="pw" required="required" class="form-control col-md-7 col-xs-12">
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-3 col-xs-12" for="password_check">Password Check <span class="required">*</span></label>
						<div class="col-md-2 col-sm-3 col-xs-3">
							<input type="password" id="pw_check" class="form-control col-md-7 col-xs-12">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-3 col-xs-12" for="email">Email <span class="required">*</span></label>
						<div class="col-md-3 col-sm-4 col-xs-5">
							<input id="email" class="form-control col-md-7 col-xs-12" type="text" name="email">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-3 col-xs-12">ConnChains <span class="required">*</span></label>
						<div class="col-md-6 col-sm-6 col-xs-8">
							<input id="rutags" type="text" name="connChains" class="tags form-control" value="social, adverts, sales" />
						</div>
					</div>
					<div class="form-group"></div>
					<div class="form-group">
						<label for="picture" class="control-label col-md-2 col-sm-3 col-xs-12">Picture</label>
						<div class="col-md-6 col-sm-6 col-xs-8">
							<button type="button" id="pictureBtn" class="btn btn-primary">사진입력</button>
							<input type="file" name="image" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
						</div>
					</div>  
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-3 col-xs-12">Introduce</label>
						<div class="col-md-6 col-sm-6 col-xs-8">
							<textarea class="form-control" rows="3" name="introduce" placeholder='자기 소개 입력'></textarea>
						</div>
					</div>
					<div class="ln_solid"></div>
					<div class="form-group">
						<div class="col-md-6 col-sm-6 col-xs-8 col-md-offset-4 col-sm-offset-4 col-xs-offset-4">
							<button type="reset" class="btn btn-primary">Cancel</button>
							<button type="submit" class="btn btn-success">Submit</button>
						</div>
					</div>
				</form>
			</div>
  		</div>
	</div>
</div>

<script>
	$("form").submit(function() {
		var tags = $("#rutags").val();
		tags = tags.split(",");
		$("#rutags").val(tag);
	});
</script>