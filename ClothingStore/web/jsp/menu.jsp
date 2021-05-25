<%-- 
    Document   : menu
    Created on : Nov 5, 2019, 8:44:10 PM
    Author     : bn
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="left-sidebar">
    <h2>Danh mục</h2>
    <div class="panel-group category-products" id="accordian"><!--category-productsr-->
        <div class="brands-name">
            <ul class="nav nav-pills nav-stacked">
                <c:forEach items="${listDM}" var="dm">
                    <li><a href="danh-muc.htm?id=${dm.maDM}">${dm.tenDM}</a></li>
                </c:forEach>
            </ul>
        </div>
    </div><!--/category-products-->

    <div class="brands_products"><!--brands_products-->
        <h2>Hãng</h2>
        <div class="brands-name">
            <ul class="nav nav-pills nav-stacked">
                <c:forEach items="${listNSX}" var="nsx">
                    <li><a href="nsx.htm?id=${nsx.maNSX}">${nsx.tenNSX}</a></li>
                </c:forEach>
            </ul>
        </div>
    </div><!--/brands_products-->

    <div class="price-range"><!--price-range-->
        <h2>Tìm kiếm theo giá</h2>
        <div class="well text-center">
            <form action="tim-kiem-theo-gia.htm">
                <input type="text" class="span2" style="border: none" name="price" value="" data-slider-min="0" data-slider-max="200000" data-slider-step="10000" data-slider-value="[100000,150000]" id="sl2" ><br />
                <b class="pull-left">0 VNĐ</b> <b class="pull-right">2000000 VNĐ</b><br>
                <input class="btn btn-default add-to-cart" type="submit" value="Search">
            </form>
        </div>
    </div><!--/price-range-->

    <div class="shipping text-center"><!--shipping-->
        <img src="/ClothingStore/resources/images/home/shipping.jpg" alt="" />
    </div><!--/shipping-->

</div>
