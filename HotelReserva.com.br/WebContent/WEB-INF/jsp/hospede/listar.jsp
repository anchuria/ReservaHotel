<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- para estruturas de controle e repetição e setar variáveis -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %> <!-- para formatações -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



<!DOCTYPE HTML>
<html>  
   <head> <title>Lista de Hospedes</title>
   </head>
    
   <body>
   
     <c:url var="urlcategoria" value="/categoria/listar"/>
     <c:url var="urlquarto" value="/quarto/listar"/>
     <c:url var="urlresera" value="/reserva/listar"/>
     <c:url var="urlnovo" value="/hospede/form"/>
     <c:url var="logout" value="/logout"/>    
     <table border=1 >
      <tr>
         <td colspan=5 bgcolor='Grace' width=148%   ><font id="Controle" size=70>Controle de Reservas </font> <h4 align= right><font id="bemvindo"> Bem Vindo:<a href="${logout }">Sair</a></font></h4></td>
      </tr>
       <tr>
         <td><a href="${urlcategoria }">Categoria</a></td>
		   <td><a href="${urlquarto}">Quarto</a></td>
		   <td><font color="grey">Hospedes</font></td>
		   <td><a href="${urlresera}">Reservas</a></td>
		   <td><a href="url">Checar Disponibilidade</a></td>
        </tr>
	 
     </table>
      </br>
	  <form action="${urlnovo}" method="get">
	  <input type="submit"  value="Novo Hospede"/>
	  </form>
	  </br>
	  </br> 
    
     <form action="url" align="center" method="post">
            Nome: <input type="text" name="nome">
			CPF: <input type="text" name="cpf">
			<input type="submit" value="Pesquisa">
     </form > 
     
    
    
	
	 
	 </br> 
      	 
    <table align="center" border=1 width=50% >
      <tr>
       <th bgcolor='gray'  >Codigo</th> <th bgcolor='gray'>Nome</th> <th bgcolor='gray'>CPF</th><th bgcolor='gray'>Email</th><th bgcolor='gray'>Contato</th><th bgcolor='gray'>A&ccedil;&otilde;es</th>
      </tr>
	  
	  <c:forEach var="hospedes" items="${hospedes}">
     <tr>
     <td>${hospedes.id}</td>
      <td>${hospedes.nome}</td> 
      <td>${hospedes.CPF}</td>
      <td>${hospedes.email}</td>
      <td>${hospedes.telefone}</td>
      <td ALIGN=MIDDLE>
      <c:url var="urlEditar" value="/hospede/${hospedes.id}/form"/>
      <a href="${urlEditar }">[Editar]</a>
      <c:url var="urlExcluir" value="/hospede/${hospedes.id}/remove"/>
      <a href="${urlExcluir}">[Excluir]</a></td>
	  </tr>
	  </c:forEach>
    
    </table>
    <font color="red">${msg}</</font>
    
      <form action='${urlnovo}' method="get">
	  <input type="submit"  value="Novo Hospede"/>
      
      
    </br>
	  </br>
	  </br> 
	  </br>
	  </br>
	  </br> 
	  </br>
	  </br>
	  </br> 
      </br>
	  </br>
	  </br> 	  
	
    <table id="rodape" align="center" border=1 width=50% >
	
	    <td align="center"><font align="center">Curso de Ci&ecircncia da Computa&ccedil;&atilde;o</br> Centro Universit&aacute;rio de Jo&atilde;o Pessoa</br>Controle de Reservas - Copyright 2015</br></font></td>
	
	</table>
	
	 
	
	
   </body>




</html>