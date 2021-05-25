<%-- 
    Document   : cart
    Created on : Nov 10, 2019, 3:39:23 PM
    Author     : bn
--%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
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
            $(document).ready(function () {
                $(document).ready(function () {
                    $('button.down').click(function () {
                        var t = $(this).attr('class');
                        t = t.slice(12, t.length);
                        var num = $('.num' + '.' + t).val();
                        num = Number(num);
                        if (num > 1) {
                            num = num - 1;
                        }
                        $('.num' + '.' + t).val(num);
                        var don = $('.don' + '.' + t).val();
                        var tong;
                        tong = don * num;
                        $('.tong' + '.' + t).val(tong);
                    })
                    $('button.up').click(function () {
                        var t = $(this).attr('class');
                        t = t.slice(10, t.length);
                        var num = $('.num' + '.' + t).val();
                        num = Number(num);
                        num = num + 1;
                        $('.num' + '.' + t).val(num);
                        var don = $('.don' + '.' + t).val();
                        var tong;
                        tong = don * num;
                        $('.tong' + '.' + t).val(tong);
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
                            <tr>
                                <td colspan="6" style="font: 16px Roboto,sans-serif; padding-top: 30px;"><center>${cartEmpty}</center></td>
                            </tr>
                            <spring:form modelAttribute="cartForm" action="checkout.htm">
                                <c:forEach items="${gioHang.cartLines}" var="sp" varStatus="varStatus">
                                    <spring:hidden path="cartLines[${varStatus.index}].maSPCT" value="${sp.maSPCT}"/>
                                    <tr>
                                        <td class="cart_product">
                                            <a href=""><img style="width: 110px;height: 110px" src="/ClothingStore/resources/images/san-pham/${sp.spct.maSP.anh1}" alt=""></a>
                                        </td>
                                        <td class="cart_description">
                                            <h4>${sp.spct.maSP.tenSP}</h4>
                                        </td>
                                        <td class="cart_description">
                                            ${sp.spct.maKichThuoc.tenKichThuoc}<br>
                                            ${sp.spct.maMauSac.tenMauSac}
                                        </td>
                                        <td class="cart_price">
                                            <input class="don ${sp.spct.maSPCT}" readonly="true" style="width: 70px;border: none;height: 35px" value="${sp.spct.giaGoc-sp.spct.giaGoc*sp.spct.giaKM/100}">
                                        </td>
                                        <td class="cart_quantity">
                                            <div class="cart_quantity_button">
                                                <button type="button" class="down button ${sp.spct.maSPCT}"> - </button>
                                                <spring:input type="number" path="cartLines[${varStatus.index}].soLuong" min="1" max="${sp.spct.soLuong}" readonly="true" class="num ${sp.spct.maSPCT}" style="border: none;width: 50px;height: 35px;text-align: center" name="quantity" value="${sp.soLuong}" autocomplete="off" size="2"/>
                                                <button type="button" class="up button ${sp.spct.maSPCT}"> + </button>
                                            </div>
                                        </td>
                                        <td class="cart_total">
                                            <input class="tong ${sp.spct.maSPCT}" style="width: 70px;border: none;height: 35px;" value="${(sp.spct.giaGoc-sp.spct.giaGoc*sp.spct.giaKM/100)*sp.soLuong}" readonly="true">
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
        <center><input type="submit" class="login-window button" style="background-color: #FE980F" value="Mua hàng"/></center>
        </spring:form>

    <br/>

    <jsp:include flush="true" page="footer.jsp"/>
    <jsp:include page="linkJS.jsp" flush="true"/>
</body>
</html>
