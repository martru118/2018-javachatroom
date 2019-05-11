<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<jsp:useBean id="msgs" class = "java.util.HashMap" scope = "application" />

<% 
	request.setCharacterEncoding("GBK");
	String action = request.getParameter("action");
	
	if("login".equals(action)){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		session.setAttribute("username", username);
		String msg = "Welcome " + username + " to the chatrooom! <br />";
		msgs.put(username, msg);
		response.sendRedirect("main.jsp");
	}
	
	if("write".equals(action)){
		String newMsg = request.getParameter("msg");
		String nm = session.getAttribute("username") + ": " + newMsg;
		
		//every chat message adds on to the chat history
		Iterator it = msgs.keySet().iterator();
		String username = null;
		String msg = null;
		while(it.hasNext()){
			username =(String)it.next();
			msg =(String)msgs.get(username);
			msg = msg + "<br />" + nm;
			msgs.put(username,msg);
		
		}
		response.sendRedirect("writerMes.jsp");
	
	}
	
	if("show".equals(action)){
		String username = (String)session.getAttribute("username");
		String msg = (String)msgs.get(username);
		out.println("loadData.innerHTML=\""+msg+"\";");
	
	}


%>