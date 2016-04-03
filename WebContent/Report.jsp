<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="Chart/Chart.js"></script>
<script src="assets/jquery-1.12.2.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<canvas id="mycanvas" width="400" height="400"></canvas>
<script>
	$(document).ready(function(){
		var ctx = $("#mycanvas").get(0).getContext("2d");
		
		var data = {
			    labels: ["January", "February", "March", "April", "May", "June", "July"],
			    datasets: [
			        {
			            label: "My First dataset",
			            fillColor: "rgba(220,220,220,0.5)",
			            strokeColor: "rgba(220,220,220,0.8)",
			            highlightFill: "rgba(220,220,220,0.75)",
			            highlightStroke: "rgba(220,220,220,1)",
			            data: [65, 59, 80, 81, 56, 55, 40]
			        }
			    ]
			};
		
		var myBarChart = new Chart(ctx).Bar(data);
	});
</script>
</body>
</html>