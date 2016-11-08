package CONTROLLER;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Answer;
import BEAN.IncompleteSentence;
import DAO.HomeDAO;
import DB.DBConnection;

import java.util.*;
import java.sql.*;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		Connection conn = DBConnection.CreateConnection();
		List<IncompleteSentence> list = HomeDAO.DisplayQuestion(conn);
		
//		for(int i=1;i<=list_ans.size();i++) {
//			String answer_user = request.getParameter("ans[]")
//		}
		
		for(IncompleteSentence question: list) {
			String answer_user = request.getParameter("ans["+question.getNumber()+"]");
/*			if (answer_user != null) {*/
				question.setUser_answer(answer_user);
/*			} else {
				request.setAttribute("msg", "Please complete all questions");
			}*/
		}
		
		
		request.setAttribute("list_incomplete_question", list);
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/View/Result.jsp");
		rd.forward(request, response);
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
