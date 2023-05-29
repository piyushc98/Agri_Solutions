<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script> 
function f1(k)
{
	var v=document.getElementById(k).value;
	document.write(v);
}

</script>
</head>
<body>
<h1>Problem</h1>
<table>
    <tr><th><label for="story">Examle:</label></th></tr>
    <tr><td></td><td><textarea id="story1" name="mess" rows="15" cols="33"></textarea></td></tr>
    <tr><td></td><td><textarea id="story2" name="mess" rows="15" cols="33"></textarea></td></tr>
	<tr><td colspan="2" style="text-align:center"><input type='button' value='Add' onclick="f1('story2')"/></td></tr>
</table>
</body>
</html>