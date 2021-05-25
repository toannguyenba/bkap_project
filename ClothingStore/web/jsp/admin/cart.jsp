<%-- 
    Document   : cart
    Created on : Nov 10, 2019, 3:39:23 PM
    Author     : bn
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Cart | E-Shopper</title>
        <jsp:include page="linkCSS.jsp" flush="true"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script>
            $(document).ready(function() {
				$(document).ready(function() {
				$('button.down').click(function() {
					var t = $(this).attr('class');
					t = t.slice(12,t.length);
					var num = $('.num' + '.' + t).val();
					num = Number(num);
					num = num - 1;
					$('.num'+'.'+t).val(num);
					var don = $('.don' + '.' +t).val();
					var tong;
					tong = don * num;
					$('.tong'+'.'+t).val(tong);
				})
				$('button.up').click(function() {
					var t = $(this).attr('class');
					t = t.slice(10,t.length);
					var num = $('.num' + '.' + t).val();
					num = Number(num);
					num = num + 1;
					$('.num'+'.'+t).val(num);
					var don = $('.don' + '.' +t).val();
					var tong;
					tong = don * num;
					$('.tong'+'.'+t).val(tong);
				})
			})
			})
        </script>
        <style>
            td{
                text-align: center;
            }
        </style>
    </head><!--/head-->

    <body>
        <jsp:include page="header.jsp" flush="true"/>

        <section id="cart_items">
            <div class="container">
                <div class="breadcrumbs">
                    <ol class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li class="active">Shopping Cart</li>
                    </ol>
                </div>
                <div class="table-responsive cart_info">
                    <table class="table table-condensed">
                        <thead>
                            <tr class="cart_menu">
                                <td class="image">Ảnh</td>
                                <td class="description">Tên sản phẩm</td>
                                <td class="description">Phân loại sản phẩm</td>
                                <td class="price">Giá</td>
                                <td class="quantity">Số lượng</td>
                                <td class="total">Tổng</td>
                                <td></td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${gioHang}" var="sp">
                                <tr>
                                    <td class="cart_product">
                                        <a href=""><img style="width: 110px;height: 110px" src="/ClothingStore/resources/images/san-pham/${sp.maSP.anh1}" alt=""></a>
                                    </td>
                                    <td class="cart_description">
                                        <h4>${sp.maSP.tenSP}</h4>

                                    </td>
                                    <td class="cart_description">
                                        ${sp.maKichThuoc.tenKichThuoc}<br>
                                        ${sp.maMauSac.tenMauSac}
                                    </td>
                                    <td class="cart_price">
                                        <input class="don ${sp.maSPCT}" style="width: 70px;border: none;height: 35px" value="${sp.giaGoc}">
                                    </td>
                                    <td class="cart_quantity">
                                        <div class="cart_quantity_button">
                                            <button class="down button ${sp.maSPCT}"> - </button>
                                            <input class="num ${sp.maSPCT}" style="border: none;width: 50px;height: 35px;text-align: center" type="text" name="quantity" value="1" autocomplete="off" size="2">
                                            <button class="up button ${sp.maSPCT}"> + </button>
                                        </div>
                                    </td>
                                    <td class="cart_total">
                                        <input class="tong ${sp.maSPCT}" style="width: 70px;border: none;height: 35px;" value="${sp.giaGoc}">
                                    </td>
                                    <td class="cart_delete">
                                        <a class="cart_quantity_delete" href="xoa-sp.htm?id=${sp.maSPCT}"><i class="fa fa-times"></i></a>
                                    </td>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </section> <!--/#cart_items-->
    <center><a href="#login-box" class="login-window button">Mua hàng</a></center>
    <div id="login-box" class="login">
        <p class="login_title"> Đơn hàng</p>
        <a href="#" class="close"><img src="close.png" class="img-close" title="Close Window" alt="Close" /></a>
        <form method="post" class="login-content" action="#">
            <table class="table table-condensed">
                        <thead>
                            <tr class="cart_menu">
                                <td class="image">Ảnh</td>
                                <td class="description">Tên sản phẩm</td>
                                <td class="description">Phân loại sản phẩm</td>
                                <td class="price">Giá</td>
                                <td class="quantity">Số lượng</td>
                                <td class="total">Tổng</td>
                                <td></td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${gioHang}" var="sp">
                                <tr>
                                    <td class="cart_product">
                                        <a href=""><img style="width: 110px;height: 110px" src="/ClothingStore/resources/images/san-pham/${sp.maSP.anh1}" alt=""></a>
                                    </td>
                                    <td class="cart_description">
                                        <h4>${sp.maSP.tenSP}</h4>

                                    </td>
                                    <td class="cart_description">
                                        ${sp.maKichThuoc.tenKichThuoc}<br>
                                        ${sp.maMauSac.tenMauSac}
                                    </td>
                                    <td class="cart_price">
                                        <p>${sp.giaGoc}</p>
                                    </td>
                                    <td class="cart_quantity">
                                        <div class="cart_quantity_button">
                                            <!--                                            <a class="cart_quantity_up" href=""> - </a>-->
                                            1
                                            <!--                                            <a class="cart_quantity_down" href=""> + </a>-->
                                        </div>
                                    </td>
                                    <td class="cart_total">
                                        <p class="cart_total_price">$59</p>
                                    </td>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
            <center><button class="button submit-button" type="button">Đặt hàng</button></center>       
        </form>
    </div>
    <br>

    <jsp:include flush="true" page="footer.jsp"/>



    <jsp:include page="linkJS.jsp" flush="true"/>
    <script type="text/javascript">
        $(document).ready(function () {
            $('a.login-window').click(function () {

                //lấy giá trị thuộc tính href - chính là phần tử "#login-box"
                var loginBox = $(this).attr('href');

                //cho hiện hộp đăng nhập trong 300ms
                $(loginBox).fadeIn("slow");

                // thêm phần tử id="over" vào sau body
                $('body').append('<div id="over"></div>');
                $('#over').fadeIn(300);

                return false;
            });

            // khi click đóng hộp thoại
            $(document).on('click', "a.close, #over", function () {
                $('#over, .login').fadeOut(300, function () {
                    $('#over').remove();
                });
                return false;
            });

        });

    </script>
</body>
</html>
