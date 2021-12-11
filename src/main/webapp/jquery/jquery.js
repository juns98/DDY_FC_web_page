var prevpage =".firstpage";

$(document).ready(function() {
  $(".home").click(function() {
    if (prevpage != null) {
      $(prevpage).css("display","none");
    }
    $(".firstpage").css("display", "flex");
    prevpage = ".firstpage";
  })

  $(".loginopen").click(function() {
    $(".modal").fadeIn(300, function() {
      $(".login").css("display","flex");
      $(".login").fadeIn(300);
    })
  })

  $(".exitlogin").click(function() {
    $(".modal").fadeOut(300, function() {
      $(".login").css("display","none");
      $(".login").fadeOut(300);
    })
  })

  $(".signupopen").click(function() {
    $(".modal").fadeIn(300, function() {
      $(".signup").css("display","flex");
      $(".signup").fadeIn(300);
    })
  })
  function checkEmail(email) {
    var temp = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return temp.test(email);
  }
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

  $(".exitsignup").click(function() {
    $(".modal").fadeOut(300, function() {
      $(".signup").css("display","none");
      $(".signup").fadeOut(300);
    })
  })

  $(".AboutTeam").click(function() {
    $(prevpage).css("display","none");
    $(".AT").css("display", "block");
    prevpage = ".AT";
  })
  $(".ATtoJoin").click(function() {
    $(prevpage).css("display","none");
    $(".JF").css("display", "block");
    prevpage = ".JF";
  })

//function for about players
  $(".AboutPlayer").click(function() {
    $(prevpage).css("display","none");
    $(".AP").css("display", "block");
    prevpage =".AP";
  })
	$(".forward").click(function() {
		$(".F").css("display", "block");
		$(".M").css("display", "none");
		$(".D").css("display", "none");
		$(".G").css("display", "none");
	})
	$(".midfielder").click(function() {
		$(".F").css("display", "none");
		$(".M").css("display", "block");
		$(".D").css("display", "none");
		$(".G").css("display", "none");
	})
	$(".defender").click(function() {
		$(".F").css("display", "none");
		$(".M").css("display", "none");
		$(".D").css("display", "block");
		$(".G").css("display", "none");
	})
	$(".goalkeeper").click(function() {
		$(".F").css("display", "none");
		$(".M").css("display", "none");
		$(".D").css("display", "none");
		$(".G").css("display", "block");
	})

//function about match history
  $(".MatchHistory").click(function() {
    $(prevpage).css("display","none");
    $(".MH").css("display", "block");
    prevpage = ".MH";
  })

//function about photos
  $(".Photos").click(function() {
    $(prevpage).css("display","none");
    $(".PH").css("display", "block");
    prevpage = ".PH";
  })

//function about joining forms
  $(".JoinForm").click(function() {
    $(prevpage).css("display","none");
    $(".JF").css("display", "block");
    prevpage = ".JF";
  })
  $(".submitform").click(function() {
    if ($(".name").val() == "") {
      alert("Please fill in your name");
    }
    else if ($(".age").val() == "") {
      alert("Please fill in your age");
    }
    else if ($(".position").val() == "") {
      alert("Please fill in your Position");
    }
    else if ($(".email").val() == "") {
      alert("Please fill in your Email");
    }
    else if ($(".selfintroduce").val() == "") {
      alert("Please fill in about yourself!");
    }
    else {
      $(prevpage).css("display","none");
      $(".JF2").css("display", "block");
      prevpage = ".JF2";
    }
  })
  $(".jointomain").click(function() {
    $(prevpage).css("display","none");
    $(".firstpage").css("display", "block");
    prevpage = ".firstpage";
  })

//function about boards
  $(".Boards").click(function() {
    $(prevpage).css("display","none");
    $(".BR").css("display", "block");
    prevpage = ".BR";
  })
	$(".Addbutton").click(function() {
		$(prevpage).css("display", "none");
		$(".BW").css("display", "block");
		prevpage =".BW";
	})
	$(".gobackboardbutton").click(function() {
		$(prevpage).css("display", "none");
		$(".BR").css("display", "block");
		prevpage = ".BR";
	})


//function about reserving match
  $(".Reservation").click(function() {
    $(prevpage).css("display","none");
    $(".RM").css("display", "block");
    prevpage = ".RM";
  })
$(".reservematchbutton").click(function() {
	alert('Successfully reserved for matches');
	$(prevpage).css("display", "none");
	$(".firstpage").css("display", "block");
	prevpage=".firstpage";
})

//function related to playground
  $(".Playground").click(function() {
    $(prevpage).css("display","none");
    $(".PG").css("display", "block");
    prevpage = ".PG";
  })
  $(".squiz").click(function() {
    $(".chooseAction").css("display","none");
    $(".quiz").css("display", "block");
    $(".squad").css("display", "none");
  })
  $(".csquad").click(function() {
    $(".chooseAction").css("display","none");
    $(".squad").css("display", "block");
    $(".quiz").css("display", "none");
  })
  var corrects = 0;
  var quiznum = 1;
  $(".startQuiz").click(function() {
    $(".quiz").css("display", "none");
    $(".quizform").css("display", "block");
    var qn = "Number: " + quiznum;
    $(".quiznum").text(qn);
  })
})
