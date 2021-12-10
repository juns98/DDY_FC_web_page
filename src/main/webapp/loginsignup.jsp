<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="jquery/jquery-3.6.0.js"></script>
<script type = "text/javascript" src="jquery/login.js"></script>
<link rel="stylesheet" href="login.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/south-street/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
</head>
<body>
    <div class="header">
      <h1>Welcome to 돌덩이FC(DolDungYee FC) page!</h1>
      <h2>Please Login or Sign up to View our page</h2>
    </div>
    <div class="container">
    <div class="gridview">
      <div class="login">
        Login
      </div>
      <div class="signup">
        Sign up
      </div>
      <div class="table">
        <form class="loginsheet" action="login.jsp">
        <ul>
          <li><h1>Login</h1></li>
          <li id="emailnotice">Enter user name and password:</li>
          <li>
            <h3>Email</h3>
            <input type="text" id="emaillogin" name="loginemail" value="" placeholder="Email">
          </li>
          <li>
            <h3>Password</h3>
            <input type="password" id="passwordlogin" name="loginpassword" value="" placeholder="Password">
          </li>
          <li>
            <input class="loginbutton" type="submit" name="" value="login">
          </li>
          </ul>
        </form>

        <form class="signupsheet" action="validate.jsp">
        <ul>
          <li><h3>Sign up</h3></li>
          <li><h3>Fill in this form:</h3></li>
          <li>
            <h3>First name</h3>
            <input type="text" id="firstname" name="firstname" value="" placeholder="First name">
          </li>
          <li>
            <h3>Last name</h3>
            <input type="text" id="lastname" name="lastname" value="" placeholder="Last name">
          </li>
          <li>
            <table>
              <td class="gender">
                <input id="manager" class="radiobutton" type="radio" name="category" value="manager">
                <label for="">Manager</label>
              </td>
              <td class="gender">
                <input id="regular" class="radiobutton" type="radio" name="category" value="regular">
                <label for="">Regular</label>
              </td>
            </table>
          </li>
          <li>
            <h3>Email</h3>
            <input type="text" id="emailsignup" name="email" value="" placeholder="Email">
          </li>
          <li class="passli">
            <h3>Password</h3>
            <input type="password" id="passwordsignup" name="password" value="" placeholder="Password">
          
          </li>
          <li>
            <h3>Confirm password</h3>
            <input type="password" id="confirmpassword" name="" value="" placeholder="Confirm password">
          
          </li>
          <li>
            <h2 class="checkinfo">Check your information</h2>
          </li>
          <li>
            <input class="signupbutton" type="submit" name="" value="Sign up">
          </li>
          </ul>
        </form>
  
      </div>
    </div>
  </div>
  </body>
</html>