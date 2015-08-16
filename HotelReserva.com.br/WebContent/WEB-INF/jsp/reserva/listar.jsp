<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML>
<html>  
   <head> <title>Lista de Reservas</title>
   </head>
    
   <body>
   
    <c:url var="url" value="/categoria/listar"/>
     <c:url var="url2" value="/quarto/listar"/>
     <c:url var="url3" value="/hospede/listar"/>
     <c:url var="url4" value="/reserva/form"/>
     
     <table border=1 >
      <tr>
         <c:url var="logout" value="/logout"/>
         <td colspan=5 bgcolor='Grace' width=148%   ><font id="Controle" size=70>Controle de Reserva </font> <h4 align= right><font id="bemvindo"> Bem Vindo: UsuarioName <a href="${logout}">Sair</a></font></h4></td>
      </tr>
       <tr>
         <td><a href="${url}">Categorias</a></td>
		   <td><a href="${url2}">Quartos</a></td>
		   <td><a href="${url3}">Hospedes</a></td>
		   <td><font color="gray">Reservas</font></td>
		   <td><a href="Listagemdisponibilidade.jsp">Checar Disponibilidade</a></td>
        </tr>
	 
     </table>
     
     <form action='${url4}' method="get">
	  <input type="submit"  value="Nova Reserva"/>
  
      </br>
	  </br>
	  </br> 
   
    <form action="ListaReserva.jsp" align="center">
            Data Inicial: <input type="text" name="pesquisa"> Data Final: <input type="text" name="pesquisa"> 
			  Status: <select size="1" name="Status">
			  <option value="Status1">--Selecionar--</option>
              <option value="Status1">Status1</option>
              <option value="Status1">Status2</option>
            </select> <br></br>
			Cliente: <select size="1" name="cliente">
			  <option value="Cliente1">--Selecionar--</option>
              <option value="Cliente1">Cliente1</option>
              <option value="Cliente1">Cliente2</option>
            </select> 
			Quarto: <select size="1" name="quarto">
			  <option value="quarto">--Selecionar--</option>
              <option value="quarto">Quarto1</option>
              <option value="quarto">Quarto2</option>
            </select> 
            <input type="submit" value="Pesquisa">
     </form> 
     </br> 
    

      	 
    <table align="center" border=1 width=50% >
      <tr>
       <th bgcolor='gray'  >Numero</th>
	   <th bgcolor='gray'>Data Inicial</th> 
	   <th bgcolor='gray'>Data Final</th>
	   <th bgcolor='gray'>Data chechin</th>
	   <th bgcolor='gray'>Data chechout</th>
	   <th bgcolor='gray'>Cliente</th>
	   <th bgcolor='gray'>Quarto</th>
	   <th bgcolor='gray'>Status</th>
	   <th bgcolor='gray'>Paga</th>	   
	   <th bgcolor='gray'>A&ccedil;&otilde;es</th>
      </tr>
	 
	  <c:forEach var="reservas" items="${reservas}"> 
     <tr>
     <td>${reservas.id}</td> 
	 <td><fmt:formatDate type="date" value="${reservas.dataInicial}"/></td> 
	 <td><fmt:formatDate type="date" value="${reservas.dataFinal}"/></td>
	 <td><fmt:formatDate type="date" value="${reservas.dataCheckin }"/></td>
	 <td><fmt:formatDate type="date" value="${reservas.dataCheckout }"/></td>
	 <td>${reservas.hospede.nome} </td>
	 <td>Andar:${reservas.quarto.andar} N°${reservas.quarto.numero}</td>
	 <td>${reservas.status}</td>
	 <td> 
	    
	 </td>
	 <c:url var="urldetalhar" value="/reserva/${reservas.id}/detalhe"/>
	 <td ALIGN=MIDDLE><a href="${urldetalhar}">[Detalhar]</a>
     </td>
     </tr>
	 </c:forEach>
    </table>
      
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