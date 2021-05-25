<%-- 
    Document   : account-list-admin
    Created on : Nov 17, 2019, 10:42:52 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Quản lý tài khoản</title>
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
                                <h4>Danh sách tài khoản</h4>
                                <table>
                                    <tr>
                                        <th>Họ tên</th>
                                        <th>Tên đăng nhập</th>
                                        <th>Email</th>
                                        <th>Trạng thái</th>
                                        <th>Chi tiết/Xoá</th>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Bá Toàn</td>
                                        <td>toannguyenba</td>
                                        <td>ngbatoan22@gmail.com</td>
                                        <td>
                                            <button class="pd-setting">Active</button>
                                        </td>
                                        <td>
                                            <button data-toggle="tooltip" title="Detail" class="pd-setting-ed"><i class="fa fa-user adminpro-avatar" aria-hidden="true"></i></button>
                                            <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Bá Toàn</td>
                                        <td>toannguyenba</td>
                                        <td>ngbatoan22@gmail.com</td>
                                        <td>
                                            <button class="pd-setting">Active</button>
                                        </td>
                                        <td>
                                            <button data-toggle="tooltip" title="Detail" class="pd-setting-ed"><i class="fa fa-user adminpro-avatar" aria-hidden="true"></i></button>
                                            <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Bá Toàn</td>
                                        <td>toannguyenba</td>
                                        <td>ngbatoan22@gmail.com</td>
                                        <td>
                                            <button class="pd-setting">Active</button>
                                        </td>
                                        <td>
                                            <button data-toggle="tooltip" title="Detail" class="pd-setting-ed"><i class="fa fa-user adminpro-avatar" aria-hidden="true"></i></button>
                                            <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Bá Toàn</td>
                                        <td>toannguyenba</td>
                                        <td>ngbatoan22@gmail.com</td>
                                        <td>
                                            <button class="pd-setting">Active</button>
                                        </td>
                                        <td>
                                            <button data-toggle="tooltip" title="Detail" class="pd-setting-ed"><i class="fa fa-user adminpro-avatar" aria-hidden="true"></i></button>
                                            <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Bá Toàn</td>
                                        <td>toannguyenba</td>
                                        <td>ngbatoan22@gmail.com</td>
                                        <td>
                                            <button class="pd-setting">Active</button>
                                        </td>
                                        <td>
                                            <button data-toggle="tooltip" title="Detail" class="pd-setting-ed"><i class="fa fa-user adminpro-avatar" aria-hidden="true"></i></button>
                                            <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Bá Toàn</td>
                                        <td>toannguyenba</td>
                                        <td>ngbatoan22@gmail.com</td>
                                        <td>
                                            <button class="pd-setting">Active</button>
                                        </td>
                                        <td>
                                            <button data-toggle="tooltip" title="Detail" class="pd-setting-ed"><i class="fa fa-user adminpro-avatar" aria-hidden="true"></i></button>
                                            <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                        </td>
                                    </tr>
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