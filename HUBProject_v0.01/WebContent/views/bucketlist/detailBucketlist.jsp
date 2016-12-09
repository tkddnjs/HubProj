<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
  <head>
    <title> 버킷리스트상세 </title>
    
  <%@ include file="/views/bucketlist/modifyBucketlist.jsp" %>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
      
            <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="images/img.jpg" alt="">John Doe
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> Profile</a></li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">Help</a></li>
                    <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

                <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">6</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
      
        <!-- page content -->
        <div style="padding: 10px 20px 0;" role="main">
          <div class="">
            <div class="page-title">      
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-8 col-sm-12 col-xs-12 col-md-offset-2">
                <div class="x_panel">
                  <div class="x_title">
                    <h2><b>버킷리스트상세</b></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <div class="form-horizontal form-label-left">
                      <div class="form-group">
                        <label class="control-label col-md-2 col-sm-3 col-xs-12" for="title">Title</label>
                        <div class="col-md-3 col-sm-4 col-xs-5">
                          <label id="title" class="control-label">${bucketlist.title }</label>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-2 col-sm-3 col-xs-12" for="lock">Lock</label>
                        <div class="col-md-3 col-sm-4 col-xs-5">
                          <c:choose>
                          	<c:when test="${bucketlist.lock }">
                          		<label id="lock" class="control-label">비공개</label>
                          	</c:when>
                          	<c:otherwise>
                          		<label id="lock" class="control-label">공개</label>
                          	</c:otherwise>
                          </c:choose>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-2 col-sm-3 col-xs-12" for="goal">Goal</label>
                        <div class="col-md-3 col-sm-4 col-xs-5">
                          <label id="goal" class="control-label">${bucketlist.goal }</label>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-2 col-sm-3 col-xs-12" for="star">Star</label>
                        <div class="col-md-3 col-sm-4 col-xs-5">
                          <label id="star" class="control-label">${bucketlist.star }</label>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-2 col-sm-3 col-xs-12">ConnChains</label>
                        <div class="col-md-6 col-sm-6 col-xs-8" id="connForm">
                          <c:forEach items="${bucketlist.connChains }" var="connChain">
                          	<label class="control-label">${connChain } </label>
                          </c:forEach>
                        </div>
                      </div>
                      <div class="form-group"></div>
                      <div class="form-group">
                        <label class="control-label col-md-2 col-sm-3 col-xs-12">SOS</label>
                        <div class="col-md-6 col-sm-6 col-xs-8">
                          <textarea disabled="disabled" class="form-control" rows="3" name="sos">${bucketlist.sos }</textarea>
                        </div>
                      </div>
                      <div class="form-group"></div>
                      <div class="form-group">
                        <label class="control-label col-md-2 col-sm-3 col-xs-12">Memo</label>
                        <div class="col-md-6 col-sm-6 col-xs-8">
                          <textarea disabled="disabled" class="form-control" rows="3" name="memo">${bucketlist.memo }</textarea>
                        </div>
                      </div>
                      
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-8 col-md-offset-4 col-sm-offset-4 col-xs-offset-4">
                          <a class="btn btn-primary" href="${pageContext.request.contextPath }/user/remove.do?bucketlistId=${bucketlist.bucketlistId}">탈퇴</a>
                          <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modifyBucketlistModal">수정</button>
                        </div>
                      </div>
                     </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->
      </div>
    </div>
  </body>
</html>
