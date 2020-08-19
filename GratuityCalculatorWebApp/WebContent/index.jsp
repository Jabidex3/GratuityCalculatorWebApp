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
<body>
	<h1>Gratuity Calculator</h1>
	<div class="container">
		<div class="row">
			<div class="col-md">
	<form action="./Tip">
		<table class="table">
			<tr>
				<td>Bill Amount</td>
				<td><input name="bill" type="text"></td>
			</tr>
			<tr>
				<td>Number of People</td>
				<td><input name="numPpl" type="text"></td>
			</tr>
			<tr>
				<td>Tip Percentage[Out of 100]</td>
				<td><input name="tip" type="text"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit" class="btn btn-success"></td>
				<td><input type="reset" value="Cancel" class="btn btn-danger"></td>
			</tr>
		</table>
	</form>
	</div>
	</div>
	</div>s
</body>
</html>