<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Thêm sản phẩm chi tiết</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <jsp:include page="linkCss.jsp" flush="true"/>
        <link rel="stylesheet" href="css/modals.css">
        <!-- forms CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/form/all-type-forms.css">        
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
                                        <h1>Cập nhật sản phẩm chi tiết</h1>
                                    </div>
                                </div>
                                <center><h4 style="color: red;">${fail}</h4></center>
                                <center><h4 style="color: greenyellow;">${success}</h4></center>
                                <div class="sparkline12-graph">
                                    <div class="basic-login-form-ad">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="all-form-element-inner">
                                                    <!-- form để insert -->
                                                    <spring:form action="excute-update-spct.htm" modelAttribute="newSPCT">
                                                        <!--Mã sản phẩm-->
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Mã sản phẩm</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" style="width: 50%;">
                                                                    <spring:input path="maSP" value="${sp.maSP.maSP}" class="form-control" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--Mã sản phẩm chi tiết-->
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Mã sản phẩm chi tiết</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" style="width: 50%;">
                                                                    <spring:input path="maSPCT" value="${sp.maSPCT}" class="form-control" />
                                                                </div>
                                                            </div>
                                                        </div>                                                        
                                                        <!--Màu-->
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Mã màu</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" style="width: 50%;">
                                                                    <div class="form-select-list">
                                                                        <spring:select path="maMauSac" class="form-control custom-select-value" name="account">
                                                                            <option value="${sp.maMauSac.maMauSac}" selected="true" hidden="true">${sp.maMauSac.tenMauSac}</option>
                                                                            <c:forEach items="${listMauSac}" var="mau">
                                                                                <spring:option value="${mau.maMauSac}">${mau.tenMauSac}</spring:option>
                                                                            </c:forEach>
                                                                        </spring:select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--Kích thước-->
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Mã kích thước</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" style="width: 50%;">
                                                                    <div class="form-select-list">
                                                                        <spring:select path="maKichThuoc" class="form-control custom-select-value" name="account">
                                                                            <option value="${sp.maKichThuoc.maKichThuoc}" selected="true" hidden="true">${sp.maKichThuoc.tenKichThuoc}</option>
                                                                            <c:forEach items="${listKichThuoc}" var="kichThuoc">
                                                                                <spring:option value="${kichThuoc.maKichThuoc}">${kichThuoc.tenKichThuoc}</spring:option>
                                                                            </c:forEach>
                                                                        </spring:select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Số lượng hiện có</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" style="width: 50%;">
                                                                    <spring:input type="number" path="soLuong" min="0" value="${sp.soLuong}" class="form-control" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Đơn giá</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" style="width: 50%;">
                                                                    <spring:input type="number" path="giaGoc" min="0" step="1000" value="${sp.giaGoc}" class="form-control" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Khuyến mãi (%)</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" style="width: 10%;">
                                                                    <spring:input type="number" path="giaKM" min="0" step="5" value="${sp.giaKM}" class="form-control" />
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