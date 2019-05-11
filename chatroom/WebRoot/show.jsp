<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>


<!DOCTYPE HTML >
<html>
  <head>
    
    <title>Message display page</title>
    <meta http-equiv="Refresh" content = "2">
    <script type = "text/javascript">  
    	function Timeout(){
    		try{
    		
    			var url = "loadMes.jsp?action=show";
    			LoadTime.src = url;
    			
    		} catch(e){
    			return false;
    		
    		}
    	}
    	setTimeout("Timeout()",2000);
    	
    </script>
    
    <script type = "text/javascript" id="LoadTime"></script>
    
  </head>
  
  <body bgcolor = "#A9F5A9" onLoad="javascript:Timeout();">
  	
	<span id = "loadData">loading..........</span>
  
  </body>
  
</html>
