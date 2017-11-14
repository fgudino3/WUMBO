package wumbo.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wumbo.model.Course;
import wumbo.model.Person;

 
@WebServlet("/RoadmapHelper")
public class RoadmapHelper extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RoadmapHelper() {
        super();
     }

	 
 

	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		response.getWriter().append("Served at: ").append(request.getContextPath());
 		
 	// first create a session
 			HttpSession session = request.getSession();
 			Person user = (Person) session.getAttribute("user");
 			
 			if (!user.isAdmin()) {
 				// retrieve data from database
 				
 				
 				List<Course> studentcourses = new ArrayList<Course>();
 				
 				
 				Connection c = null;
 				try {
 					// connect
 					String url = "jdbc:mysql://cs3.calstatela.edu:3306/cs3337stu04";
 					String username = "cs3337stu04";
 					String password = "f9k.cwxn";
 					c = DriverManager.getConnection(url, username, password);

 					// sql statement to retrieve variables

 					String sql = "select * from courses";
 					Statement st = c.createStatement();
 					ResultSet rs = st.executeQuery(sql);

 					// create while loop
 					while (rs.next()) // starts at top of table and goes down row each time its a boolean if there is
 										// no next row it stops
 					{
 						Course course = new Course(rs.getString("code"), rs.getString("name"), rs.getFloat("units"),
 								rs.getString("coordinator"), rs.getBoolean("available"), rs.getString("semester"),
 								rs.getString("prerequisites"), rs.getFloat("year"));
 						// courses.add(new Course( rs.getString("code"), rs.getString("name"),
 						// rs.getFloat("units"), rs.getString("coordinator"), rs.getBoolean("available")
 						// ));
 						courses.add(course);
 					}
 					session.setAttribute("courses", courses);

 				}

 				catch (SQLException e) {
 					throw new ServletException(e);
 				} finally {
 					try {
 						if (c != null)
 							c.close();
 					} catch (SQLException e) {
 						throw new ServletException(e);
 					}
 				}
 		
 		
	}

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		doGet(request, response);
	}

}
