package edu.kh.todoList.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			
			
			HttpSession session = req.getSession();
			
			System.out.println(session.getAttribute("loginMember"));
			// session - message/loginMember ...
			// session.removeAttribute("loginMember"); // loginMember만 삭제
			
			session.invalidate(); // 전체 세션을 무효화시키는 코드(==초기화)
			// -> 세션에 저장된 모든 속성이 전부 삭제
			resp.sendRedirect("/");
			
			
			
		} catch(Exception e){}	
	}
	
	
}
