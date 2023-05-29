<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

#wrapper{
    height:100vh;
    overflow-y:hidden;
    overflow-x:hidden;
}
.container{
    height:100%;
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
 
}
.contact{
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	gap:3px;
}
.con{
    width: 25%;
    height:200px;
    position: relative;
    padding:25px;
    margin-top:10px;
    margin-bottom: 20px;
    border-radius: 10px;
    overflow: hidden;
    text-align: center;
    font-size: 25px; 
}
#conn{
    width: 40%;
    height:600px;
    position: relative;
    margin: 50px 0px 0 360px;
    border-radius: 10px;
    overflow: hidden;
    text-align: center;
    padding:30px;
    color:blue;
    font-size: 25px; 
}
input[type=text]
{
    width: 300px;
    height:35px;
}
input[type=submit]
{
    width: 60px;
    height:25px;
}
body{
    background-image:url(https://thumbs.dreamstime.com/b/wheat-farm-background-wallpaper-abstract-vintage-sunset-65850813.jpg);
    background-size: cover;
}
pre{
    padding-top: 30px;
    text-align: center;
    font-size: 15px;
    padding-right: 100px;
}
    </style>
</head>
<body style="overflow-y:hidden;">
  <div class="wrapper">
        <div class="container">
            <div class="contact">
<div class="con"><h3>Our main office</h2>
    <pre>
        clement town,dehradun
        pin code:248002
    </pre>
</div>
<div class="con">
    <h3>Phone number</h3>
<pre>
    180-1800-1234
    888-555-1212(toll free)
</pre>
</div>

<div class="con"><h3>Email</h3>
<pre>
    agrisolution@gmail.com
    agrisolution@outlook.com
</pre>
</div>
<div id="conn">
<h2>Contact Us</h2><br>
<form action="contactus">
    <input type="text" name='s1' placeholder="Enter your Name"/><br><br>
    <input type="text" name='s2' placeholder="Enter a valid email address"/><br><br>
    <textarea id="story" name="q1" rows="5" cols="38"></textarea><br>

    <input type="submit"/>
</form>
</div>          
        </div>
    </div> 
</div>
</body>
</html>