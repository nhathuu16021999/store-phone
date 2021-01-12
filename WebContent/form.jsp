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
<style>
	 background-color: #c7ecee;
</style>
<body>
    <section>
        <div class="head">
            <div class="head-left">
            <a href="/StorePhone/list" class="logout">home</a>
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
	<div align="center">
		<c:if test="${product != null}">
			<form action="update" method="post">
		</c:if>
		<c:if test="${product == null}">
			<form action="insert" method="post">
		</c:if>

		<table border="2" cellpadding="5">
			<caption>
				<c:if test="${product != null}">
					<h2>Edit Product</h2>
				</c:if>
				<c:if test="${product == null}">
					<h2>Add New Product</h2>
				</c:if>
			</caption>
			<c:if test="${product != null}">
				<input type="hidden" name="id" value="<c:out value="${product.id}"/>" />
			</c:if>
			<tr>
				<th>Name:</th>
				<td><input type="text" name="name" size="45"
					value="<c:out value="${product.name}"/>" /></td>
			</tr>
			<tr>
				<th>Img:</th>
				<td><input type="text" name="img" size="60"
					value="<c:out value="${product.img}"/>" /></td>
			</tr>
			<tr>
				<th>Info:</th>
				<td><input type="text" name="info" size="60"
					value="<c:out value="${product.info}"/>" /></td>
			</tr>
			<tr>
				<th>Pricenew:</th>
				<td><input type="text" name="pricenew" size="11"
					value="<c:out value="${product.pricenew}"/>" /></td>
			</tr>
			<tr>
				<th>Priceold:</th>
				<td><input type="text" name="priceold" size="11"
					value="<c:out value="${product.priceold}"/>" /></td>
			</tr>
			<tr>
				<th>Label:</th>
				<td><input type="text" name="lable" size="20"
					value="<c:out value="${product.lable}"/>" /></td>
			</tr>
			<tr>
				<th>Kind:</th>
				<td><input type="text" name="kind" size="11"
					value="<c:out value="${product.kind}"/>" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Save" /></td>
			</tr>
		</table>
		</form>
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
                <p class="thongtin"><strong>Store Phone Basis</strong></p>
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
                <a class="thongtin" href="#">THÀNH VIÊN Store Phone Basis</a>
                <br>
                <a class="thongtin" href="#">LIÊN HỆ</a>

            </div>
        </div>
    </section>
</body>

</html>