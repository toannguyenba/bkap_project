<%-- 
    Document   : check-out
    Created on : Nov 10, 2019, 3:48:52 PM
    Author     : bn
--%>
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
        <title>Hồ sơ người dùng | E-Shopper</title>
        <jsp:include flush="true" page="linkCSS.jsp"/>

    </head><!--/head-->

    <body>
        <jsp:include flush="true" page="header.jsp" />

        <section id="cart_items">
            <div class="container">
                <div class="breadcrumbs">
                    <ol class="breadcrumb">
                        <li><a href="index.htm">Home</a></li>
                        <li class="active">Hồ sơ</li>
                    </ol>
                </div><!--/breadcrums-->



                <div class="review-payment">
                    <h4 style="font: bolder; text-align: center">${tk.tenDN}(${tk.email})/Phone: ${tk.sdt}/ Address: ${tk.queQuan}</h4>
                </div>
                <div class="table-responsive cart_info">
                    <c:forEach items="${tk.donHangCollection}" var="dh" varStatus="varStatus">
                        <center>
                            <table class="table table-condensed" style="width: 70%; border: solid 1px; margin-top: 20px;">
                                <caption>Mã đơn hàng: ${dh.maDH}</caption>
                                <tbody>
                                    <c:forEach items="${dh.donHangChiTietCollection}" var="dhct">
                                        <tr>
                                            <td class="cart_product">
                                                <a href=""><img style="width: 110px;height: 110px" src="/ClothingStore/resources/images/san-pham/${dhct.sanPhamChiTiet.maSP.anh1}" alt=""></a>
                                            </td>
                                            <td class="cart_description">
                                                <h4>${dhct.sanPhamChiTiet.maSP.tenSP}</h4>
                                                <div>${dhct.sanPhamChiTiet.maMauSac.tenMauSac}</div>
                                                <div>${dhct.sanPhamChiTiet.maKichThuoc.tenKichThuoc}</div>
                                                <div>${dhct.soLuong}</div>
                                            </td>
                                            <td style="text-align: center;">
                                                ${dhct.giaBan}&#8363<br>
                                                <del>${dhct.sanPhamChiTiet.giaGoc}&#8363</del>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    <tr>
                                        <td style="color: red; text-align: right;" colspan="2">${dh.isPaid?"Đã thanh toán":"Chờ thanh toán"}</td>
                                        <td style="color: red; text-align: center;"><h4 style="margin-right: 15px;"><strong>Tổng số tiền: </strong>${dh.tongTien}&#8363</h4></td>
                                    </tr>
                                </tbody>
                            </table>
                        </center>
                    </c:forEach>
                </div>
                <div class="payment-options">
                    <button class="btn"><a href="index.htm">Tiếp tục mua hàng</a></button>
                </div>
            </div>
        </section> <!--/#cart_items-->



        <jsp:include flush="true" page="footer.jsp"/>



        <jsp:include flush="true" page="linkJS.jsp" />
    </body>
</html>