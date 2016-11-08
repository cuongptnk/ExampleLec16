<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	function checkform() {
		var els = document.getElementsByTagName("input"),
        i, check;
	    for (i=0; i < els.length; i++) {
	    	if (i % 4 == 0) {
	    		check = false;
	    	}
	        if (els[i].type == 'radio'){
	    		if (els[i].checked) {
	    			check = true;
	    		}
	    		if (i % 4 == 3 && !check) {
	    			alert("Please answer all questions");
            		return false;
		    	}		
	        } else {
	        	return true;
	        }
	    }
	}
</script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home page</title>
</head>
<body>
	<h1>Incomplete sentences test</h1>
	<form action="HomeController" method="POST" onsubmit="return checkform()">
		
		<c:forEach items="${list_incomplete_question}" var="inQuestion">
			${inQuestion.number}. ${inQuestion.question}
			<br/>
			<input type="radio"  name="ans[${inQuestion.number}]" value="A"/> A. ${inQuestion.option1}
			<br/>
			<input type="radio"  name="ans[${inQuestion.number}]" value="B"/> B. ${inQuestion.option2}
			<br/>
			<input type="radio"  name="ans[${inQuestion.number}]" value="C"/> C. ${inQuestion.option3}
			<br/>
			<input type="radio"  name="ans[${inQuestion.number}]" value="D"/> D. ${inQuestion.option4}
			<br/>
		</c:forEach>
		<input type="submit" value="TapeScript"/>
	</form>
	
	
</body>
</html>