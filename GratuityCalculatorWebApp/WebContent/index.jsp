<%@page import="com.jabid.util.UtilCls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
	<style>
	h1{text-align:center;}
	</style>
<title>Gratuity Calculator</title>
</head>
<body style="background-color:#0d98ba">
	
	<div style="background-color:white" class="container text-center">
	<h1 style="margin-top:5%" >Gratuity Calculator</h1>
		<div class="row">
			<div class="col-md">
	<form>
		<table class="table table-striped table-dark text-center">
			<tr>
				<td>Bill Amount</td>
				<td><input name="bill" type="text" required></td>
			</tr>
			<tr>
				<td>Number of People</td>
				<td><input name="numPpl" type="text" required></td>
			</tr>
			<tr>
				<td>Tip Percentage[Out of 100]</td>
				<td><input name="tip" type="text" required></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit" class="btn btn-success"></td>
				<td><input type="reset" value="Cancel" class="btn btn-danger"></td>
			</tr>
		</table>
	</form>
	</div>
	</div>
	</div>
	<br>
	<%
	UtilCls util = new UtilCls();
	if(request.getParameter("bill")!=null){
		String a,b,c;
		a=request.getParameter("bill");
		b=request.getParameter("numPpl");
		c=request.getParameter("tip");
		boolean billChk = util.chkBill(a);
		boolean pplChk = util.chkPpl(b);
		boolean tipChk = util.chkTip(c);
		if(billChk && pplChk && tipChk) {
			//	response.sendRedirect("output.jsp");
				String amt = util.tip(Double.valueOf(a),Double.valueOf(c),Integer.valueOf(b));
				out.println("<p style='margin-left: 15%; width:70%; text-align:center; background-color:white'>Calculated Tip Amount: $"+amt+" per person<p><br><div style='text-align:center'>");
			}
			else {
				out.println("<p style='margin-left: 15%; width:70%; text-align:center; background-color:white'>Invalid Information Provided! Please make sure you entered valid information!</p>");
			}
	}
	%>
</body>
</html>