<%-- 
    Document   : list-product-admin
    Created on : Nov 17, 2019, 10:17:04 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Danh sách sản phẩm</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <jsp:include page="linkCss.jsp" flush="true"/>
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
            <div class="product-status mg-tb-15">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="product-status-wrap">
                                <h4>Danh sách sản phẩm/${listSP[0].spct.maSP.tenSP}</h4>
                                <div class="add-product">
                                    <a href="them-san-pham.htm">Thêm sản phẩm</a>
                                </div>
                                <center><h4 style="color: red;">${fail}</h4></center>
                                <center><h4 style="color: greenyellow;">${success}</h4></center>
                                <table>
                                    <tr>
                                        <th>Mã SPCT</th>
                                        <th>Màu</th>
                                        <th>Size</th>
                                        <td>Giá bán</td>
                                        <th>Số lượng</th>
                                        <th>Đã bán</th>
                                        <th>Thu nhập</th>
                                        <th>Chi tiết/Sửa/Xoá</th>
                                    </tr>
                                    <c:forEach items="${listSP}" var="sp">
                                        <tr>
                                            <td>${sp.spct.maSPCT}</td>
                                            <td>${sp.spct.maMauSac.tenMauSac}</td>
                                            <td>${sp.spct.maKichThuoc.tenKichThuoc}</td>
                                            <td>${sp.giaBan}</td>
                                            <td>${sp.spct.soLuong}</td>
                                            <td>${sp.daBan}</td>
                                            <td>${sp.thuNhap}</td>
                                            <td>
                                                <a href="detail.htm?id=${sp.spct.maSPCT}"><button data-toggle="tooltip" title="Information" class="pd-setting-ed"><i class="fa fa-info-circle adminpro-informatio" aria-hidden="true"></i></button></a>
                                                <a href="cap-nhat-spct.htm?id=${sp.spct.maSPCT}"><button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button></a>
                                            </td>
                                        </tr>
                                    </c:forEach>                                    
                                </table>
                                <div class="custom-pagination">
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination">
                                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                        </ul>
                                    </nav>
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
