<%-- 
    Document   : them-san-pham-admin
    Created on : Nov 18, 2019, 8:33:05 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Thêm sản phẩm mới</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <jsp:include page="linkCss.jsp" flush="true"/>
        <link rel="stylesheet" href="/ClothingStore/jsp/admin/css/modals.css">
        <!-- forms CSS
                ============================================ -->
        <link rel="stylesheet" href="/ClothingStore/jsp/admin/css/form/all-type-forms.css">
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
                                        <h1>Thêm sản phẩm mới</h1>
                                    </div>
                                </div>
                                <div class="add-product">
                                    <a href="danh-sach-san-pham.htm">Danh sách sản phẩm</a>
                                </div>
                                <center><h4 style="color: red;">${fail}</h4></center>
                                <center><h4 style="color: greenyellow;">${succes}</h4></center>
                                <div class="sparkline12-graph">
                                    <div class="basic-login-form-ad">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="all-form-element-inner">
                                                    <!-- form để insert -->
                                                    <spring:form action="them-san-pham.htm" modelAttribute="sp" method="post" enctype="multipart/form-data">
                                                        <!--Mã danh mục-->
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Danh mục</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" style="width: 50%;">
                                                                    <div class="form-select-list">
                                                                        <spring:select path="maDM" class="form-control custom-select-value" name="account">
                                                                            <c:forEach items="${listDM}" var="dm">
                                                                                <option value="${dm.maDM}">${dm.tenDM}</option>
                                                                            </c:forEach>
                                                                        </spring:select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--Mã sản phẩm-->
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Mã sản phẩm</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" style="width: 50%;">
                                                                    <spring:input path="maSP" class="form-control" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--Tên sản phẩm-->
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Tên sản phẩm</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" style="width: 50%;">
                                                                    <spring:input path="tenSP" class="form-control" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--Mã NSX-->
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Nhà sản xuất</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" style="width: 50%;">
                                                                    <div class="form-select-list">
                                                                        <spring:select path="maNSX" class="form-control custom-select-value" name="account">
                                                                            <c:forEach items="${listNSX}" var="nsx">
                                                                                <option value="${nsx.maNSX}">${nsx.tenNSX}</option>
                                                                            </c:forEach>
                                                                        </spring:select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>                                                        
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Ảnh 1</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12" style="width: 50%;">
                                                                    <div class="file-upload-inner ts-forms">
                                                                        <div class="input prepend-small-btn">
                                                                            <div class="file-button">
                                                                                Browse
                                                                                <spring:input type="file" path="anh1" onchange="document.getElementById('prepend-small-btn1').value = this.value;"/>
                                                                            </div>
                                                                            <input type="text" id="prepend-small-btn1" placeholder="no file selected">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Ảnh 2</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12" style="width: 50%;">
                                                                    <div class="file-upload-inner ts-forms">
                                                                        <div class="input prepend-small-btn">
                                                                            <div class="file-button">
                                                                                Browse
                                                                                <spring:input type="file" path="anh2" onchange="document.getElementById('prepend-small-btn2').value = this.value;"/>
                                                                            </div>
                                                                            <input type="text" id="prepend-small-btn2" placeholder="no file selected">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Ảnh 3</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12" style="width: 50%;">
                                                                    <div class="file-upload-inner ts-forms">
                                                                        <div class="input prepend-small-btn">
                                                                            <div class="file-button">
                                                                                Browse
                                                                                <spring:input type="file" path="anh3" onchange="document.getElementById('prepend-small-btn3').value = this.value;"/>
                                                                            </div>
                                                                            <input type="text" id="prepend-small-btn3" placeholder="no file selected">
                                                                        </div>
                                                                    </div>
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
                                                                            <button class="btn btn-sm btn-primary login-submit-cs" type="submit">Thêm vào kho</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </spring:form>
                                                    <!--Kết thúc form-->
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
        <script src="/ClothingStore/jsp/admin/js/icheck/icheck.min.js"></script>
        <script src="/ClothingStore/jsp/admin/js/icheck/icheck-active.js"></script>
        <jsp:include page="linkJquery.jsp" flush="true"/>

    </body>

</html>
