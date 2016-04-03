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
<header><h3>${name} 's Report</h3></header>


<canvas id="mycanvas" width="400" height="400"></canvas>
<script>
	$(document).ready(function(){
		var ctx = $("#mycanvas").get(0).getContext("2d");
		var da = '${data}';
		var arr = da.split(",");
		var str = [];
		for(i=0;i<arr.length;i++){
			str.push(parseInt(arr[i]));
		}
		
		var data = {
			    labels: ["subject 1", "subject 2", "subject 3", "subject 4", "subject 5", "subject 6", "subject 7", "subject 8", "subject 9", "subject 10"],
			    datasets: [
			        {
			            label: "My First dataset",
			            fillColor: "rgba(220,220,220,0.5)",
			            strokeColor: "rgba(220,220,220,0.8)",
			            highlightFill: "rgba(220,220,220,0.75)",
			            highlightStroke: "rgba(220,220,220,1)",
			            data: str
			        }
			    ]
			};
		
		var myBarChart = new Chart(ctx).Bar(data);
	});
</script>
</body>
</html>