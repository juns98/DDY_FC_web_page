<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="jsp.player"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title>Final Project</title>
<script type="text/javascript" src="jquery/jquery-3.6.0.js"></script>
<script type = "text/javascript" src="jquery/jquery.js"></script>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/south-street/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<title>Insert title here</title>
</head>
<body>

 
    <header>
      <table>
        <tr>
          <td>
            <img src="assets/instagram.png" alt="">
            <img src="assets/유튜브.png" alt="">
          </td>
          <td>
            <h1 class="home">돌덩이 FC</h1>
          </td>
          <td>
            <button class="loginopen" type="button" name="button">Login</button>
            <button class="signupopen" type="button" name="button">Sign Up</button>
          </td>
        </tr>
      </table>
    </header>

    <div class="login">
      <div class="loginsheet">
            <table>
              <tr>
                <td><h1>Login</h1></td>
                <td><button class="exitlogin" type="button" name="button">X</button></td>
              </tr>
            </table>
            <h1>Email</h1>
            <input type="text" id="emaillogin" name="" value="" placeholder="Email">
            <h1>Password</h1>
            <input type="password" id="passwordlogin" name="" value="" placeholder="Password">
            <button class="loginbutton" type="button" name="button">Login</button>
        </div>
    </div>

    <div class="signup">
      <form class="signupsheet" action="validate.jsp" method="post">
        <table>
          <tr>
            <td><h1>Sign up</h1></td>
            <td><button class="exitsignup" type="button" name="button">X</button></td>
          </tr>
        </table>
        <h3>Fill in this form:</h3>
        <h3>First name</h3>
        <input type="text" id="firstname" name="firstname" value="" placeholder="First name">
        <h3>Last name</h3>
        <input type="text" id="lastname" name="lastname" value="" placeholder="Last name">
        <h3>Birthday</h3>
        <input class="birth" type="date" name="birthday" value="">
        <table>
          <td class="gender">
            <input id="male" class="radiobutton" type="radio" name="gender" value="male">
            <label for="male">Male</label>
          </td>
          <td class="gender">
            <input id="female" class="radiobutton" type="radio" name="gender" value="female">
            <label for="female">Female</label>
          </td>
        </table>
        <h3>Email</h3>
        <input type="text" id="emailsignup" name="email" value="" placeholder="Email">
        <h3>Password</h3>
        <h4>At least 6 letters containing one capital letter, one special letter</h4>
        <input type="password" id="passwordsignup" name="password" value="" placeholder="Password">
        <h3>Confirm password</h3>
        <input type="password" id="confirmpassword" name="" value="" placeholder="Confirm password"><br>
        <h3 class="checkinfo">Check your information</h3>
        <input class="signupbutton" type="submit" value="Sign up">
      </form>
    </div>

    <div class="menu">
      <table>
        <tr>
          <td class="AboutTeam">About Team</td>
          <td class="AboutPlayer">Players</td>
          <td class="MatchHistory">Match History</td>
          <td class="Photos">Photos</td>
          <td class="JoinForm">Joining Form</td>
          <td class="Boards">Boards</td>
          <td class="Reservation">Reserve for Match</td>
          <td class="Playground">PlayGround</td>
        </tr>
      </table>
    </div>


    <div class="pages">
      <div class="firstpage">
        <img src="assets/돌덩이로고.png" alt="로고" width="700px">
      </div>

      <div class="AT">
        <h1>When?</h1>
        <p>DolDungYee FC was made on 2nd Feburary, 2020</p>
        <h1>Where?</h1>
        <p>It first started on Chorim Elementary School</p>
        <h1>Who?</h1>
        <p>Starting member consisted of Joonsun Baek, Unseo Ko, Hojun Byeon, Seoktae Kim</p>
        <h1>Why?</h1>
        <p>This team was made to invite people who love to play soccer, but do not have people to play with</p>
        <h1>Why DolDungYee?</h1>
        <p>Name DolDungYee in Korean means Rock. We wanted our team to be as strong as a rock</p>
        <h1>Would you like to join our team? <button class="ATtoJoin" type="button" name="button">Click Here!</button> </h1>
      </div>
		

      <div class="AP">
        <div class="APhead">
          <table>
            <tr>
              <th>Forward</th>
              <th>Midfielder</th>
              <th>Defender</th>
              <th>GoalKeeper</th>
            </tr>
          </table>
        </div>
        <div class="Prow">
          <table>
          <%
			 player players = new player();
			 List playerlist=players.doPost();
		
			for(int i=0;i<playerlist.size();i+=4){
		   		List player1=(List)playerlist.get(i);
		   		List player2=(List)playerlist.get(i+1);
		   		List player3=(List)playerlist.get(i+2);
		   		List player4=(List)playerlist.get(i+3);
 			%>
            <tr>
              <td class="C1">
                <div class="C1">
                  <img src="assets/basic.jpeg" alt="">
                  <h1>Name: <%=player1.get(1) %><%=player1.get(2) %></h1>
                  <h1>Age: <%=player1.get(3) %></h1>
                  <h1>Number: <%=player1.get(0) %></h1>
                </div>
              </td>
              <td class="C2">
                <div class="C2">
                  <img src="assets/basic.jpeg" alt="">
                  <h1>Name: <%=player2.get(1) %><%=player2.get(2) %></h1>
                  <h1>Age: <%=player2.get(3) %></h1>
                  <h1>Number: <%=player2.get(0) %></h1>
                </div>
              </td>
              <td>
                <div class="C3">
                  <img src="assets/basic.jpeg" alt="">
                   <h1>Name: <%=player3.get(1) %><%=player3.get(2) %></h1>
                  <h1>Age: <%=player3.get(3) %></h1>
                  <h1>Number: <%=player3.get(0) %></h1>
                </div>
              </td>
              <td>
                <div class="C4">
                  <img src="assets/basic.jpeg" alt="">
                  <h1>Name: <%=player4.get(1) %><%=player4.get(2) %></h1>
                  <h1>Age: <%=player4.get(3) %></h1>
                  <h1>Number: <%=player4.get(0) %></h1>
                </div>
              </td>
            </tr>
            <% 
				} 
			%>
          </table>
        </div>
      </div>


      <div class="MH">
        <h1>Match History</h1>
        <table>
          <tr>
            <th>Against</th>
            <th>Score</th>
            <th>Result</th>
          </tr>
          <tr>
            <td>Cruise FC</td>
            <td>1: 6</td>
            <td>Lose</td>
          </tr>
        </table>
        <h1>Statistics</h1>
        <table>
          <tr>
            <td>Wins: 0</td>
            <td>Ties: 0</td>
            <td>Lost: 1</td>
          </tr>
        </table>
      </div>

      <div class="PH">
        <h1>Photos</h1>
        <div class="photorow">
          <div class="photocol1">
            <img src="photos/1.jpg" alt="">
            <img src="photos/2.jpg" alt="">
            <img src="photos/3.jpg" alt="">
            <img src="photos/4.jpg" alt="">
            <img src="photos/5.jpg" alt="">
            <img src="photos/6.jpg" alt="">
          </div>
          <div class="photocol2">
            <img src="photos/7.jpg" alt="">
            <img src="photos/8.jpg" alt="">
            <img src="photos/9.jpg" alt="">
            <img src="photos/10.jpg" alt="">
            <img src="photos/11.jpg" alt="">
          </div>
          <div class="photocol3">
            <img src="photos/12.jpg" alt="">
            <img src="photos/13.jpg" alt="">
            <img src="photos/14.jpg" alt="">
            <img src="photos/15.jpg" alt="">
            <img src="photos/16.jpg" alt="">

          </div>
          <div class="photocol4">
            <img src="photos/17.jpg" alt="">
            <img src="photos/18.jpg" alt="">
            <img src="photos/19.jpg" alt="">
            <img src="photos/1.jpg" alt="">
            <img src="photos/12.jpg" alt="">
          </div>
        </div>

      </div>

      <div class="JF">
        <h1>Join our team!</h1>
        <h2>Name:</h2>
        <input class="name" type="text" name="" value="">
        <h2>Age:</h2>
        <input class="age" type="text" name="" value="">
        <h2>Position:</h2>
        <input class="position" type="text" name="" value="">
        <h2>Email:</h2>
        <input class="email" type="text" name="" value="">
        <h2>About Yourself:</h2>
        <textarea class="selfintroduce" name="name" rows="8" cols="30"></textarea><br>
        <button class="submitform" type="button" name="button">Submit</button>
      </div>
      <div class="JF2">
        <h1>Thank you for Applying!</h1>
        <h2>We will Email you as soon as possible</h2>
        <button class="jointomain" type="button" name="button">Go back to main</button>
      </div>

      <div class="BR">
        <h1 style="font-size: 50px;">Boards</h1>
        <table>
          <tr>
            <th class="BRnum">Number</th>
            <th class="BRtitle">Title</th>
            <th class="BRID">ID</th>
          </tr>
          <tr>
            <td>1</td>
            <td>hello</td>
            <td>temp</td>
          </tr>
          <tr>
            <td>2</td>
            <td>hello2</td>
            <td>temp2</td>
          </tr>
        </table>


      </div>

      <div class="RM">
        <h1>Future Matches</h1>
        <h2>Choose a match that you can play</h2>
        <table>
          <tr>
            <th>Date</th>
            <th>Opponent</th>
            <th>Location</th>
          </tr>
          <tr>
            <td>2021/12/19</td>
            <td>Tree FC</td>
            <td>Seoul</td>
          </tr>
        </table>
      </div>

      <div class="PG">
        <table>
          <tr>
            <th class="squiz">Soccer Quiz</th>
            <th class="csquad">Create Squad</th>
          </tr>
        </table>
        <div class="chooseAction" style="font-size: 40px; margin-top: 100px;">
          Choose your Action above!
        </div>
        <div class="quiz">
          <h1>Are you ready to Start?</h1>
          <button class="startQuiz" type="button" name="button">Start!</button>
        </div>
        <div class="quizform">
          <h1 class="quiznum"></h1>
          <h1>Q1. What is your age?</h1>
          <h2>1. 10</h2>
          <h2>2. 20</h2>
          <h2>3. 30</h2>
          <h2>4. 30</h2>
        </div>
        <div class="squad">
          <h1>Not serviced yet</h1>
        </div>
      </div>
    </div>

    <footer>
      <h1>DolDungYee FC</h1>
      <h2>Location: 성남시(Seongnam-si)</h2>
      <h2>Contact: 010-XXXX-XXXX</h2>
    </footer>

    <div class="modal">

    </div>

  </body>
</html>