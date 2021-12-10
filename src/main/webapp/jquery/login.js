var checkf = 2;
var checkl = 2;
var checkg = 2;
var checke = 2;
var checkp = 2;
var checkcp = 2;
var checkel = 2;
var checkpl = 2;

var curemail;
var curpass;
var email;
var password;
var signedup = 0;

var cl = 0;
var sl = 0;
var sp = 0;
var digit = 0;
var len = 0;

var checklist = [0,0,0,0,0];

$(document).ready(function() {
  //if you click sign up
  $(".signup").click(function() {
    $(".loginsheet").hide();
    $(".signup").css("background-color", "white");
    $(".signup").css("border-top-color", "#2F558E");
    $(".signup").css("border-top-width", "10px");
    $(".signup").css("border-top-style", "solid");
    $(".login").css("background-color", "#A0A0A0");
    $(".login").css("border-top-color", "#A0A0A0");

    $(".signupsheet").fadeIn();
  });

  //if you click login
  $(".login").click(function() {
    $(".signupsheet").hide();
    $(".login").css("background-color", "white");
    $(".login").css("border-top-color", "#2F558E");
    $(".login").css("border-top-width", "10px");
    $(".login").css("border-top-style", "solid");
    $(".signup").css("background-color", "#A0A0A0");
    $(".signup").css("border-top-color", "#A0A0A0");

    $(".loginsheet").fadeIn();
    $("#signsuccess").css("display", "none");
  });

  function checkPassword(content) {
    var digit = 0, cl = 0, sl = 0, sp = 0;
    for (var i = 0; i<content.length; i++) {
        if (content.charAt(i).match(/[0-9]/) != null) {
          digit = 1;
        }
        if (content.charAt(i).match(/[A-Z]/)) {
          cl = 1;
        }
        if (content.charAt(i).match(/[a-z]/)) {
          sl = 1;
        }
        if (content.charAt(i).match(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/)) {
          sp = 1;
        }
    }
    if (digit == 1 && cl == 1 && sl == 1 && sp == 1) {
      return true;
    }
    else {
      return false;
    }
  }
  function checkEmail(email) {
    var temp = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return temp.test(email);
  }
  $(".checkinfo").click(function() {
      var firstname = $("#firstname").val();
      var lastname = $("#lastname").val();
      var birth = $(".birth").val();
      var email = $("#emailsignup").val();
      var password = $("#passwordsignup").val();
      var conpass = $("#confirmpassword").val();

      if (firstname == "") {
        alert("Please fill in first name");
      }
      else if (lastname == "") {
        alert("Please fill in last name");
      }
      else if (birth == "") {
        alert("Please fill in your birthday");
      }
      else if (email == "") {
        alert(" Please fill in your email");
      }
      else if (checkEmail(email) == false) {
        alert("Your Email is invalid");
      }
      else if (password == "") {
        alert("Please fill in your password");
      }
      else if (checkPassword(password) == false) {
        alert("Please fill in correct password");
      }
      else if (conpass == "") {
        alert("Please confirm your password");
      }
      else if (conpass != password) {
        alert("Password does not match");
      }
  	else {
  		$(".signupbutton").css("display", "block");
  	}
    })
});
