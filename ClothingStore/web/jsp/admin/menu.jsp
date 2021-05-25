<%-- 
    Document   : menu
    Created on : Nov 10, 2019, 10:07:56 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="left-sidebar-pro">
    <nav id="sidebar" class="">
        <div class="sidebar-header">
            <a href="trangchu.htm"><img class="main-logo" src="/ClothingStore/jsp/admin/img/logo/abc.png" alt="" /></a>
            <strong><img src="/ClothingStore/jsp/admin/img/logo/logo.png" alt="" /></strong>
        </div>
        <div class="left-custom-menu-adp-wrap comment-scrollbar">
            <nav class="sidebar-nav left-sidebar-menu-pro">
                <ul class="metismenu" id="menu1">
                    <li>
                        <a class="has-arrow">
                            <i class="fa big-icon fa-home icon-wrap"></i>
                            <span class="mini-click-non">Quản lý sản phẩm</span>
                        </a>
                        <ul class="submenu-angle" aria-expanded="true">
                            <li><a title="Thêm sản phẩm" href="them-san-pham.htm"><i class="fa fa-bullseye sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Thêm sản phẩm</span></a></li>
                            <li><a title="Thêm sản phẩm chi tiết" href="them-san-pham-chi-tiet.htm"><i class="fa fa-circle-o sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Thêm sản phẩm CT</span></a></li>
                            <li><a title="Danh sách sản phẩm" href="danh-sach-san-pham.htm"><i class="fa fa-cube sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Danh sách sản phẩm</span></a></li>
                            <li><a title="Product List" href="product-list.html"><i class="fa fa-female sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Product List</span></a></li>
                            <li><a title="Product Edit" href="product-edit.html"><i class="fa fa-bolt sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Product Edit</span></a></li>
                            <li><a title="Product Detail" href="product-detail.html"><i class="fa fa-heart-o sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Product Detail</span></a></li>
                            <li><a title="Product Cart" href="product-cart.html"><i class="fa fa-level-down sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Product Cart</span></a></li>
                            <li><a title="Product Payment" href="product-payment.html"><i class="fa fa-location-arrow sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Product Payment</span></a></li>
                            <li><a title="Analytics" href="analytics.html"><i class="fa fa-line-chart sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Analytics</span></a></li>
                            <li><a title="Widgets" href="widgets.html"><i class="fa fa-magnet sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Widgets</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="fa big-icon fa-envelope icon-wrap"></i> <span class="mini-click-non">Quản lý danh mục</span></a>
                        <ul class="submenu-angle" aria-expanded="false">
                            <li><a title="Inbox" href="them-danh-muc.htm"><i class="fa fa-inbox sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Thêm danh mục</span></a></li>
                            <li><a title="View Mail" href="mailbox-view.html"><i class="fa fa-television sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">View Mail</span></a></li>
                            <li><a title="Compose Mail" href="mailbox-compose.html"><i class="fa fa-paper-plane sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Compose Mail</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="fa big-icon fa-flask icon-wrap"></i> <span class="mini-click-non">Nhà sản xuất</span></a>
                        <ul class="submenu-angle" aria-expanded="false">
                            <li><a title="Google Map" href="them-NSX.htm"><i class="fa fa-map-marker sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Thêm NSX</span></a></li>
                            <li><a title="Data Maps" href="data-maps.html"><i class="fa fa-map-o sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Data Maps</span></a></li>
                            <li><a title="Pdf Viewer" href="pdf-viewer.html"><i class="fa fa-file-pdf-o sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Pdf Viewer</span></a></li>
                            <li><a title="X-Editable" href="x-editable.html"><i class="fa fa-fighter-jet sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">X-Editable</span></a></li>
                            <li><a title="Code Editor" href="code-editor.html"><i class="fa fa-code sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Code Editor</span></a></li>
                            <li><a title="Tree View" href="tree-view.html"><i class="fa fa-frown-o sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Tree View</span></a></li>
                            <li><a title="Preloader" href="preloader.html"><i class="fa fa-circle sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Preloader</span></a></li>
                            <li><a title="Images Cropper" href="images-cropper.html"><i class="fa fa-file-image-o sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Images Cropper</span></a></li>
                        </ul>
                    </li>
                    <li class="active">
                        <a class="has-arrow" href="" aria-expanded="false"><i class="fa big-icon fa-pie-chart icon-wrap"></i> <span class="mini-click-non">Size & Color</span></a>
                        <ul class="submenu-angle" aria-expanded="false">
                            <li><a title="Thêm kích thước" href="them-kich-thuoc.htm"><i class="fa fa-folder sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Thêm kích thước</span></a></li>
                            <li><a title="Thêm màu sắc" href="them-mau-sac.htm"><i class="fa fa-square sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Thêm màu sắc</span></a></li>
                            <li><a title="Blog Details" href="blog-details.html"><i class="fa fa-tags sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Blog Details</span></a></li>
                            <li><a title="404 Page" href="404.html"><i class="fa fa-tint sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">404 Page</span></a></li>
                            <li><a title="500 Page" href="500.html"><i class="fa fa-tree sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">500 Page</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="fa big-icon fa-bar-chart-o icon-wrap"></i> <span class="mini-click-non">Charts</span></a>
                        <ul class="submenu-angle" aria-expanded="false">
                            <li><a title="Bar Charts" href="bar-charts.html"><i class="fa fa-line-chart sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Bar Charts</span></a></li>
                            <li><a title="Line Charts" href="line-charts.html"><i class="fa fa-area-chart sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Line Charts</span></a></li>
                            <li><a title="Area Charts" href="area-charts.html"><i class="fa fa-pie-chart sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Area Charts</span></a></li>
                            <li><a title="Rounded Charts" href="rounded-chart.html"><i class="fa fa-signal sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Rounded Charts</span></a></li>
                            <li><a title="C3 Charts" href="c3.html"><i class="fa fa-barcode sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">C3 Charts</span></a></li>
                            <li><a title="Sparkline Charts" href="sparkline.html"><i class="fa fa-sort-amount-desc sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Sparkline Charts</span></a></li>
                            <li><a title="Peity Charts" href="peity.html"><i class="fa fa-object-ungroup sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Peity Charts</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="fa big-icon fa-table icon-wrap"></i> <span class="mini-click-non">Data Tables</span></a>
                        <ul class="submenu-angle" aria-expanded="false">
                            <li><a title="Peity Charts" href="static-table.html"><i class="fa fa-table sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Static Table</span></a></li>
                            <li><a title="Data Table" href="data-table.html"><i class="fa fa-th sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Data Table</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="fa big-icon fa-table icon-wrap"></i> <span class="mini-click-non">Forms Elements</span></a>
                        <ul class="submenu-angle" aria-expanded="false">
                            <li><a title="Basic Form Elements" href="basic-form-element.html"><i class="fa fa-pencil sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Bc Form Elements</span></a></li>
                            <li><a title="Advance Form Elements" href="advance-form-element.html"><i class="fa fa-lightbulb-o sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Ad Form Elements</span></a></li>
                            <li><a title="Password Meter" href="password-meter.html"><i class="fa fa-hourglass sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Password Meter</span></a></li>
                            <li><a title="Multi Upload" href="multi-upload.html"><i class="fa fa-hdd-o sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Multi Upload</span></a></li>
                            <li><a title="Text Editor" href="tinymc.html"><i class="fa fa-globe sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Text Editor</span></a></li>
                            <li><a title="Dual List Box" href="dual-list-box.html"><i class="fa fa-hand-paper-o sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Dual List Box</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="fa big-icon fa-desktop icon-wrap"></i> <span class="mini-click-non">App views</span></a>
                        <ul class="submenu-angle" aria-expanded="false">
                            <li><a title="Notifications" href="notifications.html"><i class="fa fa-external-link-square sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Notifications</span></a></li>
                            <li><a title="Alerts" href="alerts.html"><i class="fa fa-crop sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Alerts</span></a></li>
                            <li><a title="Modals" href="modals.html"><i class="fa fa-building sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Modals</span></a></li>
                            <li><a title="Buttons" href="buttons.html"><i class="fa fa-adjust sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Buttons</span></a></li>
                            <li><a title="Tabs" href="tabs.html"><i class="fa fa-eye sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Tabs</span></a></li>
                            <li><a title="Accordion" href="accordion.html"><i class="fa fa-life-ring sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Accordion</span></a></li>
                        </ul>
                    </li>
                    <li id="removable">
                        <a class="has-arrow" href="#" aria-expanded="false"><i class="fa big-icon fa-files-o icon-wrap"></i> <span class="mini-click-non">Pages</span></a>
                        <ul class="submenu-angle" aria-expanded="false">
                            <li><a title="Login" href="login.html"><i class="fa fa-hand-rock-o sub-icon-mg" aria-hidden="true"></i><span class="mini-sub-pro">Login</span></a></li>
                            <li><a title="Register" href="register.html"><i class="fa fa-plane sub-icon-mg" aria-hidden="true"></i><span class="mini-sub-pro">Register</span></a></li>
                            <li><a title="Lock" href="lock.html"><i class="fa fa-file sub-icon-mg" aria-hidden="true"></i><span class="mini-sub-pro">Lock</span></a></li>
                            <li><a title="Password Recovery" href="password-recovery.html"><i class="fa fa-wheelchair sub-icon-mg" aria-hidden="true"></i><span class="mini-sub-pro">Password Recovery</span></a></li>
                        </ul>
                    </li>
                    <li><a title="Landing Page" href="#" aria-expanded="false"><i class="fa fa-bookmark icon-wrap sub-icon-mg" aria-hidden="true"></i> <span class="mini-click-non">Landing Page</span></a></li>
                </ul>
            </nav>
        </div>
    </nav>
</div>
