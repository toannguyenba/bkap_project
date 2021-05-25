<%-- 
    Document   : header
    Created on : Nov 5, 2019, 8:43:21 PM
    Author     : bn
--%>
<%@page import="entity.Account"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<header id="header"><!--header-->
    <div class="header_top"><!--header_top-->
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="contactinfo">
                        <ul class="nav nav-pills">
                            <li><a href="#"><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
                            <li><a href="#"><i class="fa fa-envelope"></i> info@domain.com</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="social-icons pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header_top-->

    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-md-4 clearfix">
                    <div class="logo pull-left">
                        <a href="index.htm"><img src="/ClothingStore/resources/images/home/logo.png" alt="" /></a>
                    </div>

                </div>
                <div class="col-md-8 clearfix">
                    <div class="shop-menu clearfix pull-right">
                        <ul class="nav navbar-nav">
                            <li><a class="dropdown-item" href="user-profile.htm"><i class="fa fa-user"></i> Chào ${tk.tenDN}</a></li>
                            <li><a><i class="fa fa-star"></i> Thích</a></li>
                            <li><a href="checkout.htm"><i class="fa fa-crosshairs"></i> Thanh toán</a></li>
                            <li><a href="gio-hang.htm"><i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>
                                <% HttpSession _session = request.getSession();
                                    Account a = (Account) _session.getAttribute("tk");
                                    if (a == null) {
                                %>
                            <li><a href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-lock"></i> Đăng nhập</a></li>
                                <% } else { %>
                            <li><a href="logout.htm"><i class="fa fa-lock"></i> Đăng xuất</a></li>
                                <% }%>
                            <li><a href="#" data-toggle="modal" data-target="#myModal1"><i class="fa fa-plus-square-o"></i>Đăng ký</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->

    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="mainmenu pull-left">
                        <ul class="nav navbar-nav collapse navbar-collapse">
                            <li><a href="index.htm" class="active">Trang chủ</a></li>
                            <li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    <li><a href="shop.htm?id=">Sản Phẩm</a></li>
                                    <li><a href="product-details.htm">Chi tiết sản phẩm</a></li> 
                                    <li><a href="checkout.htm">Thanh toán</a></li> 
                                    <li><a href="cart.htm">Giỏ hàng</a></li> 
                                    <li><a href="login.htm">Đăng nhập</a></li> 
                                </ul>
                            </li> 
                            <!--                            <li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>
                                                            <ul role="menu" class="sub-menu">
                                                                <li><a href="blog.htm">Blog List</a></li>
                                                                <li><a href="blog-single.htm">Blog Single</a></li>
                                                            </ul>
                                                        </li> -->
                            <li><a href="shopSP.htm">404</a></li>
                            <li><a href="list.htm">List</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class=" pull-right">
                        <!--                        <form action="tim-kiem-theo-ten.htm" class="searchform">
                                                    <input style="float: left;" type="text" name="name" placeholder="Search"/><input style="float: left;" type="submit" value="Search"/>
                                                </form>-->
                        <form action="tim-kiem-theo-ten.htm" class="searchform">
                            <input type="text" name="name" placeholder="Tìm kiếm" style="background-color: #E8E8E8" />
                            <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header-->

<div class="container">
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" style="text-align: center; font-size: 24px; color: #fe980f; font-weight: bolder">E-Shoper</h4>
                </div>
                <div class="modal-body">
                    <div class="login-form"><!--login form-->
                        <h2>Đăng nhập</h2>
                        <spring:form action="login.htm" modelAttribute="acc" method="post">
                            <spring:input path="email" type="email" placeholder="Email"/>
                            <spring:input path="matKhau" type="password" placeholder="Password"/>
                            <div style="text-align: center;">
                                <div style="display: inline-block;">
                                    <button style="width: 130px; display: inline;" type="submit">Đăng nhập</button>
                                    <button style="width: 130px; display: inline;" data-toggle="modal" data-target="#myModal1">Đăng ký</button>
                                </div>
                            </div>
                        </spring:form>
                    </div><!--/login form-->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>
</div>

<div class="container">
    <div class="modal fade" id="myModal1" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" style="text-align: center; font-size: 24px; color: #fe980f; font-weight: bolder">E-Shoper</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group"><!--login form-->
                        <h2>Đăng ký</h2>
                        <spring:form action="register.htm" modelAttribute="acc" method="post">
                            <div class="form-group">
                                <label for="tendn">Tên đăng nhập</label>
                                <spring:input path="tenDN" type="text" class="form-control" id="tendn" placeholder="Tên đăng nhập"/>
                            </div>
                            <div class="form-group">
                                <label for="password">Mật khẩu</label>
                                <spring:password path="matKhau" class="form-control" id="password" placeholder="Mật khẩu"/>
                            </div>
                            <div class="form-group">
                                <label for="name">Họ và tên</label>
                                <spring:input path="hoTen" type="text" class="form-control" id="name" placeholder="Họ và tên"/>
                            </div>
                            <div class="form-check form-check-inline">
                                <label for="gender">Giới tính&emsp;</label>
                                <spring:radiobutton path="gioiTinh" value="true" class="form-check-input" name="gender" id="gender"/>Nam&emsp;
                                <spring:radiobutton path="gioiTinh" value="false" class="form-check-input" name="gender" id="gender"/>Nữ
                            </div>
                            <div class="form-group">
                                <label for="birthday">Ngày sinh</label>
                                <spring:input path="ngaySinh" type="date" class="form-control" id="birthday"/>
                            </div>
                            <div class="form-group">
                                <label for="address">Quê quán</label>
                                <spring:input path="queQuan" type="text" class="form-control" id="address" placeholder="Address"/>
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <spring:input path="email" type="email" class="form-control" id="email" placeholder="Email"/>
                            </div>
                            <div class="form-group">
                                <label for="phonenumber">Số điện thoại</label>
                                <spring:input  path="sdt" type="text" class="form-control" id="phonenumber" placeholder="SĐT" onkeypress='validate(event)'/>
                            </div>
                            <center>
                                <button class="btn btn-primary" type="submit">Đăng ký</button>
                                <button class="btn btn-primary" type="reset">Làm mới</button>
                            </center>
                        </spring:form>
                    </div><!--/login form-->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>
</div>
<script>
    function validate(evt) {
        var theEvent = evt || window.event;

        // Handle paste
        if (theEvent.type === 'paste') {
            key = event.clipboardData.getData('text/plain');
        } else {
            // Handle key press
            var key = theEvent.keyCode || theEvent.which;
            key = String.fromCharCode(key);
        }
        var regex = /[0-9]/;
        if (!regex.test(key)) {
            theEvent.returnValue = false;
            if (theEvent.preventDefault)
                theEvent.preventDefault();
        }
    }
</script>