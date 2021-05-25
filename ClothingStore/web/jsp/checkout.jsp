<%-- 
    Document   : check-out
    Created on : Nov 10, 2019, 3:48:52 PM
    Author     : bn
--%>
<%@page import="entity.Account"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Checkout | E-Shopper</title>
        <jsp:include flush="true" page="linkCSS.jsp"/>

    </head><!--/head-->

    <body>
        <jsp:include flush="true" page="header.jsp" />

        <section id="cart_items">
            <div class="container">
                <div class="breadcrumbs">
                    <ol class="breadcrumb">
                        <li><a href="index.htm">Home</a></li>
                        <li class="active">Check out</li>
                    </ol>
                </div><!--/breadcrums-->

                <div class="step-one">
                    <h2 class="heading">Địa chỉ nhận hàng</h2>
                    <strong>${tk.hoTen}/SĐT: ${tk.sdt}/${tk.email}</strong>  ${tk.queQuan}
                </div><br>
                
                <div class="review-payment">
                    <h2>Sản phẩm</h2>
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
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${gioHang.cartLines}" var="sp" varStatus="varStatus">
                                <tr>
                                    <td class="cart_product">
                                        <img style="width: 110px;height: 110px" src="/ClothingStore/resources/images/san-pham/${sp.spct.maSP.anh1}" alt="">
                                    </td>
                                    <td class="cart_description">
                                        <h4>${sp.spct.maSP.tenSP}</h4>
                                    </td>
                                    <td class="cart_description">
                                        ${sp.spct.maKichThuoc.tenKichThuoc}<br>
                                        ${sp.spct.maMauSac.tenMauSac}
                                    </td>
                                    <td class="cart_price">
                                        <div class="don ${sp.spct.maSPCT}" style="width: 70px;border: none;height: 35px" >${sp.spct.giaGoc-sp.spct.giaGoc*sp.spct.giaKM}</div>
                                    </td>
                                    <td class="cart_quantity">
                                        <div class="cart_quantity_button">
                                            <div style="border: none;width: 50px;height: 35px;text-align: center" name="quantity" autocomplete="off" size="2">${sp.soLuong}</div>
                                        </div>
                                    </td>
                                    <td class="cart_total">
                                        <div class="tong ${sp.spct.maSPCT}" style="width: 70px;border: none;height: 35px;">${(sp.spct.giaGoc-sp.spct.giaGoc*sp.spct.giaKM)*sp.soLuong}</div>
                                    </td>
                                </tr>
                            </c:forEach>
                            <tr>
                                <td style="text-align: right;" colspan="6"><h4 style="margin-right: 15px;"><strong>Tổng tiền: </strong>${gioHang.totalPrice}&#8363</h4></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div><center><a href="confirmInfo.htm"><button type="button" class="btn">Đặt hàng</button></a></center></div>
                <div class="payment-options">
                    <span>
                        <label><input type="checkbox"> Direct Bank Transfer</label>
                    </span>
                    <span>
                        <label><input type="checkbox"> Check Payment</label>
                    </span>
                    <span>
                        <label><input type="checkbox"> Paypal</label>
                    </span>
                </div>
            </div>
        </section> <!--/#cart_items-->



        <jsp:include flush="true" page="footer.jsp"/>



        <jsp:include flush="true" page="linkJS.jsp" />
    </body>
</html>