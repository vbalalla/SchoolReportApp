<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="Chart/Chart.js"></script>

<script src="assets/jquery-1.12.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="assets/bootstrap/js/bootstrap.min.js" >
<link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.min.css" >
<script src="dynatable/jquery.dynatable.js"></script>
<link rel="stylesheet" type="text/css" href="dynatable/jquery.dynatable.css">
<title>Insert title here</title>
</head>
<body>
<header><h3>${name} 's Report</h3></header>

<div class="container">
<table border="1" id="my-table" class="table">
    <thead class="">
        <tr>
            <th>line</th>
            <th>value1</th>
            <th>value2</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan="2">1</td>
            <td>1.1</td>
            <td>1.2</td>
        </tr>
        <tr>
            <td>1.3</td>
            <td>1.4</td>
        </tr>
        <tr>
            <td rowspan="2">2</td>
            <td>2.1</td>
            <td>2.2</td>
        </tr>
        <tr>
            <td>2.3</td>
            <td>2.4</td>
        </tr>
    </tbody>
</table>
</div>

<canvas id="mycanvas" width="400" height="400"></canvas>
<script>
	$(document).ready(function(){
		$('#my-table').dynatable();
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