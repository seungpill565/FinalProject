<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/jj9/resources/css/Ordercss.css">
</head>
<body>
<c:forEach items="${order }" var="order">
	
	
	<div id="order-details">
		<h1>�����ϱ�</h3>
		
		<h3>�ֹ�����</h5>
		
		<img id="purchase_img" alt="" src="/jj9/resources/images/${order.talent_image }">
		<br>
		<br>
		
		<div id="title-nickName-id">
			<h3>��� �̸� : ${order.talent_title }</h3>
			<hr>
			<div>�Ǹ��� �г���: ${order.member_nickName }</div>
			<div>�Ǹ��� ���̵�: ${order.member_id }</div>
			<hr>
		</div>
		<table border="1">
			<thead  >
				<th id="nomal">�⺻�׸�</th>
				<th id="select">��������</th>
				<th id="day">�۾���</th>
				<th id="th-price">����</th>
			</thead>
			<tbody>
			<td><div>${order.talent_summary }</div></td>
			<td>
				<div id="select-grid">
					<input id="minus-button" type='button'onclick='count("minus")' value='-' disabled/>
					<div id='result'>1</div>
					<input id = "plus-button" type='button' onclick='count("plus")'value='+'/>
				</div>
			</td>
			<td>${order.talent_workday }��</td>
			<td><div id="price"><fmt:formatNumber value="${order.talent_price }" groupingUsed="true" /></div></td>
			
			</tbody>
		</table>
		
		
		
		<div id="price2" style="display: none;">${order.talent_price }</div>
	</div>
	
	
	<div id="coupon-order-all">
			<h3>����</h3>
			<form action="<c:url value="/order/completed"/>" method="POST">
				<div>��� ������ ����</div>
				<select id="select-cupon-name" name="name" style="font-size:18px;">
					<option value="0">���� ���</option>
				
				<c:forEach items="${coupon }" var="cou">
					<option  value="${cou.coupon_id }">${cou.coupon_name }</option>
				</c:forEach>
			
		 </select>
		 <hr>
		 
		
		<h3>���� </h3>
			
				<div>�Ѽ��� �ݾ� <input id="total-service" name="original-money" value = "<fmt:formatNumber value="${order.talent_price }" groupingUsed="true" />" type="text" readonly style="border: none;font-size:20px; text-align: right">��</div> 
				<div >���� ����<input id="input-cupon-value" type = "text" placeholder="�����Ͻ� ������ �����ϴ�." readonly style="border: none;font-size:20px;"></div>
				<div id="dis-pay" style="font-size:25px;">0��</div>
			
			<hr>
			<div>
				�Ѱ��� �ݾ� <input id="total-pay" name="money" value="<fmt:formatNumber value="${order.talent_price }" groupingUsed="true" />" type="text" readonly style="border: none; font-size:20px; text-align: right">��
			</div>
			<br>
			<input id="order-button" type="submit" value="�����ϱ�">
		</form>
		<br>
	</div>
</c:forEach>
<script type="text/javascript" src="/jj9/resources/js/Orderjs.js"></script>
</body>
</html>