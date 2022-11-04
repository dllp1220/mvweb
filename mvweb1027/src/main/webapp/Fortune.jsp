<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guess Logic</title>
</head>
<body>
	<jsp:useBean id="Fortune" class="beans.GuessGameLogic" scope="session">
		<%
		Fortune.initialize(1, 10);
		%>
	</jsp:useBean>

<html>
<head></head>
  <body>
    <%
    String guess = request.getParameter("number");
    int guessNum = Integer.parseInt(guess);
    if (Fortune.isCorrectGuess(guessNum)) {
    	session.invalidate();
    %><jsp:forward page="bingo.jsp" />
	<%
	} else {
	int remainder = Fortune.getRemainder();
	if (remainder > 0) {
	%>The number <%=guess%> is not correct.</br>
    	    You still have <%=remainder%> chances.</br>
            <%=Fortune.getHint()%> <br />
    	    <a href="guess.html">Try again</a>
	<%
	} else {
	session.invalidate();
	%><jsp:forward page="noChances.jsp" />
	<%
	}
	}
	%>

</body>
</html>