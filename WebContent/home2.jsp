<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Phone store(@itg_huu)</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
        integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="style2.css">
</head>

<body>
    <section>
        <div class="head">
            <div class="head-left">
            <a href="/StorePhone/list" class="logout"><i class="fas fa-home"></i>Home</a>
                <i class="fas fa-align-justify"></i>
                <span>Menu</span>
            </div>
            <div class="head-center">
                <a href="/StorePhone/list"><img src="picture/LOGO.png" alt=""></a>
            </div>
            <div class="head-right">
                <a href=""><i class="fas fa-shopping-cart"></i></a>
                &nbsp;
                <a href="#"><i class="far fa-user"></i> </a>
                <a><c:out value="${userr.firstname}"/>&nbsp;<c:out value="${userr.lastname}"/></a>&nbsp;&nbsp;
               	<a href="Login.jsp" class="logout">Logout</a>
            </div>
        </div>
        <h1><strong class="titlename">Điện thoại <c:out value="${product.name}"></c:out></strong></h1>
        <div class="list-post">
                <div class="post">
                    <a href="#" class="">
                        <legend><c:out value="${product.lable}"></c:out></legend>
                        <img src="<c:out value="${product.img}"></c:out>" alt="">
                        <p class="gia"><c:out value="${product.pricenew}"></c:out><u>đ</u>&nbsp;
                        <c:if test="${product.priceold!='0'}">
		                    <strike>
		                    	<c:out value="${product.priceold}"></c:out><u>đ</u>
		                    </strike>
	                    </c:if></p>
                        <a href="#" class="themvaogio">Thêm vào giỏ</a>
                    </a>
                </div>
                <img class="anhthongtin" src="<c:out value="${product.info}"></c:out>" alt="">
        </div>
        
        <div class="itg">
            <a href="https://www.instagram.com/itg_huu/">
                <p class="spbc"><i class="fab fa-instagram"></i>FOLLOW US INSTAGRAM</p>
            </a>
            <hr />
        </div>

        <div class="last">
            <div class="last-left">
                <br>
                <br>
                <a href=""><img class="logo2" src="picture/LOGO.png"></a>
                <p class="thongtin"><strong>Store Phone Basic</strong></p>
                <p><i class="fas fa-map-marker-alt"></i>08 Hà Văn Tính - Quận Liên Chiểu - Thành phố Đà Nẵng</p>
                <a href="#"><i class="fas fa-phone"></i>0379875843</a>
                <br /> <br />
            </div>
            <div class="last-center">
                <a class="thongtin" href="#">GIỚI THIỆU</a>
                <br>
                <a class="thongtin" href="#">SẢN PHẨM</a>
                <br>
                <a class="thongtin" href="#">CHÍNH SÁCH BẢO HÀNH</a>
                <br>
                <a class="thongtin" href="#">THÀNH VIÊN Store Phone Basic</a>
                <br>
                <a class="thongtin" href="#">LIÊN HỆ</a>

            </div>
        </div>
    </section>
</body>

</html>