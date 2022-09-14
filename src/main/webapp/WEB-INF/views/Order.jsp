<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${order }" var="order">

	<div>����������</div>
	
	<h3>�����ϱ�</h3>
	
	<h5>�ֹ�����</h5>
	<div>
		<div>
			<img id="purchase_img" alt="" src="/jj9/resources/images/${order.talent_image }">
		</div>
		<div>${order.talent_title }</div>
		<div>${order.member_nickName }</div>
		
		<input type='button' onclick='count("plus")'value='+'/>
		<input id="minus-button" type='button'onclick='count("minus")' value='-' disabled/>
		<div id='result'>1</div>
		<div id="price">${order.talent_price }</div>
		<div id="price2" style="display: none;">${order.talent_price }</div>
	</div>
	
	
	
	<h3>����</h3>
	<form action="<c:url value="/order/completed"/>" method="POST">
	<div>��� ������ ����</div>
		<select id="select-cupon-name" name="name">
			<option value="0">���� ���</option>
		
		<c:forEach items="${coupon }" var="cou">
			<option  value="${cou.coupon_id }">${cou.coupon_name }</option>
		</c:forEach>
		
		
	 </select>
	 
	
	
	<h3>���� </h3>
		<div id="">
			<div>�Ѽ��� �ݾ� <input id="total-service" name="original-money" value = "${order.talent_price }" type="text" readonly style="border: none; text-align: right">��</div> 
			<div >���� ���� ���� <input id="input-cupon-value" type = "text" placeholder="�����Ͻ� ������ �����ϴ�." readonly style="border: none;"> <br></div>
			<div id="dis-pay">0��</div>
		</div>
		<hr>
		<div>
			�Ѱ��� �ݾ� <input id="total-pay" name="money" value="${order.talent_price }" type="text" readonly style="border: none; text-align: right">��
		</div>
		<input id="order-button" type="submit" value="�����ϱ�">
	</form>
	
</c:forEach>
<script type="text/javascript" src="/jj9/resources/js/Orderjs.js"></script>
</body>
</html>