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
                                <td class="image">???nh</td>
                                <td class="description">T??n s???n ph???m</td>
                                <td class="description">Ph??n lo???i s???n ph???m</td>
                                <td class="price">Gi??</td>
                                <td class="quantity">S??? l?????ng</td>
                                <td class="total">T???ng</td>
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
    <center><a href="#login-box" class="login-window button">Mua h??ng</a></center>
    <div id="login-box" class="login">
        <p class="login_title"> ????n h??ng</p>
        <a href="#" class="close"><img src="close.png" class="img-close" title="Close Window" alt="Close" /></a>
        <form method="post" class="login-content" action="#">
            <table class="table table-condensed">
                        <thead>
                            <tr class="cart_menu">
                                <td class="image">???nh</td>
                                <td class="description">T??n s???n ph???m</td>
                                <td class="description">Ph??n lo???i s???n ph???m</td>
                                <td class="price">Gi??</td>
                                <td class="quantity">S??? l?????ng</td>
                                <td class="total">T???ng</td>
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
            <center><button class="button submit-button" type="button">?????t h??ng</button></center>       
        </form>
    </div>
    <br>

    <jsp:include flush="true" page="footer.jsp"/>



    <jsp:include page="linkJS.jsp" flush="true"/>
    <script type="text/javascript">
        $(document).ready(function () {
            $('a.login-window').click(function () {

                //l???y gi?? tr??? thu???c t??nh href - ch??nh l?? ph???n t??? "#login-box"
                var loginBox = $(this).attr('href');

                //cho hi???n h???p ????ng nh???p trong 300ms
                $(loginBox).fadeIn("slow");

                // th??m ph???n t??? id="over" v??o sau body
                $('body').append('<div id="over"></div>');
                $('#over').fadeIn(300);

                return false;
            });

            // khi click ????ng h???p tho???i
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
