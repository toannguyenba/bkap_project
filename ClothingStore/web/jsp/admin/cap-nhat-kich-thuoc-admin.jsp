<%-- 
    Document   : them-danh-muc-admin
    Created on : Nov 18, 2019, 9:18:04 PM
    Author     : Admin
--%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Thêm kích thước</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <jsp:include page="linkCss.jsp" flush="true"/>
        <style>
            .footer-copyright-area{
                transform: translate(0px,300px);
            }
        </style>
    </head>

    <body>
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->

        <jsp:include page="menu.jsp" flush="true"/>
        <!-- Start Welcome area -->
        <div class="all-content-wrapper">
            <jsp:include page="header.jsp" flush="true"/>

            <!--
                PAGE CONTENT  
            -->
            <div class="basic-form-area mg-tb-15">
                <div class="container-fluid">   
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="sparkline12-list">
                                <div class="sparkline12-hd">
                                    <div class="main-sparkline12-hd">
                                        <h1>Cập nhật kích thước</h1>
                                    </div>
                                </div>                                
                                <div class="sparkline12-graph">
                                    <div class="basic-login-form-ad">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="all-form-element-inner">
                                                    <!-- form để insert -->
                                                    <spring:form action="cap-nhat-kich-thuoc.htm" modelAttribute="kt">
                                                        <!--Mã kích thước-->
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Mã kích thước</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" style="width: 50%;">
                                                                    <spring:input path="maKichThuoc" value="${kt.maKichThuoc}" readonly="true" class="form-control" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--Tên kích thước-->
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Tên kích thước</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" style="width: 50%;">
                                                                    <spring:input path="tenKichThuoc" value="${kt.tenKichThuoc}" class="form-control" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--Ghi chú-->
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Ghi chú</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" style="width: 50%;">
                                                                    <spring:textarea path="ghiChu" value="${kt.ghiChu}" class="form-control"></spring:textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group-inner">
                                                                <div class="login-btn-inner">
                                                                    <div class="row">
                                                                        <div class="col-lg-3"></div>
                                                                        <div class="col-lg-9">
                                                                            <div class="login-horizental cancel-wp pull-left">
                                                                                <button class="btn btn-white" type="reset">Làm mới</button>
                                                                                <button class="btn btn-sm btn-primary login-submit-cs" type="submit">Cập nhật</button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                    </spring:form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            

            <jsp:include page="footer.jsp" flush="true"/>
        </div>

        <!-- jquery
                    ============================================ -->
        <jsp:include page="linkJquery.jsp" flush="true"/>

    </body>

</html>
