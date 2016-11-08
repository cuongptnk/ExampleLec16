<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Result page</title>
</head>
<body>
	<h1>Incomplete sentences test</h1>
	<form action="HomeForwarder" method="POST">
		<c:forEach items="${list_incomplete_question}" var="inQuestion">
			${inQuestion.number}. ${inQuestion.question}
			<br/>
			<c:if test="${inQuestion.correct_answer == 'A'}">
				<img src="Image/correct.png">
				<c:if test="${inQuestion.user_answer == 'A'}">
					<input type="radio" name="ans[${inQuestion.number}]" value="A" disabled checked/> A. ${inQuestion.option1}
				</c:if>
				<c:if test="${inQuestion.user_answer != 'A'}">		
					<input type="radio" name="ans[${inQuestion.number}]" value="A" disabled/> A. ${inQuestion.option1}
				</c:if>
			</c:if>
			<c:if test="${inQuestion.correct_answer != 'A'}">
				<c:if test="${inQuestion.user_answer == 'A'}">
					<img src="Image/wrong.png">
					<input type="radio" name="ans[${inQuestion.number}]" value="A" disabled checked/> A. ${inQuestion.option1}
				</c:if>
				<c:if test="${inQuestion.user_answer != 'A'}">		
					<input type="radio" name="ans[${inQuestion.number}]" value="A" disabled/> A. ${inQuestion.option1}
				</c:if>
			</c:if>
			<br/>
			
			<c:if test="${inQuestion.correct_answer == 'B'}">
				<img src="Image/correct.png">
				<c:if test="${inQuestion.user_answer == 'B'}">
					<input type="radio" name="ans[${inQuestion.number}]" value="B" disabled checked/> B. ${inQuestion.option2}
				</c:if>
				<c:if test="${inQuestion.user_answer != 'B'}">		
					<input type="radio" name="ans[${inQuestion.number}]" value="B" disabled/> B. ${inQuestion.option2}
				</c:if>
			</c:if>
			<c:if test="${inQuestion.correct_answer != 'B'}">
				<c:if test="${inQuestion.user_answer == 'B'}">
					<img src="Image/wrong.png">
					<input type="radio" name="ans[${inQuestion.number}]" value="B" disabled checked/> B. ${inQuestion.option2}
				</c:if>
				<c:if test="${inQuestion.user_answer != 'B'}">		
					<input type="radio" name="ans[${inQuestion.number}]" value="B" disabled/> B. ${inQuestion.option2}
				</c:if>
			</c:if>
			<br/>
			
			<c:if test="${inQuestion.correct_answer == 'C'}">
				<img src="Image/correct.png">
				<c:if test="${inQuestion.user_answer == 'C'}">
					<input type="radio" name="ans[${inQuestion.number}]" value="C" disabled checked/> C. ${inQuestion.option3}
				</c:if>
				<c:if test="${inQuestion.user_answer != 'C'}">		
					<input type="radio" name="ans[${inQuestion.number}]" value="C" disabled/> C. ${inQuestion.option3}
				</c:if>
			</c:if>
			<c:if test="${inQuestion.correct_answer != 'C'}">
				<c:if test="${inQuestion.user_answer == 'C'}">
					<img src="Image/wrong.png">
					<input type="radio" name="ans[${inQuestion.number}]" value="C" disabled checked/> C. ${inQuestion.option3}
				</c:if>
				<c:if test="${inQuestion.user_answer != 'C'}">		
					<input type="radio" name="ans[${inQuestion.number}]" value="C" disabled/> C. ${inQuestion.option3}
				</c:if>
			</c:if>
			<br/>
			
			<c:if test="${inQuestion.correct_answer == 'D'}">
				<img src="Image/correct.png">
				<c:if test="${inQuestion.user_answer == 'D'}">
					<input type="radio" name="ans[${inQuestion.number}]" value="D" disabled checked/> D. ${inQuestion.option4}
				</c:if>
				<c:if test="${inQuestion.user_answer != 'D'}">		
					<input type="radio" name="ans[${inQuestion.number}]" value="D" disabled/> D. ${inQuestion.option4}
				</c:if>
			</c:if>
			<c:if test="${inQuestion.correct_answer != 'D'}">
				<c:if test="${inQuestion.user_answer == 'D'}">
					<img src="Image/wrong.png">
					<input type="radio" name="ans[${inQuestion.number}]" value="D" disabled checked/> D. ${inQuestion.option4}
				</c:if>
				<c:if test="${inQuestion.user_answer != 'D'}">		
					<input type="radio" name="ans[${inQuestion.number}]" value="D" disabled/> D. ${inQuestion.option4}
				</c:if>
			</c:if>
			<br/>
			
			
		</c:forEach>
		<input type="submit" value="Again"/>
	</form>
	
	
</body>
</html>