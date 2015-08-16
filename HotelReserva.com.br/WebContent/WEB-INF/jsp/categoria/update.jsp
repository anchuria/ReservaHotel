<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- para estruturas de controle e repetição e setar variáveis -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %> <!-- para formatações -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE HTML>
<html>  
   <head> <title>Editar Categoria</title>
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
   <c:url var="url" value="/categoria/update"/>
    <c:url var="urlQuarto" value="/quarto/listar"/>
    <c:url var="url3" value="/hospede/listar"/>
    <c:url var="url4" value="/reserva/listar"/>
     <table border=1 >
     <c:url var="logout" value="/logout"/>
      <tr>
         <td colspan=5 bgcolor='Grace' width=148%   ><font id="Controle" size=70>Controle de Reservas </font> <h4 align= right><font id="bemvindo"> Bem Vindo: UsuarioName <a href="${logout}">Sair</a></font></h4></td>
      </tr>
       <tr>
         <td><font color="gray">Categoria</font></td>
		   <td><a href="${urlQuarto }">Quartos</a></td>
		   <td><a href="${url3 }">Hospedes</a></td>
		   <td><a href="${url4 }">Reservas</a></td>
		   <td><a href="Listagemdisponibilidade.jsp">Checar Disponibilidade</a></td>
        </tr>
         </br>
	  
	  
	 
     </table>
     <br></br>
     <font size=  6>Edi&ccedil;&atilde;o de Categoria</font>
     <c:url var="urlvoltar" value="/categoria/listar"/>
      </br>
      <form action="${urlvoltar}"  method="get">
	  <input type="submit" value="Voltar"/>
	  </form>
	  </br>
	  </br> 
   
	
	<form:form action="${url}" method="POST" modelAttribute="categoria">
		<div class=linha>
			<div class="rotulo">Descricao:</div>
			<div class="campo"><form:input path="nome"/><form:errors path="nome"/> </div>
		</div>
		<div class=linha>
			<div class="rotulo">Capacidade:</div>
			<div class="campo"><form:input path="capacidade"/><form:errors path="capacidade"/> </div>
		</div>  
        <div class=linha>
			<div class="rotulo">Valor:</div>
			<div class="campo"><form:input path="valor"/><form:errors path="valor"/> </div>
		</div>    
		<form:hidden path="id"/>
 	    <div class=linha>
			<div class=botao>	 
				<input type="submit" value="Atualizar" position="center">
				<form:hidden path="id"/>
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
	
	    <td align="center"><font align="center">Curso de Ci&ecircncia da Computa&ccedil;&atilde;o</br> Centro Universit&aacute;rio de 

Jo&atilde;o Pessoa</br>Controle de Reservas - Copyright 2015</br></font></td>
	
	</table>
	
	
	
	
   </body>




</html>