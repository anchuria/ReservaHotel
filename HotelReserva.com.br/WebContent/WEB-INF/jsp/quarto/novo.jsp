<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- para estruturas de controle e repetição e setar variáveis -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %> <!-- para formatações -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 
<!DOCTYPE HTML>
<html>  
   <head> <title>Quartos</title>
   </head>
    
   <body>
     <c:url var="urlCategoria" value="/categoria/listar"/>
     <c:url var="urlQuartolista" value="/quarto/listar"/>
     <c:url var="url3" value="/hospede/listar"/>
     <c:url var="url4" value="/reserva/listar"/>
   
     <table border=1 >
      <c:url var="logout" value="/logout"/>
      <tr>
         <td colspan=5 bgcolor='Grace' width=148%   ><font id="Controle" size=70>Controle de Reservas </font> <h4 align= right><font id="bemvindo"> Bem Vindo <a href="${logout}">Sair</a></font></h4></td>
      </tr>
       <tr>
         <td><a href="${urlCategoria}" >Categoria</a></td>
		   <td><font color="grey">Quartos</font></td>
		   <td><a href="${url3}">Hospedes</a></td>
		   <td><a href="${url4 }">Reservas</a></td>
		   <td><a href="Listagemdisponibilidade.jsp">Checar Disponibilidade</a></td>
        </tr>
	 
     </table>
      </br>
	  <form action="${urlQuartolista}"  method="get">
	  <input type="submit" value="Voltar"/>
	  </form>
	  <br></br>
	  <br></br> 
	  
	  <font size="6"> Cadastro de Quarto</font><br></br>
    
    
          
    <c:url var="url" value="/quarto/salvar"/>
	<form:form action="${url}" method="POST" modelAttribute="quarto">       
			
           Numero:<form:input path="numero"/><form:errors path="numero"/>
			  <br></br><br></br>
			Andar : <form:input path="andar"/><form:errors path="andar"/>
			<br></br><br></br>
			<font> Categoria :</font>
			
			<form:select path="categoria.id" items="${categoria}"/>
              
              
            
            <br></br><br></br><br></br>
			
            <input type="submit"  value=" Adicionar "/>
			
     </form:form>
    
     <br></br>
	 <br></br>
	 <br></br> 
	<br></br>
	<br></br>
	 <br></br> 
	 <br></br>
	 <br></br>
	  <br></br> 
     <br></br>
	 <br></br>
	  <br></br> 	  
	
    <table id="rodape" align="center" border=1 width=50% >
	
	    <td align="center"><font align="center"> Curso de Ci&ecircncia da Computa&ccedil;&atilde;o<br></br> Centro Universit&aacute;rio de Jo&atilde;o Pessoa<br></br>Controle de Reservas - Copyright 2015<br></br></font></td>
	
	</table>
	
	 
	
	
   </body>




</html>