<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<!DOCTYPE HTML >
<html>
  <head>
    
    <title>My Chat Room</title>
  </head>
  
  <body>
  
    <h1>Public Chat Room</h1>
    
    <form action = "loadMes.jsp?action=login" method = "post">
    <input type = "text" name = "username" id = "username"/><br />
    <input type = "password" name = "password" id = "password"/><br />
    <input type = "submit" name = "submit" value = "submit" /><br />
    <input type = "reset" name = "reset" value = "reset" /><br />
    
    </form>
   
  </body>
  
</html>

