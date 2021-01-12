<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">
<style>
@import url('https://fonts.googleapis.com/css?family=Orbitron');
</style>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	margin: 0;
    padding: 0;
}

.tieude {
	background-color: aqua;
}

.bang {
	background-color: white;
}

.img1 {
	width: 50px;
	height: 80px;
}

table th {
	padding: 10px;
	text-align: center;
	color: :black;
	background-color: #c1c1c1;
}

table td {
	padding: 8px;
	background-color: #333333;
	color: white;
}

table tr:hover {
	background-color: #c0c0c0;
	color: black;
}
i{
	font-size: 120%;
}
</style>
</head>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<body>
	<section>
		<div class="head">
			<div class="head-left">
				<a href="/StorePhone/list" class="logout"><i class="fas fa-home"></i>&nbsp;Home</a>
			</div>
			<div class="head-center">
				<a href="/StorePhone/list"><img src="picture/LOGO.png" alt=""></a>
			</div>
			<div class="head-right">
				 <a href="#"><i class="far fa-user"></i> </a>
				 
				  <a><c:out value="${userr.firstname}" />&nbsp;<c:out value="${userr.lastname}" /></a>&nbsp;&nbsp; 
				  <a href="Login.jsp" class="logout"><i class="fas fa-sign-out-alt"></i>Logout</a>
			</div>
		</div>
		<div align="center">
			<body>

				<center>
					<h1>Management Product</h1>
					<h2>
						<a href="/StorePhone/new">Add New Phone</a>
					</h2>
				</center>
				<div align="center">
					<table class="bang" border="2" cellpadding="5">

						<tr class="tieude">
							<th>ID</th>
							<th>Name</th>
							<th>IMG</th>
							<th>Pricenew</th>
							<th>Priceold</th>
							<th>Lable</th>
							<th>Kind</th>
							<th>Actions</th>
						</tr>
						<c:forEach items="${listProduct}" var="p">
							<tr>
								<td><c:out value="${p.id}"></c:out></td>
								<td><c:out value="${p.name}"></c:out></td>
								<td><img class="img1"
									src="<c:out value="${p.img}"></c:out>" alt=""></td>
								<td><c:out value="${p.pricenew}"></c:out></td>
								<td><c:out value="${p.priceold}"></c:out></td>
								<td><c:out value="${p.lable}"></c:out></td>
								<td><c:out value="${p.kind}"></c:out></td>
								<td><a href="/StorePhone/edit?id=<c:out value="${p.id}"/>"><i
										class="fas fa-edit"></i></a> &nbsp;&nbsp;&nbsp;&nbsp; <a
									href="/StorePhone/delete?id=<c:out value="${p.id}"/>"><i
										class="fas fa-trash-alt"></i></a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</body>
		</div>

		<div class="itg">
			<a href="https://www.instagram.com/itg_huu/">
				<p class="spbc">
					<i class="fab fa-instagram"></i>FOLLOW US INSTAGRAM
				</p>
			</a>
			<hr />
		</div>

		<div class="last">
			<div class="last-left">
				<br> <br> <a href=""><img class="logo2"
					src="picture/LOGO.png"></a>
				<p class="thongtin">
					<strong>Store Phone Basis</strong>
				</p>
				<p>
					<i class="fas fa-map-marker-alt"></i>08 Hà Văn Tính - Quận Liên
					Chiểu - Thành phố Đà Nẵng
				</p>
				<a href="#"><i class="fas fa-phone"></i>0379875843</a> <br /> <br />
			</div>
			<div class="last-center">
				<a class="thongtin" href="#">GIỚI THIỆU</a> <br> <a
					class="thongtin" href="#">SẢN PHẨM</a> <br> <a
					class="thongtin" href="#">CHÍNH SÁCH BẢO HÀNH</a> <br> <a
					class="thongtin" href="#">THÀNH VIÊN Store Phone Basis</a> <br>
				<a class="thongtin" href="#">LIÊN HỆ</a>

			</div>
		</div>
	</section>
</body>
</html>