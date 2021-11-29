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

  $(".AboutPlayer").click(function() {
    $(prevpage).css("display","none");
    $(".AP").css("display", "block");
    prevpage =".AP";
  })

  $(".MatchHistory").click(function() {
    $(prevpage).css("display","none");
    $(".MH").css("display", "block");
    prevpage = ".MH";
  })

  $(".Photos").click(function() {
    $(prevpage).css("display","none");
    $(".PH").css("display", "block");
    prevpage = ".PH";
  })

  $(".JoinForm").click(function() {
    $(prevpage).css("display","none");
    $(".JF").css("display", "block");
    prevpage = ".JF";
  })

  $(".Boards").click(function() {
    $(prevpage).css("display","none");
    $(".BR").css("display", "block");
    prevpage = ".BR";
  })

  $(".Reservation").click(function() {
    $(prevpage).css("display","none");
    $(".RM").css("display", "block");
    prevpage = ".RM";
  })

})
