<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
*{
    box-sizing : border-box;
    margin:0;
    padding:0;
}
body{
    height: 100vh;
    width : 100vw;
}
.banner{
    display: block;
    height: 120px;
    width: 100vw;
    background-image: url("./Images/ccs\ univercity\ logo.jpeg");
    background-size: 100% 100%;
}
.inner{
    display : grid;
    align-items: center;
    justify-content: center;
    margin-top : 50px;
}
.check{
    width: 300px;
    height : 300px;
}
img{
    margin-left : 80px;
}
.greet{
	margin-top: 20px;
}
.discription{
	margin-top: 40px;
}

</style>
<body>
    <div class="container">
        <div class="banner"></div>
        <div class="inner">
            <img class="check" src="https://www.bing.com/th/id/OGC.22919ad969d4fcf8280c47f4c4d6a643?pid=1.7&rurl=https%3a%2f%2fmedia1.tenor.com%2fimages%2f22919ad969d4fcf8280c47f4c4d6a643%2ftenor.gif%3fitemid%3d15903843&ehk=nhF48IPHgqpOUHEaQC6NjyZ6Tq4e31HLUWanQhus8js%3d" alt="" srcset=""><br><br>
            <h2 class="greet">Congratulation Exam have been Submitted !! </h2><br><br>
            <h3 class="discription">Hope You have done good , The result will declare soon !!</h3>
        </div>
    </div>
</body>
</html>