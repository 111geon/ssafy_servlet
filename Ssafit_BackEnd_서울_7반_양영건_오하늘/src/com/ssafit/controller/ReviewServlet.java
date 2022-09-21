package com.ssafit.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssafit.model.Review;

/**
 * Servlet implementation class ReviewServlet
 */
@WebServlet("/ReviewServlet")
public class ReviewServlet extends HttpServlet {
	private static List<Review> reviewList = new ArrayList<>();
	private int reviewCnt = 0;
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append(request.getParameter("title"));

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String action = request.getParameter("action");
		switch (action) {
		case "create":
			createReview(request, response);
			break;
		case "delete":
			deleteReview(request, response);
			break;
		}
	}
	
	protected void deleteReview(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int reviewId = Integer.parseInt(request.getParameter("reviewId"));
		for (int i = 0; i < reviewList.size(); i++) {
			if (reviewList.get(i).getReviewId() == reviewId) {
				reviewList.remove(i);
				break;
			}
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("reviewList", reviewList);
		response.sendRedirect("http://localhost:8080/Ssafit_BackEnd_%EC%84%9C%EC%9A%B8_7%EB%B0%98_%EC%96%91%EC%98%81%EA%B1%B4_%EC%98%A4%ED%95%98%EB%8A%98/list.jsp?id=" + request.getParameter("id"));
	}
		
	protected void createReview(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		Review review = new Review(reviewCnt, request.getParameter("id"), title, content);
		reviewCnt++;
		reviewList.add(review);
		
		System.out.println(reviewList);
		
		HttpSession session = request.getSession();
		session.setAttribute("reviewList", reviewList);
		response.sendRedirect("http://localhost:8080/Ssafit_BackEnd_%EC%84%9C%EC%9A%B8_7%EB%B0%98_%EC%96%91%EC%98%81%EA%B1%B4_%EC%98%A4%ED%95%98%EB%8A%98/list.jsp?id=" + request.getParameter("id"));
		
	}
	
}
