<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="jsp.tutorial.test"%>
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
<%
 test connecttoSearch = new test();
 List playerlist=connecttoSearch.doPost();
 out.print(playerlist);
 out.print("hello");
 %>
 
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
      <ul class="loginsheet">
          <li>
            <table>
              <tr>
                <td><h1>Login</h1></td>
                <td><button class="exitlogin" type="button" name="button">X</button></td>
              </tr>
            </table>
          </li>
          <li>
            UserName
            <input type="text" id="emaillogin" name="" value="" placeholder="Email">
          </li>
          <li>
            Password
            <input type="password" id="passwordlogin" name="" value="" placeholder="Password">
          </li>
          <li>
            <h1 class="loginbutton">Login</h1>
          </li>
        </ul>
    </div>

    <div class="signup">
      <ul class="signupsheet">
          <li>
            <table>
              <tr>
                <td><h1>Sign up</h1></td>
                <td><button class="exitsignup" type="button" name="button">X</button></td>
              </tr>
            </table>
          </li>
          <li><h3>Fill in this form:</h3></li>
          <li>
            <h3>First name</h3>
            <input type="text" id="firstname" name="" value="" placeholder="First name">
          </li>
          <li>
            <h3>Last name</h3>
            <input type="text" id="lastname" name="" value="" placeholder="Last name">
          </li>
          <li>
            <table>
              <td class="gender">
                <input id="male" class="radiobutton" type="radio" name="gender" value="male">
                <label for="">Male</label>
              </td>
              <td class="gender">
                <input id="female" class="radiobutton" type="radio" name="gender" value="female">
                <label for="">Female</label>
              </td>
            </table>
          </li>
          <li>
            <h3>Email</h3>
            <input type="text" id="emailsignup" name="" value="" placeholder="Email">
          </li>
          <li class="passli">
            <h3>Password</h3>
            <input type="password" id="passwordsignup" name="" value="" placeholder="Password">
          </li>
          <li>
            <h3>Confirm password</h3>
            <input type="password" id="confirmpassword" name="" value="" placeholder="Confirm password">
          </li>
          <li>
            <h1 class="signupbutton">Sign up</h1>
          </li>
        </ul>
    </div>

    <div class="menu">
      <table>
        <tr>
          <td class="AboutTeam">About our Team</td>
          <td class="AboutPlayer">About our Players</td>
          <td class="MatchHistory">Match History</td>
          <td class="Photos">Photos</td>
          <td class="JoinForm">Joining Form</td>
          <td class="Boards">Boards</td>
          <td class="Reservation">Reserve for Match</td>
        </tr>
      </table>
    </div>


    <div class="pages">
      <div class="firstpage">
        <img src="assets/돌덩이로고.png" alt="로고">
      </div>

      <div class="AT">

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
            <tr>
              <td class="C1">
                <div class="C1">
                  <img src="assets/basic.jpeg" alt="">
                  <h1>Name: </h1>
                  <h1>Age: </h1>
                  <h1>Number: </h1>
                </div>
              </td>
              <td class="C2">
                <div class="C2">
                  <img src="assets/basic.jpeg" alt="">
                  <h1>Name: </h1>
                  <h1>Age: </h1>
                  <h1>Number: </h1>
                </div>
              </td>
              <td>
                <div class="C3">
                  <img src="assets/basic.jpeg" alt="">
                  <h1>Name: </h1>
                  <h1>Age: </h1>
                  <h1>Number: </h1>
                </div>
              </td>
              <td>
                <div class="C4">
                  <img src="assets/basic.jpeg" alt="">
                  <h1>Name: </h1>
                  <h1>Age: </h1>
                  <h1>Number: </h1>
                </div>
              </td>
            </tr>
          </table>
        </div>
      </div>

      <div class="MH">
      </div>

      <div class="PH">
        <h1>Photos</h1>

      </div>

      <div class="JF">
        <h1>Join our team!</h1>
        <h2>Name:</h2>
        <input type="text" name="" value="">
        <h2>Age:</h2>
        <input type="text" name="" value="">
        <h2>Position:</h2>
        <input type="text" name="" value="">
        <h2>Email:</h2>
        <input type="text" name="" value="">
      </div>

      <div class="BR">
        <h1>Boards</h1>
        <table>
          <tr>
            <th>Number</th>
            <th>Title</th>
            <th>ID</th>
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
        <h1>Reserve for Match</h1>
        <h2>Choose a match that you can play</h2>
        <form>
          <p><input type="date"></p>
          <p><input type="submit" value="Submit"></p>
        </form>
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