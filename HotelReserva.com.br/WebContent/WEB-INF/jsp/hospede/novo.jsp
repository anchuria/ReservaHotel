<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- para estruturas de controle e repetição e setar variáveis -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %> <!-- para formatações -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE HTML>
<html>  
   <head> 
		<title>Cadastro reserva</title>
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


</head>

<body>
     <c:url var="urlcategoria" value="/categoria/listar"/>
     <c:url var="urlquarto" value="/quarto/listar"/>
     <c:url var="urlreserva" value="/reserva/listar"/>
	  <c:url var="logout" value="/logout"/> 
     <table border=1 >
      <tr>
         <td colspan=5 bgcolor='Grace' width=148%   ><font id="Controle" size=70>Controle de Reserva </font> <h4 align= right><font id="bemvindo"> Bem Vindo <a href="${logout}">Sair</a></font></h4></td>
      </tr>
       <tr>
         <td><a href="${urlcategoria }">Categoria</a></td>
		   <td><a href="${urlquarto }">Quartos</a></td>
		   <td><font color="gray">Hospede</font></td>
		   <td><a href="${urlreserva }">Reservas</a></td>
		   <td><a href="url">Checar Disponibilidade</a></td>
        </tr>
	 
     </table>
	 <td colspan=5 bgcolor='Grace' width=148%   ><font id="Controle" size=6>Cadastro de Hospede </font> 
      </br>
      <c:url var="urlvoltar" value="/hospede/listar"/>
      <form action="${urlvoltar}" align="left">
	  <input type="submit" value="Voltar"></form>
      </br>
	  </br>
	  </br> 
     
     
      <c:url var="urlsalvar" value="/hospede/salvar"/>
     <form:form method="post" action="${urlsalvar}" modelAttribute="hospede">
		<div class=linha>
			<div class="rotulo">Nome:</div>
			<div class="campo"><form:input path="nome"/> <form:errors path="nome"/></div>
		</div>
		 
        <div class=linha>
			<div class="rotulo">Cpf:</div>
			<div class="campo"><form:input path="CPF"/> <form:errors path="CPF"/> </div>
		</div>    
        <div class=linha>
			<div class="rotulo">E-mail:</div>
			<div class="campo"><form:input path="email"/> <form:errors path="email"/> </div>
		</div> 
		
		<div class=linha>
			<div class="rotulo">Telefone:</div>
			<div class="campo"><form:input path="telefone"/> <form:errors path="telefone"/> </div>
		</div> 
		
		<div class=linha>
			<div class="rotulo">Logradouro:</div>
			<div class="campo"><form:input path="endereco.longradouro"/> <form:errors path="endereco.longradouro"/> </div>
		</div>
		<div class=linha>
			<div class="rotulo">Cidade:</div>
			<div class="campo"><form:input path="endereco.cidade"/> <form:errors path="endereco.cidade"/> </div>
		</div>
		<div class=linha>
			<div class="rotulo">Cep:</div>
			<div class="campo"><form:input path="endereco.CEP"/> <form:errors path="endereco.CEP"/> </div>
		</div>      
         <div class=linha>
			<div class="rotulo">Numero:</div>
			<div class="campo"><form:input path="endereco.numero"/> <form:errors path="endereco.numero"/> </div>
		</div>
		<div class=linha>
			<div class="rotulo">Bairro:</div>
			<div class="campo"><form:input path="endereco.bairro"/> <form:errors path="endereco.bairro"/> </div>
		</div>
		<div class=linha>
			<div class=botao>	 
				<input type="submit" value="Cadastrar" position="center">
           </div>
		</div >
	
		
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
	  </br> 	  
	
    <table id="rodape" align="center" border=1 width=50% >
	
	    <td align="center"><font align="center">Curso de Ci&ecircncia da Computa&ccedil;&atilde;o</br> Centro Universit&aacute;rio de Jo&atilde;o Pessoa</br>Controle de Reservas - Copyright 2015</br></font></td>
	
	</table>
	
	
	
	
   </body>




</html>













</html>	