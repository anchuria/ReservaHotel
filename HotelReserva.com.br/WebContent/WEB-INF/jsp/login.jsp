<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- para estruturas de controle e repetição e setar variáveis -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %> <!-- para formatações -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sistema de Reserva</title>

 <style>
   body{background-color:#11a6d4;}
   #loginbox{
      background-color:#ede9e3;
      width:380px;
      height:200PX;
      margin:100px auto 0px;
      overflow:hidden;
      border:1px solid;
  }
  
  #camposdelogin{margin:60px;
        }
  #top{
  background-color:#ede9e3;
  height:40px;
  
  margin:auto 3px;
  border:1px solid;
  }
 
   .loginRotulo{
   
   
   
   
   
   
   
    }
 
 
 
  
 </style>


</head>
<body>
  <div id="top" align="left" style=" height : 67px;"><font face="Myriad Pro" color="#8e8a84" size="33" >Sistema de Reserva </font></div>

  <div id="loginbox" align="center">     
    <div id="camposdelogin" align="center">
    
    
       <form:form method="post" action="efetuarLogin" modelAttribute="usuario">
       
			Login:<form:input path="login"/> <form:errors path="login"/> <br /> <br /> 
			Senha:<form:password  path="senha"/><form:errors path="senha"/> <br /></br> </br>
			<input type="submit" value="Entrar" style=" width : 30%;" />
				
		</form:form>
		
		
	</div>
   </div>
   
   
</body>
</html>