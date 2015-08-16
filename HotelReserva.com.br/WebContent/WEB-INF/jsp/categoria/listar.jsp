<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- para estruturas de controle e repetição e setar variáveis -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %> <!-- para formatações -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    
     
     
<html>  
   <head> <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title>Lista de Categoria</title>
   </head>
    
   <body>
   
     <c:url var="url" value="/categoria/form"/>
     <c:url var="url2" value="/quarto/listar"/>
     <c:url var="url4" value="/reserva/listar"/>
     <c:url var="urlPesquisa" value="/categoria/pesquisa"/>
     <c:url var="url3" value="/hospede/listar"/>
     
     
     <table border=1 >
     <c:url var="logout" value="/logout"/>
      <tr>
         <td colspan=5 bgcolor='Grace' width=148%   ><font id="Controle" size=70>Controle de Reservas </font> <h4 align= right><font id="bemvindo"> Bem Vindo:  <a href="${logout}">Sair</a></font></h4></td>
      </tr>
       <tr>
         <td><font color="gray">Categoria</font></td>
		   <td><a href="${url2}">Quartos</a></td>
		   <td><a href="${url3}">Hospedes</a></td>
		   <td><a href="${url4}">Reservas</a></td>
		   <td><a href="Listagemdisponibilidade.jsp">Checar Disponibilidade</a></td>
        </tr>
	 
     </table>
     <br></br>
	 <form action="${url}" method="get" >
            <input type="submit" value="Nova Categoira">
     </form>
	 <br> </br>
	 <br> </br>
     
   
    
    <br> </br> 


      	 
    <table align="center" border=1 width=50% >
      <tr>
       <th bgcolor='gray'  >Codigo</th> <th bgcolor='gray'>Tipo</th> <th bgcolor='gray'>Capacidade</th><th bgcolor='gray'>Acoes</th>
      </tr>
     
      
     
    
     
     
     <c:forEach var="categoria" items="${categorias}">
     <tr>
     
     <td ALIGN="center" >${categoria.id}</td> 
     <td ALIGN="center" >${categoria.nome}</td>
      <td ALIGN="center" >${categoria.capacidade} </td>
      <td ALIGN="center">
      <c:url var="urlEditar" value="/categoria/${categoria.id}/form"/>
      <a href="${urlEditar}">[Editar]</a>
      <c:url var="urlRemover" value="/categoria/${categoria.id}/remover"/>
      <a href="${urlRemover}">[Excluir]</a></td>
     
     </tr>
     </c:forEach>
     
    </table>
    <h5><font color="red" >${msg}</font></h5> 
    
      
	
	  
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
	
	    <td align="center"><font align="center">Curso de Ci&ecircncia da Computa&ccedil;&atilde;o<br></br> Centro Universit&aacute;rio de Jo&atilde;o Pessoa<br></br>Controle de Reservas - Copyright 2015<br></br></font></td>
	
	</table>
	
	
	
	
   </body>




</html>