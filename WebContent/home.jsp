<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">
<style>
@import url('https://fonts.googleapis.com/css?family=Orbitron');
</style>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Phone store(@itg_huu)</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
        integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <section>
        <div class="head">
            <div class="head-left">
                <i class="fas fa-align-justify"></i>
                <span>Menu</span>
            </div>
            <div class="head-center">
                <a href="#"><img  src="picture/LOGO.png" alt=""></a>
            </div>
            <div class="head-right">
                <a href="#"><i class="fas fa-shopping-cart"></i></a>
                &nbsp;
                <a href="/StorePhone/login"><i class="far fa-user"></i> </a>
                <a><c:out value="${userr.firstname}"/>&nbsp;<c:out value="${userr.lastname}"/></a>&nbsp;&nbsp;
                <c:if test="${userr.id==''}">
               	<a href="Login.jsp" class="logout"><i class="fas fa-sign-out-alt"></i>Logout</a>
               	</c:if>
               	<c:if test="${userr.id=='1'}">
               		&nbsp;<a href="/StorePhone/new"><i class="fas fa-plus-square"></a></i> <a href="/StorePhone/login" class="logout">Manage product!</a>
            	</c:if>
            </div>
        </div>

        <div class="container">

            <input type="radio" id="i1" name="images" checked />
            <input type="radio" id="i2" name="images" />
            <input type="radio" id="i3" name="images" />
            <input type="radio" id="i4" name="images" />

            <div class="slide_img" id="one">

                <img src="picture/big-Oppo-800-300-800x300-(1).png">

                <label class="prev" for="i4"><span>&#x2039;</span></label>
                <label class="next" for="i2"><span>&#x203a;</span></label>

            </div>

            <div class="slide_img" id="two">

                <img src="picture/800-300-800x300-(3).png">

                <label class="prev" for="i1"><span>&#x2039;</span></label>
                <label class="next" for="i3"><span>&#x203a;</span></label>

            </div>

            <div class="slide_img" id="three">
                <img src="picture/30_04_2019_13_24_57_800-300.png">

                <label class="prev" for="i2"><span>&#x2039;</span></label>
                <label class="next" for="i4"><span>&#x203a;</span></label>
            </div>

            <div class="slide_img" id="four">
                <img src="picture/HotsaleA50-V3-800-300-800x300.png">

                <label class="prev" for="i3"><span>&#x2039;</span></label>
                <label class="next" for="i1"><span>&#x203a;</span></label>
            </div>



            <div id="nav_slide">
                <label for="i1" class="dots" id="dot1"></label>
                <label for="i2" class="dots" id="dot2"></label>
                <label for="i3" class="dots" id="dot3"></label>
                <label for="i4" class="dots" id="dot4"></label>
            </div>

        </div>

        <p class="spbc">SẢN PHẨM BÁN CHẠY </p>
        <hr />
        <div class="list-post">
        <c:forEach items="${listProduct}" var="p">
       	 <c:if test="${p.kind=='banchay'}">
	            <div class="post">
	                <a href="/StorePhone/chitiet?id=<c:out value="${p.id}"/>">
		                 <p class="nhan">
	                        <legend class="nhan1"><c:out value="${p.lable}"></c:out></legend>
	                        <c:if test="${userr.id=='1'}">
	                        	 <a href="/StorePhone/delete?id=<c:out value="${p.id}"/>"><legend class="nhan2"><i class="fas fa-backspace"></i></legend></a>
	                         </c:if>
	                    </p>
	                   <a href=" /StorePhone/chitiet?id=<c:out value="${p.id}"/>"> <img src="<c:out value="${p.img}"></c:out>" alt=""></a>
	                    <strong class="namemh"><c:out value="${p.name}"></c:out></strong>
	                    <p class="gia"><c:out value="${p.pricenew}"></c:out><u>đ</u>&nbsp;
	                    <c:if test="${p.priceold!='0'}">
		                    <strike>
		                    	<c:out value="${p.priceold}"></c:out><u>đ</u>
		                    </strike>
	                    </c:if>
	                    </p>
	                    <a href="#" class="themvaogio">Thêm vào giỏ</a>
	                    <br />
	                    <br />
	                    <c:if test="${userr.id=='1'}">
	                    	<a class="edit" href="/StorePhone/edit?id=<c:out value="${p.id}"/>"><i class="fas fa-wrench"></i>Edit</a>
	                    </c:if>
	                </a>
	            </div>
            </c:if>
           </c:forEach>
        </div>

        <p class="spbc">SẢN PHẨM MỚI</p>
        <hr />
        <div class="list-post">

       	<c:forEach items="${listProduct}" var="p">
       	 <c:if test="${p.kind=='new'}">
       	 	
	            <div class="post">
	            	<a href="/StorePhone/chitiet?id=<c:out value="${p.id}"/>">
	                    <p class="nhan">
	                        <legend class="nhan1"><c:out value="${p.lable}"></c:out></legend>
	                    <c:if test="${userr.id=='1'}">
	                       <a href="/StorePhone/delete?id=<c:out value="${p.id}"/>"><legend class="nhan2"><i class="fas fa-backspace"></i></legend></a>
	                    </c:if>
	                    </p>
	                    <a href=" /StorePhone/chitiet?id=<c:out value="${p.id}"/>"> <img src="<c:out value="${p.img}"></c:out>" alt=""></a>
	                    <strong class="namemh"><c:out value="${p.name}"></c:out></strong>
	                    <p class="gia"><c:out value="${p.pricenew}"></c:out><u>đ</u>&nbsp;
		                    <c:if test="${p.priceold!='0'}">
			                    <strike>
			                    	<c:out value="${p.priceold}"></c:out><u>đ</u>
			                    </strike>
		                    </c:if>
	                    </p>
	                    <a href="#" class="themvaogio">Thêm vào giỏ</a>
	                    <br />
	                    <br />
	                    <c:if test="${userr.id=='1'}">
	                    	<a class="edit" href="/StorePhone/edit?id=<c:out value="${p.id}"/>"><i class="fas fa-wrench"></i>Edit</a>
	                    </c:if>
	                   </a>
	            </div>
            </c:if>
           </c:forEach>
            
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
                <a href="#"><img class="logo2" src="picture/LOGO.png"></a>
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