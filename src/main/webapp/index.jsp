<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="jsp.player"%>
<%@page import="jsp.board"%>
<%@page import="jsp.matchhistory"%>
<%@page import="jsp.futurematch"%>
<%@page import="jsp.quiz"%>

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

</head>
<body>
    <header>
      <table>
        <tr>
          <td>
            <img src="assets/instagram.png" alt="" onclick="location.href='https://www.instagram.com/fc_doldeongyee/';" style="cursor:pointer;">
            <img src="assets/유튜브.png" alt="" onclick="location.href='https://www.youtube.com/channel/UCqbkqP7q_y8_q0LNYVL-K_A';" style="cursor:pointer;">
          </td>
          <td>
            <h1 class="home">돌덩이 FC</h1>
          </td>
          <td>
            <p>Welcome! Logged in as
            <%
            String email = session.getAttribute("email").toString(); 
            session.setAttribute("curemail", email);
            %>
            
            <%= email %>
            </p>
          </td>
        </tr>
      </table>
    </header>

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
              <th class="forward">Forward</th>
              <th class="midfielder">Midfielder</th>
              <th class="defender">Defender</th>
              <th class="goalkeeper">GoalKeeper</th>
            </tr>
          </table>
        </div>
        <div class="Prow">
          <table>
          <%
			player players = new player();
			List playerlist=players.doPost();
        	List forwards=new ArrayList();
        	List midfielders=new ArrayList();
        	List defenders=new ArrayList();
        	List goalkeepers=new ArrayList();
        	List temp = new ArrayList();
        	System.out.println(playerlist);
        	int f = 0, m = 0, d = 0, g = 0;
        	
        	for (int i = 0; i<playerlist.size(); i++) {
        		temp = (List)playerlist.get(i);
        		System.out.println(temp.get(4));
        		if (temp.get(4).toString().equals("FW")) {
        			forwards.add(temp);
        			f += 1;
        		}
        		else if (temp.get(4).toString().equals("MF")) {
        			midfielders.add(temp);
        			m+=1;
        		}
        		else if (temp.get(4).toString().equals("DF")) {
        			defenders.add(temp);
        			d+=1;
        		}
        		else if (temp.get(4).toString().equals("GK")) {
        			goalkeepers.add(temp);
        			g+=1;
        		}
        	}
        	int check = 0;
        	System.out.println(f);
        	
        	for (int i=0; i<forwards.size(); i+=4) {
        		if (check == 0 && forwards.size() - i < 4) {
        			int adds = 4- forwards.size()-i;
        			List array = new ArrayList();
        			for (int j = 0; j<4; j++) {
        				if (j == 2) {
        					array.add(" ");
        				}
        				else {
        					array.add("Nobody");
        				}
        			}
        			for (int j = 0; j < adds; j++) {
        				forwards.add(array);
        			}
        			check = 1;
        		}
        		List player1=(List)forwards.get(i);
    		   	List player2=(List)forwards.get(i+1);
    		   	List player3=(List)forwards.get(i+2);
    		   	List player4=(List)forwards.get(i+3);
 			%> 			
            <tr class="F">
              <td class="F1">
                <div class="F1">
                  <img src="assets/basic.jpeg" alt="">
                  <h1>Name: <%=player1.get(1) %><%=player1.get(2) %></h1>
                  <h1>Age: <%=player1.get(3) %></h1>
                  <h1>Number: <%=player1.get(0) %></h1>
                </div>
              </td>
              <td class="F2">
                <div class="F2">
                  <img src="assets/basic.jpeg" alt="">
                  <h1>Name: <%=player2.get(1) %><%=player2.get(2) %></h1>
                  <h1>Age: <%=player2.get(3) %></h1>
                  <h1>Number: <%=player2.get(0) %></h1>
                </div>
              </td>
              <td>
                <div class="F3">
                  <img src="assets/basic.jpeg" alt="">
                   <h1>Name: <%=player3.get(1) %><%=player3.get(2) %></h1>
                  <h1>Age: <%=player3.get(3) %></h1>
                  <h1>Number: <%=player3.get(0) %></h1>
                </div>
              </td>
              <td>
                <div class="F4">
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
			
			<%
			check = 0;
			System.out.println(m);
			for (int i=0; i<midfielders.size(); i+=4) {
        		if (check == 0 && midfielders.size() - i < 4) {
        			int adds = 4- midfielders.size()-i;
        			List array = new ArrayList();
        			for (int j = 0; j<4; j++) {
        				if (j == 2) {
        					array.add(" ");
        				}
        				else {
        					array.add("Nobody");
        				}
        			}
        			for (int j = 0; j < adds; j++) {
        				midfielders.add(array);
        			}
        			check = 1;
        		}
        		List player1=(List)midfielders.get(i);
    		   	List player2=(List)midfielders.get(i+1);
    		   	List player3=(List)midfielders.get(i+2);
    		   	List player4=(List)midfielders.get(i+3);
 			%> 			
            <tr class="M">
              <td class="M1">
                <div class="M1">
                  <img src="assets/basic.jpeg" alt="">
                  <h1>Name: <%=player1.get(1) %><%=player1.get(2) %></h1>
                  <h1>Age: <%=player1.get(3) %></h1>
                  <h1>Number: <%=player1.get(0) %></h1>
                </div>
              </td>
              <td class="M2">
                <div class="M2">
                  <img src="assets/basic.jpeg" alt="">
                  <h1>Name: <%=player2.get(1) %><%=player2.get(2) %></h1>
                  <h1>Age: <%=player2.get(3) %></h1>
                  <h1>Number: <%=player2.get(0) %></h1>
                </div>
              </td>
              <td>
                <div class="M3">
                  <img src="assets/basic.jpeg" alt="">
                   <h1>Name: <%=player3.get(1) %><%=player3.get(2) %></h1>
                  <h1>Age: <%=player3.get(3) %></h1>
                  <h1>Number: <%=player3.get(0) %></h1>
                </div>
              </td>
              <td>
                <div class="M4">
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
			
			
			<%
			check = 0;
			System.out.println(d);
			for (int i=0; i<defenders.size(); i+=4) {
        		if (check == 0 && defenders.size() - i < 4) {
        			int adds = 4- defenders.size()-i;
        			List array = new ArrayList();
        			for (int j = 0; j<4; j++) {
        				if (j == 2) {
        					array.add(" ");
        				}
        				else {
        					array.add("Nobody");
        				}
        			}
        			for (int j = 0; j < adds; j++) {
        				defenders.add(array);
        			}
        			check = 1;
        		}
        		List player1=(List)defenders.get(i);
    		   	List player2=(List)defenders.get(i+1);
    		   	List player3=(List)defenders.get(i+2);
    		   	List player4=(List)defenders.get(i+3);
 			%> 			
            <tr class="D">
              <td class="D1">
                <div class="D1">
                  <img src="assets/basic.jpeg" alt="">
                  <h1>Name: <%=player1.get(1) %><%=player1.get(2) %></h1>
                  <h1>Age: <%=player1.get(3) %></h1>
                  <h1>Number: <%=player1.get(0) %></h1>
                </div>
              </td>
              <td class="D2">
                <div class="D2">
                  <img src="assets/basic.jpeg" alt="">
                  <h1>Name: <%=player2.get(1) %><%=player2.get(2) %></h1>
                  <h1>Age: <%=player2.get(3) %></h1>
                  <h1>Number: <%=player2.get(0) %></h1>
                </div>
              </td>
              <td>
                <div class="D3">
                  <img src="assets/basic.jpeg" alt="">
                   <h1>Name: <%=player3.get(1) %><%=player3.get(2) %></h1>
                  <h1>Age: <%=player3.get(3) %></h1>
                  <h1>Number: <%=player3.get(0) %></h1>
                </div>
              </td>
              <td>
                <div class="D4">
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
			
			
			<%
			check = 0;
			System.out.println(g);
			for (int i=0; i<goalkeepers.size(); i+=4) {
        		if (check == 0 && goalkeepers.size() - i < 4) {
        			int adds = 4- goalkeepers.size()-i;
        			List array = new ArrayList();
        			for (int j = 0; j<4; j++) {
        				if (j == 2) {
        					array.add(" ");
        				}
        				else {
        					array.add("Nobody");
        				}
        			}
        			for (int j = 0; j < adds; j++) {
        				goalkeepers.add(array);
        			}
        			check = 1;
        		}
        		List player1=(List)goalkeepers.get(i);
    		   	List player2=(List)goalkeepers.get(i+1);
    		   	List player3=(List)goalkeepers.get(i+2);
    		   	List player4=(List)goalkeepers.get(i+3);
 			%> 			
            <tr class="G">
              <td class="G1">
                <div class="G1">
                  <img src="assets/basic.jpeg" alt="">
                  <h1>Name: <%=player1.get(1) %><%=player1.get(2) %></h1>
                  <h1>Age: <%=player1.get(3) %></h1>
                  <h1>Number: <%=player1.get(0) %></h1>
                </div>
              </td>
              <td class="G2">
                <div class="G2">
                  <img src="assets/basic.jpeg" alt="">
                  <h1>Name: <%=player2.get(1) %><%=player2.get(2) %></h1>
                  <h1>Age: <%=player2.get(3) %></h1>
                  <h1>Number: <%=player2.get(0) %></h1>
                </div>
              </td>
              <td>
                <div class="G3">
                  <img src="assets/basic.jpeg" alt="">
                   <h1>Name: <%=player3.get(1) %><%=player3.get(2) %></h1>
                  <h1>Age: <%=player3.get(3) %></h1>
                  <h1>Number: <%=player3.get(0) %></h1>
                </div>
              </td>
              <td>
                <div class="G4">
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
          	<th>NO</th>
            <th>Against</th>
            <th>Score</th>
            <th>Result</th>
          </tr>
          <%
          matchhistory matches = new matchhistory();
          List matchlist = matches.showlist();
          int win = 0, draw = 0, lose = 0;
          for (int i = 0; i<matchlist.size(); i++) {
        	List tempmatch = (List)matchlist.get(i);  
        	if (tempmatch.get(3).toString().equals("win")) {
        		win += 1;
        	}
        	else if (tempmatch.get(3).toString().equals("draw")) {
        		draw += 1;
        	}
        	else if (tempmatch.get(3).toString().equals("lose")) {
        		lose += 1;
        	}
        	 			
          %>
          <tr>
            <td><%=tempmatch.get(0) %></td>
            <td><%=tempmatch.get(1) %></td>
            <td><%=tempmatch.get(2) %></td>
            <td><%=tempmatch.get(3) %></td>
          </tr>
          <%
          }
          %>
        </table>
        <h1>Statistics</h1>
        <table>
          <tr>
          	<td>Total: <%=win+draw+lose%></td>
            <td>Wins: <%=win%></td>
            <td>Ties: <%=draw%></td>
            <td>Lost: <%=lose%></td>
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
      <form class="joinform" method="post" action="join.jsp">
      	<h1>Join our team!</h1>
        <h2>Name:</h2>
        <input class="name" type="text" name="name" value="">
        <h2>Age:</h2>
        <input class="age" type="text" name="age" value="">
        <h2>Position:</h2>
        <input class="position" type="text" name="position" value="">
        <h2>Email:</h2>
        <input class="email" type="text" name="email" value="">
        <h2>About Yourself:</h2>
        <textarea class="selfintroduce" name="introduction" rows="8" cols="30"></textarea><br>
        <button class="submitform" type="submit" name="button">Submit</button>
      </form>
        
      </div>
      <div class="JF2">
        <h1>Thank you for Applying!</h1>
        <h2>We will Email you as soon as possible</h2>
        <button class="jointomain" type="submit" name="button">Go back to main</button>
      </div>
	<%
	board boards = new board();
    List boardlist = boards.showlist();
    
	%>
      <div class="BR">
      	<div class="board">
      		<h1 style="font-size: 50px;">Boards</h1>
	        <table class="boardlisttable">
	          <tr>
	            <th class="BRnum">Number</th>
	            <th class="BRtitle">Title</th>
	            <th class="BRID">ID</th>
	            <th class="BRview">Click to View</th>
	          </tr>
	          <%
	          for (int i = 0; i<boardlist.size(); i++) {
	        	  List tempboard = (List)boardlist.get(i);
	          %>
	          <tr class="boardcomponent">
	            <td><%=tempboard.get(0) %></td>
	            <td><%=tempboard.get(1) %></td>
	            <td><%=tempboard.get(2) %></td>
	            <td><a href="view.jsp?ID=<%=tempboard.get(0)%>" class="viewcontent">View</a></td>
	          </tr>
	          <%
	          }
	          %>
	         
	        </table>    
		<button class="Addbutton">Add new</button>
      	</div>
      </div>
      	
       	<div class="BW">
	      	<h1>Submit anything you want!</h1>
	      	<div id="write_area">
	      		<form class="submitboard" action="board.jsp" method="post">
	      			<table>
	      				<tr>
	      					<td>
	      					<h2>Title</h2>
	      					</td>
	      					<td>
	      					<input type="text" class="title" placeholder="Write title here" name="title">
	      					</td>
	      				</tr>
	      				<tr>
	      					<td>
	      					<h2>Content</h2>
	      					</td>
	      					<td>
	      					<textarea class="boardcontent" placeholder="Write here" name="boardcontent"></textarea>
	      					</td>
	      				</tr>
	      			</table>
	      			<button class="submitboardbutton" type="submit">Submit</button>
	      			<button class="gobackboardbutton" type="button">back</button>
	      		</form>
	      	</div>
      	</div>
      

      <div class="RM">
        <h1>Future Matches</h1>
        <h2>Choose a match that you can play</h2>
        <form class="reservematchform" method="post">
        <table>
          <tr>
            <th>Date</th>
            <th>Opponent</th>
            <th>Location</th>
            <th>Check</th>
          </tr>
          <%
          futurematch futurematch = new futurematch();
          List futurematchlist = futurematch.showlist();
          
          for (int i = 0; i<futurematchlist.size(); i++) {
        	List tempfml = (List)futurematchlist.get(i);
          
          %>
          <tr class="reservematchlist">
            <td><%=tempfml.get(0) %></td>
            <td><%=tempfml.get(1) %></td>
            <td><%=tempfml.get(2) %></td>
            <td><input type="checkbox" style="zoom:2.0"></td>
          </tr>
          <%
          } 
          %>
        </table>
        </form>
        <button class="reservematchbutton">Reserve Chosen Matches</button>
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
          <a href="quiz.jsp?ID=1" class="startQuiz" type="button" name="button">Start!</a>
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