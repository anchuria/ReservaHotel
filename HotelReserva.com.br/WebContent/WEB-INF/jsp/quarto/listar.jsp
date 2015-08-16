<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE HTML>
<html>  
   <head> <title>Lista de Quartos</title>
   </head>
    
   <body>
   
     <table border=1 >
     <c:url var="logout" value="/logout"/>
      <tr>
         <td colspan=5 bgcolor='Grace' width=148%   ><font id="Controle" size=70>Controle de Reservas </font> <h4 align= right><font id="bemvindo"> Bem Vindo <a href="${logout}">Sair</a></font></h4></td>
      </tr>
      
      <c:url var="url" value="/categoria/listar"/>
      <c:url var="url2" value="/quarto/form"/>
      <c:url var="url3" value="/hospede/listar"/>
      <c:url var="url4" value="/reserva/listar"/>
       <tr>
         <td><a href="${url}">Categoria</a></td>
		   <td><font color="grey">Quartos</font></td>
		   <td><a href="${url3}">Hospedes</a></td>
		   <td><a href="${url4 }">Reservas</a></td>
		   <td><a href="url">Checar Disponibilidade</a></td>
        </tr>
	 
	 
     </table>
      </br>
	  <form action='${url2}' method="get">
	  <input type="submit"  value="Novo Quarto"/>
	  </form>
	  </br>
	  </br> 
    
     <form action="listarDeQuarto" align="center" method="get">
            Quartos: <input type="text" name="id">
            
			<select size="1" name="categoria">
			<option value=""> --Selecionar--</option>
			
			<c:forEach var="categoria" items="${categorias}"> 
			 <option value="${categoria.id}">${categoria.nome}</option>
			 </c:forEach>
             
              
            </select> 
            <input type="submit" value="Pesquisa"/></br>
     </form > 
     
    
    
	
	 
	 </br> 
      	 
    <table align="center" border=1 width=50% >
      <tr>
       <th bgcolor='gray'  >Codigo</th> <th bgcolor='gray'>Numero</th> <th bgcolor='gray'>Andar</th><th bgcolor='gray'>Categoria</th><th bgcolor='gray'>Acoes</th>
      </tr>
	  
     
     
     <c:forEach var="quarto" items="${quartos}">   
     <tr>
       <td ALIGN="center">${quarto.id}</td>
       <td ALIGN="center">${quarto.numero}</td>
       <td ALIGN="center">${quarto.andar}</td>
       <td ALIGN="center">${quarto.categoria.nome}</td>
       <c:url var="urlEditar" value="/quarto/${quarto.id}/form"/>
       <td ALIGN="center"><a href="${urlEditar }">[Editar]</a>
       <c:url var="urlRemover" value="/quarto/${quarto.id}/remove"/>
       <a href="${urlRemover}">[Excluir]</a></td>
     </tr>
     </c:forEach>  
       
       
       
       
	 
    </table>
    <font color="red">${msg}</</font>
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