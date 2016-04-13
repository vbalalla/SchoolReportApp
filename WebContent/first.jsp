<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>test page</title>
</head>
<body>
	<h1>test content</h1>
	
	<form action="FirstServlet">
		Year: <input type="number" name="year" min="2013" max="2023" required><br>
		Semester: <input type="number" name="sem" min="1" max="4" required><br>
  		Select a file: <input type="file" name="url" required>
  		<input type="submit">
	</form>
</body>
</html>