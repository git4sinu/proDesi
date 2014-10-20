<%--
  Created by IntelliJ IDEA.
  User: Sridhar
  Date: 5/8/14
  Time: 4:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/taglibs.jsp"%>
<link href="${ctx}/css/sb-admin.css" rel="stylesheet">
<div id="page-wrapper" >
    <div class="container">

        <div class="row">
            <div class="col-xs-12">
                <ol class="breadcrumb">
                    <li class="active"><i class="fa fa-dashboard"></i> Dashboard</li>
                </ol>

            </div>
        </div><!-- /.row -->

        <div class="row">
            <div class="col-lg-6">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-6">
                                <i class="glyphicon glyphicon-envelope"></i>
                            </div>
                            <div class="col-xs-6 text-right">
                                <p class="announcement-heading">${fn:length(model.bucketsList)}</p>
                                <p class="announcement-text">New Mentions!</p>
                            </div>
                        </div>
                    </div>
                    <a href="#">
                        <div class="panel-footer announcement-bottom">
                            <div class="row">
                                <div class="col-xs-6">
                                    View Mentions
                                </div>
                                <div class="col-xs-6 text-right">
                                    <i class="fa fa-arrow-circle-right"></i>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-6">
                                <i class="glyphicon glyphicon-sort-by-order-alt"></i>
                            </div>
                            <div class="col-xs-6 text-right">
                                <p class="announcement-heading">${fn:length(model.bucketsList)}</p>
                                <p class="announcement-text">New Orders!</p>
                            </div>
                        </div>
                    </div>
                    <a href="#">
                        <div class="panel-footer announcement-bottom">
                            <div class="row">
                                <div class="col-xs-6">
                                    Complete Orders
                                </div>
                                <div class="col-xs-6 text-right">
                                    <i class="fa fa-arrow-circle-right"></i>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div><!-- /.row -->



        <div class="row">

            <div class="col-lg-12" id="dash">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-money"></i> Recent Transactions</h3>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped tablesorter">
                                <thead>
                                <tr>
                                    <th>Capacity(Kg/Hour)<i class="fa fa-sort"></i></th>
                                    <th>Density(KG/CU.M) <i class="fa fa-sort"></i></th>
                                    <th>Volume(CU.M)<i class="fa fa-sort"></i></th>
                                    <th>Pitch(M)<i class="fa fa-sort"></i></th>
                                    <th>Date<i class="fa fa-sort"></i></th>
                                    <th><i class="glyphicon glyphicon-download-alt"></i><i class="fa fa-sort"></i></th>
                                </tr>
                                </thead>
                                <c:if test="${!empty model.bucketsList}">
                                <tbody>
                                    <c:forEach var="bucket" items="${model.bucketsList}">
                                    <tr>
                                        <td>${bucket.capacity}</td>
                                        <td>${bucket.density}</td>
                                        <td>${bucket.volume}</td>
                                        <td>${bucket.pitch}</td>
                                        <td><fmt:formatDate type="date" value="${bucket.dateCreated}"/></td>
                                        <td><a href="${propath}/user/pdf/${bucket.id}" target="_blank">PDF</a></td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                                </c:if>
                            </table>
                        </div>
                        <div class="text-right">
                            <a href="#">View All Transactions <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- /.row -->
    </div>
</div><!-- /#page-wrapper -->

<!-- wrapper-ends -->



