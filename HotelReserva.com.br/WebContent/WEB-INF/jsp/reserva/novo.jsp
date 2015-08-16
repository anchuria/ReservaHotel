<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- para estruturas de controle e repetição e setar variáveis -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %> <!-- para formatações -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE HTML>
<html>  
   <head> <title>Cadastro reserva</title>
   </head>
   
    <style>
  
   #loginbox{
      background-color:#ede9e3;
      width:380px;
      height:200PX;
      margin:100px auto 0px;
      overflow:hidden;
      border:1px solid;
  }
  
  #camposdelogin{margin:60px;}
  #top{
  background-color:#ede9e3;
  height:40px;
  
  margin:auto 3px;
  border:1px solid;
  }
 
 .linha {
 	
 	width: 50%;
 	height: 25px;	
 	
 }
  
  .rotulo {
  	
 	width: 35%;
 	height: 25px;
 	float: left;
	text-align: right
  }
  
 .campo {
  	
 	width: 64%;
 	height: 25px;
 	float: right;
	text-align: left
 	
  }
  .botao {
	width: 20%;
	height: 25px;
	margin-left: 50%;

	
  }
  
  
 </style>
    
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
	 <td colspan=5 bgcolor='Grace' width=148%   ><font id="Controle" size=6>Cadastro de Reservas </font> 
      </br>
      <c:url var="urlVoltar" value="/reserva/listar"/>
      <form align="center" action="${urlVoltar }" method="get">
	  <input type="submit" value="Voltar"></form>
      </br>
	  </br>
	  </br> 
	  </br> 
	  </br> 
	
    <c:url var="urlSalvar" value="/reserva/salvar"/>
    <form:form action="${urlSalvar}" method="POST" modelAttribute="reserva">
		<div class=linha>
			<div class="rotulo">Nome do Hospede:</div>
			<div class="campo"><form:select path="hospede.id" items="${selectHospede}"/>  </div>
		</div>
		<div class=linha>
			<div class="rotulo">Quarto:</div>
			<div class="campo"><form:select path="quarto.id" items="${selectquarto}"/> </div>
		</div>  
        <div class=linha>
			<div class="rotulo">Data de Inicio:</div>
			<div class="campo">
			<fmt:formatDate pattern="MM/dd/yyyy" value="${reserva.dataInicial}" var="datainicial"/>
			<form:input  path="dataInicial" value="${datainicial}"/><form:errors path="dataInicial"/> </div>
		</div>    
        <div class=linha>
			<div class="rotulo">Data Final:</div>
			<div class="campo">
			<fmt:formatDate pattern="MM/dd/yyyy" value="${reserva.dataFinal}" var="datafinal"/>
			<form:input  path="dataFinal" value="${datafinal}"/><form:errors path="dataFinal"/> </div>
		</div> 
		<form:hidden path="status" values="Em Espera"/>    
 	    <div class=linha>
			<div class=botao>	 
				<input type="submit" value="Cadastrar" position="center">
           </div>
		  </div>
	</form:form> 
      
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