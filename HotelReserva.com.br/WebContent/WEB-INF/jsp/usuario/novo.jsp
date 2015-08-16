<!DOCTYPE HTML>
<html>  
   <head> 
		<title>Cadastro Usuario</title>
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

	   
     <table border=1 >
      <tr>
         <td colspan=5 bgcolor='Grace' width=148%   ><font id="Controle" size=70>Controle de Reserva </font> <h4 align= right><font id="bemvindo"> Bem Vindo: UsuarioName <a href="url">Sair</a></font></h4></td>
      </tr>
       <tr>
         <td><a href="ListaCategoria.jsp">Categoria</a></td>
		   <td><a href="ListaQuartos.jsp">Quartos</a></td>
		   <td><font color="gray">Hospede</font></td>
		   <td><a href="ListaReserva.jsp">Reservas</a></td>
		   <td><a href="Listagemdisponibilidade.jsp">Checar Disponibilidade</a></td>
        </tr>
	 
     </table>
	 <td colspan=5 bgcolor='Grace' width=148%   ><font id="Controle" size=6>Cadastro de Usuario </font> 
      </br>
	  <input type="submit" value="Voltar">
      </br>
	  </br>
	  </br> 

     <form action="CadastrarUsuario" align="left" method = "post">
		<div class=linha>
			<div class="rotulo">Usuario:</div>
			<div class="campo"><input type="text" name="login"> </div>
		</div>
		<div class=linha>
			<div class="rotulo">Senha:</div>
			<div class="campo"><input type="text" name="senha"> </div>
		</div>		
		<div class=linha>
			<div class=botao>	 
				<input type="submit" value="Cadastrar" position="center">
           </div>
		</div >
	
		
     </form> 
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