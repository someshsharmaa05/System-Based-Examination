<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
    margin: auto;
    padding: auto;
    font-family: 'Times New Roman', Times, serif;
}
.outercontainer{
    width: 100vw;
    height: 81vh;
    margin: auto;
    display: flex;
    align-items: center;
    justify-content: center;
    /* background-image: linear-gradient(to top, #37ecba 0%, #72afd3 100%); */
    background-color: #F2F4FF;
    background-image: url("./Images/NEWBG@2x.png");
    background-position: center center;
    background-size: 100% 100%;
}
.innercontainer{
    width: 65%;
    height: 50%;
    display: flex;
    border-radius: 15px;
    box-shadow: 5px 5px 10px rgb(180, 180, 225);
}
.box1{
    width: 45%;
    float: left;
    background-image: url("./Images/Asset\ 5@2x.png");
    background-size: cover;
    background-position: center center;
    background-repeat: no-repeat;
    border-radius: 15px 0px 0px 15px ;
}
.box2{
    /* background-image: linear-gradient(to right, #92fe9d 0%, #00c9ff 100%); */
    /* background-color: floralwhite; */
    background-color: white;
    width: 55%;
    float: right;
    padding: 10px 0px 0px 50px;
    font-size: 18px;
    border-radius: 0px 15px 15px 0px ;
}
button{
    margin-top: 30px;
    border: none;
    border-radius: 15px;
    padding: 15px 75px;
    font-size: 15px;
    cursor: pointer;
    font-weight: bold;
    color: white;
    /* background-image: linear-gradient(to right, #FF5F6D, #FFC371); Gradient Background */
    /* background-color: #D9AFD9; */

    /* background-image: linear-gradient(0deg, #D9AFD9 0%, #97D9E1 100%); */
    transition: background-color 0.8s ease;
}
#btn1{
    background-color: #a3a0a0;
}
#btn2{
    background-color: #F2B200;
    margin-left: 20px;
}
#btn1:hover{
    background-color: #858282;
}
#btn2:hover{
    background-color:#c69205;
}
h3{
    margin-top: 50px;
    font-size: 28px;
    line-height: 0%;
    margin-bottom: 45px;
}
input,textarea,option,select{
    /* background-color: #D0F0C0; */
}
.banner{
    height: 140px;
    width: 100%;
    background-image: url("./Images/ccs\ univercity\ logo.jpeg");
    background-size: 100% 100%;
}
	
</style>
</head>
<body>
    <div class="banner">
        
    </div>
    <div class="outercontainer">
      <div class="innercontainer">
        <div class="box1"></div>
        <div class="box2">
          <center>
            <h3>Student Login !!</h3>
          </center>
          <form action="scrietstudentlogin" method="post">
            <label for="stemail">Student Roll no :</label>
            <input
              class="myinput"
              type="number"
              id="stemail"
              placeholder="Enter Your Email id "
              name="studentemialid"
            />
            <br><br>
            <label for="stpass" >DOB :</label>
                <input type="date" id="stpass" name="studentepassword">
                <br><br>
            <button type="reset" id="btn1">Clear All</button>
            <button type="submit" id="btn2">Sign Up</button>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>