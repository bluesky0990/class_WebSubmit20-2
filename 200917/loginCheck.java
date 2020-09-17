package ch03;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginChk")
public class loginCheck extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		
		Cookie cookie = new Cookie("userid", id);
		cookie.setComment("JSP_Homework_ID_1");
		cookie.setMaxAge(60*60*24);
		response.addCookie(cookie);
		
//		Cookie[] c = request.getCookies();
//		for(Cookie cookies:c) {
//			System.out.println("쿠키명:"+cookies.getName());
//			System.out.println("쿠키값:"+cookies.getValue());
//		}
		response.sendRedirect("Week03/login.jsp");
	}
}
