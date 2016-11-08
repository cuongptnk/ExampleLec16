package DAO;
import java.sql.*;
import java.util.*;

import BEAN.Answer;
import BEAN.IncompleteSentence;

public class HomeDAO {
	public static List<IncompleteSentence> DisplayQuestion(Connection conn) {
		List<IncompleteSentence> list = new ArrayList<IncompleteSentence>();
		String sql = "select * from incomplete_sentence";
		PreparedStatement ptmt = null;
		try {
			ptmt = conn.prepareStatement(sql);
			
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next()) {
				IncompleteSentence insen = new IncompleteSentence();
				insen.setNumber(rs.getInt("number"));
				insen.setQuestion(rs.getString("question"));
				insen.setOption1(rs.getString("option1"));
				insen.setOption2(rs.getString("option2"));
				insen.setOption3(rs.getString("option3"));
				insen.setOption4(rs.getString("option4"));
				insen.setCorrect_answer(rs.getString("correct_answer"));
				
				list.add(insen);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	
}
