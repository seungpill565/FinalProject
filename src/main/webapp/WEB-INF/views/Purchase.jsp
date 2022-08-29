<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/jj9/resources/css/Purchasecss.css">
</head>
<body>
<c:forEach items="${Purchase }" var="purchase">
	 
	<div id="main_img">
		<div id="cate">${purchase.cate_main } > ${purchase.cate_sub }</div>
		
		<div id="img">
			<img id="purchase_img" alt="" src="/jj9/resources/images/${purchase.talent_image }">
		</div>
		<br>
		<div id="gradeAvg">��� ����:${RradeAvg } (${CountGrade }������)</div>
	</div>

	
	

	
	

	<div id="explanation">
		<div id="alink">
			<a href="#exp">���� ����</a>
			<a href="#curriculum">���� Ŀ��ŧ��</a>
			<a href="#reivew">����</a>
		</div>
		
		<div>${purchase.member_id }</div>
		<h3 id="exp">���� ����</h3>
		<div>${purchase.talent_service_exp }</div>
		
		<h3 id="curriculum">���� Ŀ��ŧ��</h3>
		<div>${purchase.talent_curriculum }</div>	
		
		<div id="Refund">
			<h3>��� �� ȯ�� ����</h3>
			
			<div>
				��. �⺻ ȯ�� ����<br>
				1. �������� �Ƿ����� ��ȣ �����Ͽ� û�� öȸ �� ȯ���� �����մϴ�.<br>
				2. ����, �뿩 �� ���� �غ� ���� û�� öȸ ��, �ش� ����� ������ �ݾ��� ȯ�� �����մϴ�.<br>
				3. �Կ� �Ǵ� ���� �۾� ���� ���� û�� öȸ ��, ����� �۾��� �Ǵ� �۾� �ϼ��� ������ �ݾ��� ������ �ݾ��� ȯ�� �����մϴ�.<br>
				<br>
				[ȯ�� ���̵����]<br>
				(1) ��ȹ �ܰ迡�� û�� öȸ: �� ���� �ݾ��� �ִ� 80%���� ȯ�� ����<br>
				(2) �۾� ���� �� û�� öȸ: �� ���� �ݾ��� �ִ� 20%���� ȯ�� ����<br>
				(3) �۾� 50% �Ϸ� �� û�� öȸ: �� ���� �ݾ��� �ִ� 10%���� ȯ�� ����<br>
				(4) �۾� 100% �Ϸ� �� û�� öȸ : ȯ�� �Ұ�<br>
				<br>
				��. ������ å�� ����<br>
				1. �Һ��� ���� ���� ������ �ǰ��Ͽ� �Կ� ������ ��� �� ���ط� ���� ���� �߻� ��, ���� ȯ���մϴ�.<br>
				2. �۾� �Ⱓ ���ؼ�, �۾� �¸� �� �̿� �����ϴ� ������ å������ ���� û�� öȸ ��, ȯ�� �� �Կ� ���� ������ �����մϴ�.<br>
				<br>
				�Ƿ��� å�� ����<br>
				�۾��� ���۵Ǹ� �ܼ� ���� �Ǵ� �Ƿ��� å�� ������ ���� ���� ȯ���� �Ұ����մϴ�.<br>
			</div>
		</div>
		
		
		
		<hr>
		
		<div id="reivew">
			<c:forEach items="${Reivew }" var="reivew">	
			<div>���̵� : ${reivew.member_id }</div>
			<div>���� : ${reivew.review_grade } | ��ϵȳ�¥ : ${reivew.review_date }</div>
			<div>���� : ${reivew.review_content }</div>
			</c:forEach>
		</div>
	</div>
	
	
	<div id="title">
		<div id="title-name">${purchase.talent_title }</div>
		<br>
		<div>${purchase.talent_price }��</div>
		<form action="<c:url value="/order/${purchase.talent_id }"/>" method="get">
			<input id="order-button" type="submit" value="�����ϱ�">
		</form>
	</div>
	

</c:forEach>


</body>
</html>