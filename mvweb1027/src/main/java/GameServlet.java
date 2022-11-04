import javax.servlet.http.*;
import java.io.*;
import javax.servlet.ServletException;
import beans.GuessGameLogic2;

public class GameServlet extends HttpServlet {
   @Override
  public void doPost(HttpServletRequest request,
		     HttpServletResponse response)
	 throws ServletException,  IOException {
    processRequest(request, response);
  }
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
  public void processRequest(HttpServletRequest request,
			     HttpServletResponse response)
	 throws ServletException, IOException {
    HttpSession session = request.getSession();
    GuessGameLogic2 gameService=(GuessGameLogic2)session.getAttribute("GameService");
    if (gameService==null) {
      gameService = new GuessGameLogic2(1, 10);
      session.setAttribute("GameService" , gameService);    
    }    
    String guess = request.getParameter("number");
    int guessNum = Integer.parseInt(guess);
    if ( gameService.isCorrectGuess(guessNum) ) {
      generateYouWinResponse(request, response);
      session.invalidate();
    } else {
      int remainder = gameService.getRemainder();
      String msg=gameService.getMessage();
      if ( remainder > 0) {
        generateTryAgainResponse(request, response, remainder,msg);
      } else {
	    generateTooManyGuessesResponse(request, response);
	    session.invalidate();
      }
    }
  }
  public void generateTryAgainResponse(HttpServletRequest request,
			HttpServletResponse response, int remainder,String m)
	 throws IOException {
    String guess = request.getParameter("number");
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    out.println("<html><head></head><body>");
    out.println("Your guess " + guess + " , and You wrong.</br>");
    out.println("message " + m + "</br>");
    out.println("You still have " + remainder + " chances.Try again.</br>");
    out.println("<a href='guess.html'>Gogogo!!</a>");
    out.println("</body></html>");
    out.close();
  }
  public void generateYouWinResponse(HttpServletRequest request,
				     HttpServletResponse response)
	 throws IOException {
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    out.println("<html><head></head><body>");
    out.println("Congratulations , You win! <BR>");
    out.println("**<a href='guess.html'>New Game</a>**");
    out.println("</body></html>");
    out.close();
  }
  public void generateTooManyGuessesResponse(HttpServletRequest request,
					     HttpServletResponse response)
	 throws IOException {
    String guess = request.getParameter("number");
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    out.println("<html><head></head><body>");
    out.println("Your guess " + guess + " , and You wrong.</br>");
    out.println("Sorry, You have no chance.</br>");
    out.println("**<a href='guess.html'>New Game</a>**");
    out.println("</body></html>");
    out.close();
  }
}
