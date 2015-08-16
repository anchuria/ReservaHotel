
<%@ page import="java.util.*"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- para estruturas de controle e repetição e setar variáveis -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %> <!-- para formatações -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>  
   <head> <title>Detalhe reserva</title>
   </head>
    
   <body>
     <c:url var="url" value="/categoria/listar"/>
     <c:url var="url2" value="/quarto/listar"/>
     <c:url var="url3" value="/hospede/listar"/>
   
   
   
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
		   <td><a href="url">Checar Disponibilidade</a></td>
        </tr>
	 
     </table>
	 <td colspan=5 bgcolor='Grace' width=148%   ><font id="Controle" size=6>Detalhe de Reservas </font> 
      </br>
      <c:url var="url4" value="/reserva/listar"/>
      <form action="${ url4}" method="get">
	  <input type="submit" value="Voltar">
	  </form>
      </br>
	  </br>
	  <c:url var="urledit" value="/reserva/${reserva.id}/form"/>
      <form action="${ urledit}" method="get">
	  <input type="submit" value="Editar">
	  </form>
	  </br> 
	  </br> 
	  </br> 
		    Hospede: ${reserva.hospede.nome }<br>
			Quarto: ${reserva.quarto.andar }º Andar|Quarto: ${reserva.quarto.numero } <br>
            Data Inicio:<fmt:formatDate type="date" value="${reserva.dataInicial}"/> <br> 
            Data Fim: <fmt:formatDate type="date" value="${reserva.dataFinal}"/><br>
            Status: ${reserva.status } <br>
            Pago: <br>
            Total:<br>
            Forma de Pagamento: <br>
			</br>
	 
             
            
            
            
            
            <c:url var="urlcancelar" value="/reserva/${reserva.id}/cancelar"/>
            <form action="${urlcancelar }" align="left">
			<input type="submit" value="Cancelar">
     		</form>
            
            <c:url var="urlcomfirma" value="/reserva/${reserva.id}/comfirma"/>
            <form action="${urlcomfirma }" align="left">
			<input type="submit" value="Comfirmar">
     		</form>
           
            <c:url var="urlCheckin" value="/reserva/${reserva.id}/checkout"/>
            <form action="${urlCheckout }" align="left">
			<input type="submit" value="Fazer Checkout">
     		</form>
     		
            <c:url var="urlCheckin" value="/reserva/${reserva.id}/checkin"/>
            <form action="${urlCheckin }" align="left">
			<input type="submit" value="Fazer Checkin">
     		</form>
            
            <c:url var="urlDeletar" value="/reserva/${reserva.id}/remover"/>
            <form action="${urlDeletar }" align="left">
			<input type="submit" value="Excluir Reserva">
     		</form><br></br>
      
            
                
                       
            <input type="submit" value="Efetuar Pagamento">
	 
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
	  </br> 	  
	
    <table id="rodape" align="center" border=1 width=50% >
	
	    <td align="center"><font align="center">Curso de Ci&ecircncia da Computa&ccedil;&atilde;o</br> Centro Universit&aacute;rio de Jo&atilde;o Pessoa</br>Controle de Reservas - Copyright 2015</br></font></td>
	
	</table>
	
	
	
	
   </body>




</html>