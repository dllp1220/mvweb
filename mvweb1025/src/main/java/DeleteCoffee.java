import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/DeleteCoffee"})
public class DeleteCoffee extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet InsertCoffee</title>");            
            out.println("</head>");
            out.println("<body>");
             String coffee=request.getParameter("coffee");
           
            try {
                DeleteCoffee(coffee);
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
            out.println("刪除完成");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
    }
public void DeleteCoffee(String coffee)  throws SQLException {
    Connection con=null;
    PreparedStatement  delete= null;
   

    String insertStatement =
        "delete from COFFEES " +
        "where COF_NAME=? ";

    try {
         
    	Class.forName("com.mysql.cj.jdbc.Driver");
        con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/classicmodels?useUnicode=true&characterEncoding=utf8&serverTimezone=Asia/Taipei","root","1234");
	  
        con.setAutoCommit(false);    
        delete = con.prepareStatement(insertStatement);

        //for (Map.Entry<String, Integer> e : salesForWeek.entrySet()) { }
           delete.setString(1, coffee);          
            delete.executeUpdate();
            con.commit();
        
    } catch (Exception e ) {
        System.out.println(e.getMessage());
        if (con != null) {
            try {
                System.err.print("Transaction is being rolled back");
                con.rollback();
            } catch(SQLException ex) {
                System.out.println(ex.getMessage());
            }
        }
    } finally {
        if (delete != null) {
            delete.close();
        }
        if (delete != null) {
            delete.close();
        }
        con.setAutoCommit(true);
    }
}   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
