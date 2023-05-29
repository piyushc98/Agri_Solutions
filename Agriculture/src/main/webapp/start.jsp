<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
          background-image:url("https://static.vecteezy.com/system/resources/previews/003/528/602/non_2x/wooden-background-with-green-leaves-free-vector.jpg");
	      background-size:100vw;
	 }
h1{
	 margin-top:180px;
	 font-size:100px;
	 margin-left:580px;
	 font-family: cursive;
	 color:#f2860a;
	 padding:auto;
	 }
p{
	  margin-top:0px;
	  font-size:30px;
	  margin-left:900px;
	  font-family: cursive;
	  color:#696969;
	 }
	
.start{
    border: 0;
    line-height: 2.5;
    padding: 0 20px;
    font-size: 1rem;
    text-align: center;
    margin:120px 0 0 1370px;
    color: #fff;
    text-shadow: 1px 1px 1px #000;
    border-radius: 10px;
    background-color:	#008000;
    background-image: linear-gradient(to top left, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2) 30%, rgba(0, 0, 0, 0));
    box-shadow: inset 2px 2px 3px rgba(255, 255, 255, 0.6), inset -2px -2px 3px rgba(0, 0, 0, 0.6);
}

.start:hover {
    background-color: rgba(255, 0, 0, 1);
}

.start:active {
    box-shadow: inset -2px -2px 3px rgba(255, 255, 255, 0.6), inset 2px 2px 3px rgba(0, 0, 0, 0.6);
}
</style>
<script> 
function f1()
{
	window.location = 'AgriSolution.jsp';
}

</script>
</head>
<body>
<h1>Agri Solutions</h1>
<p>For the betterment of farmers....</p>
<input class="start" type='button' value=' Go To HOME' onclick="f1()"/>

</body>
</html>