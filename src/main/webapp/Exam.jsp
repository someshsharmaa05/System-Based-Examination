<%@page import="java.util.Base64"%>
<%@page import="scriet.test.dto.Student"%>
<%@page import="scriet.test.Service.StudentService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
    box-sizing: border-box;
    margin: auto;
    padding: auto;
}
body{
    width: 100%;
    height: 100%;
}
.outer{
    width: 100%;
    height: 100%;
}
.scrietbanner{
    display: block;
    height: 120px;
    width: 100vw;
    background-image: url("./Images/ccs\ univercity\ logo.jpeg");
    background-size: 100% 100%;
}
.sn{
    background-color: #F2B200;
    margin-left: 820px;
}
.sn:hover{
    background-color: #c69205;
}
.st{
    background-color: #F2B200;
}
.st:hover{
    background-color: #c69205;
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
.bn{
    background-color: #a3a0a0;
}
.bn:hover{
    background-color: #858282;
}
.studentinfo{
    /* height: ; */
    line-height: 40px;
    padding-top: 20px;
    padding-bottom: 20px;
    display: flex;
    width: 100%;
    font-size: 20px;
    /* background-color: #a3a0a0; */
}
.studentcontent{
    width: 60%;
    margin: 0px;
    padding-left: 30px;
}
.studentphoto{
    padding-left: 50px;
    height: 100%;
    width: 16%;
    margin: 0px;
}
img{
    height: 200px;
    width: 100%;
}
#instructions{
 padding-top: 10px;
}
#p1{
    padding-top: 20px;
    padding-left: 100px;
    font-size: 18px;
    font-weight: 600;
}
ul{
    padding-top: 20px;
}
li{
    margin-left: 150px;
    padding-right: 200px;
}
#timer{
    margin-left: 1300px;
}
.step{
    margin-left: 50px;
    display: none;
}
</style>
</head>
<body>
<%
 long rollno = (long)session.getAttribute("strollno");
 StudentService stuservice = new StudentService();
 Student student = stuservice.getStudentByRollno(rollno);
 
 String image = Base64.getEncoder().encodeToString(student.getFetchImage());
%>
<div class="outer">
    <div class="scrietbanner"></div><hr>
    <div class="studentinfo">
        <div class="studentphoto">   
            <img src="data:image/jpeg;base64,<%=image%>" alt="">  
        </div>
        <div class="studentcontent">
            <h3 class="stdiscription" id="stname">Somesh Sharma</h3>
            <h3 class="stdiscription" id="strollno">100200155</h3>
            <h3 class="stdiscription" id="stcourse">B.tech</h3>
            <h3 class="stdiscription" id="styear">4th Year</h3>
            <h3 class="stdiscription" id="stbranch">Computer Science </h3>
        </div>
    </div>
    <div id="instructions">
        <center><h1 id="Welcome">Welcome to the SCRIET Mega Quiz Compitions </h1></center>
        <p id="p1">Please follow the instructions below:</p>
        <ul>
            <li>Step 1: Lorem ipsum dolor sit amet consectetur adipisicing elit. Excepturi, molestiae.</li>
            <li>Step 2: Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam commodi dolorum ea officiis. Nesciunt aliquid facere quis ea similique numquam!</li>
            <li>Step 3: Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veniam atque repellat nulla. Eum, quis. Aliquid ea cum aliquam laborum sint? Quam excepturi ipsum, numquam culpa consequuntur dolores magni quasi vel?</li>
            <li>Step 3: Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia delectus, neque reprehenderit assumenda perferendis soluta.</li>
        </ul>
        <center><button onclick="startForm()" class="st">Start Test</button></center>
    </div>
    <form id="multi-step-form" action="submitexam" method="post" style="display: none;">

        <div id="timer" style="display: none;">
            <h3>Time Left:</h3>
            <span id="timer-display"></span>
        </div>
        <!-- Step 1 -->
        <div class="step" id="step-1">
            <h2>Question 1 :</h2>
            <label for="qs1">A person crosses a 600 m long street in 5 minutes. What is his speed in km per hour?</label><br>
            <input type="radio" name="q1" id="qs1" value="0">3.6<br>
            <input type="radio" name="q1" id="qs1" value="1">7.2<br>
            <input type="radio" name="q1" id="qs1" value="0">8.4<br>
            <input type="radio" name="q1" id="qs1" value="0">10<br>
            <button type="button" onclick="nextStep()" class="sn" id="start">Save & Next</button>
        </div>
    
        <!-- Step 2 -->
        <div class="step" id="step-2">
            <h2>Question 2 :</h2>
            <label for="qs2">
An aeroplane covers a certain distance at a speed of 240 kmph in 5 hours. To cover the same distance in 1 hours, it must travel at a speed of:</label><br>
            <input type="radio" name="q2" id="qs2" value="0">300 kmph<br>
            <input type="radio" name="q2" id="qs2" value="0">360 kmph<br>
            <input type="radio" name="q2" id="qs2" value="0">600 kmph<br>
            <input type="radio" name="q2" id="qs2" value="1">720 kmph<br>
            <button type="button" onclick="prevStep()" class="bn">Back</button>
            <button type="button" onclick="nextStep()" class="sn">Save & Next</button>
        </div>

        <!-- Step 3 -->
        <div class="step" id="step-3">
            <h2>Question 3</h2>
            <label for="qs3">
A train can travel 50% faster than a car. Both start from point A at the same time and reach point B 75 kms away from A at the same time. On the way, however, the train lost about 12.5 minutes while stopping at the stations. The speed of the car is:</label><br>
            <input type="radio" name="q3" id="qs3" value="0">100 kmph<br>
            <input type="radio" name="q3" id="qs3" value="0">110 kmph<br>
            <input type="radio" name="q3" id="qs3" value="1">120 kmph<br>
            <input type="radio" name="q3" id="qs3" value="0">130 kmph<br>
            <button type="button" onclick="prevStep()" class="bn">Back</button>
            <button type="button" onclick="nextStep()" class="sn">Save & Next</button>
        </div>

        <!-- step 4 -->
        <div class="step" id="step-4">
            <h2>Question 4 :</h2>
            <label for="qs4">If a person walks at 14 km/hr instead of 10 km/hr, he would have walked 20 km more. The actual distance travelled by him is:</label><br>
            <input type="radio" name="q4" id="qs4" value="1">50 km<br>
            <input type="radio" name="q4" id="qs4" value="0">56 km<br>
            <input type="radio" name="q4" id="qs4" value="0">70 km<br>
            <input type="radio" name="q4" id="qs4" value="0">80 km<br>
            <button type="button" onclick="prevStep()" class="bn">Back</button>
            <button type="button" onclick="nextStep()" class="sn">Save & Next</button>
        </div>
    
        <!-- Step 3 -->
        <div class="step" id="step-5">
            <h2>Question 5 :</h2>
            <label for="qs5">
Excluding stoppages, the speed of a bus is 54 kmph and including stoppages, it is 45 kmph. For how many minutes does the bus stop per hour?</label><br>
            <input type="radio" name="q5" id="qs5" value="0">9<br>
            <input type="radio" name="q5" id="qs5" value="1">10<br>
            <input type="radio" name="q5" id="qs5" value="0">12<br>
            <input type="radio" name="q5" id="qs5" value="0">20<br>
            <button type="button" onclick="prevStep()" class="bn">Back</button>
            <button type="submit" class="sn">Submit</button>
        </div>
    </form>
    
</div>
<script>
    let currentStep = 1;
    const form = document.getElementById('multi-step-form');
    const instructions = document.getElementById('instructions');
    const timerDiv = document.getElementById('timer');
    const timerDisplay = document.getElementById('timer-display');
    const steps = form.getElementsByClassName('step');
    let timeRemaining = 10 * 60; // 10 minutes in seconds

    function showStep(stepNumber) {
        for (let i = 0; i < steps.length; i++) {
            steps[i].style.display = 'none';
        }
        document.getElementById(`step-${stepNumber}`).style.display = 'block';
    }

    function nextStep() {
        if (currentStep < steps.length) {
            currentStep++;
            showStep(currentStep);
        }
    }

    function prevStep() {
        if (currentStep > 1) {
            currentStep--;
            showStep(currentStep);
        }
    }

    function startForm() {
        instructions.style.display = 'none'; // Hide instructions
        form.style.display = 'block'; // Show form
        showStep(currentStep); // Show first step

        // Start the timer
        timerDiv.style.display = 'block';
        updateTimerDisplay();
        setInterval(updateTimerDisplay, 1000); // Update timer display every second

        // Automatically submit form when time runs out
        setTimeout(submitForm, timeRemaining * 1000);
    }

    function updateTimerDisplay() {
        const minutes = Math.floor(timeRemaining / 60);
        const seconds = timeRemaining % 60;
        timerDisplay.textContent = `${minutes}:${seconds < 10 ? '0' : ''}${seconds}`;
        timeRemaining--;
    }

    function submitForm() {
        clearInterval(updateTimerDisplay); // Stop updating timer display
        form.submit(); // Submit the form
    }

    showStep(currentStep); // Initially show first step with instructions
    document.getElementById('stname').innerHTML = "<h3><%=student.getName()%></h3>";
    document.getElementById('strollno').innerHTML = "<h3><%=student.getRollno()%></h3>";
    document.getElementById('stcourse').innerHTML = "<h3><%=student.getCourse()%></h3>";
    document.getElementById('styear').innerHTML = "<h3><%=student.getYear()%> year</h3>";
    
    
    
    var inTest = true; // Set this to false when the test is submitted or completed

    // Detect tab switch
    document.addEventListener("visibilitychange", function() {
      if (document.visibilityState === 'hidden' && inTest) {
        var confirmClose = confirm("Leaving this page will end your test. Are you sure you want to leave?");
        if (confirmClose) {
          // Handle tab switch (e.g., submit test)
          // Example: document.getElementById("testForm").submit();
          // Set inTest to false to prevent further prompts
          inTest = false;
        } else {
          // Stay on the page
          document.visibilityState = 'visible';
        }
      }
    });
</script>

</body>
</html>