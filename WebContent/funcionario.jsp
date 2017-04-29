<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList, model.Funcionario"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="dist/css/sb-admin-2.min.css">
<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"  href="vendor/metisMenu/metisMenu.min.css">
<link rel="stylesheet" type="text/css" href="vendor/font-awesome/css/font-awesome.min.css">
<title>Funcionários</title>
</head>
<body>
	<div class="row">
	    <div class="col-lg-12">
	        <div class="panel panel-default">
	            <div class="panel-heading">
    				<h1>Funcionários</h1>
    			</div>
			    <div class="panel-body">
				    <div class="row">
				    	<div class="col-lg-6">
							<form action="HandlerFuncionario" method="POST" role="form">
								<div class="form-group">
									<label>Nome
									<input class="form-control" type="text" name="nome" id="nome">
									</label>
									<label>Morada
									<input class="form-control" type="text" name="morada" id="morada">
									</label>
									<label>Código Postal
									<input class="form-control" type="text" name="codigoPostal" id="codigoPostal">
									</label>
									<label>NIF
									<input class="form-control" type="text" name="nif" id="nif">
									</label>
									<label>NISS
									<input class="form-control" type="text" name="niss" id="niss">
									</label>
									<label>Contacto
									<input class="form-control" type="text" name="contacto" id="contacto">
									</label>
									<label>Email
									<input class="form-control" type="text" name="email" id="email">
									</label>
									<label>Password
									<input class="form-control" type="password" name="password" id="password">
									</label>
									<label>Confirmação de Password
									<input class="form-control" type="password" name="password2" id="password2">
									</label>
									<br>
									<input class="btn btn-default" type="submit" name="inserir" value="Inserir">
								</div>
							</form>
						</div>
						<div class="col-lg-6">
							<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover">
									<tr>
										<th>Nome</th>
										<th>Morada</th>
										<th>Código Postal</th>
										<th>NIF</th>
										<th>NISS</th>
										<th>Contacto</th>
										<th>E-mail</th>
									</tr>
										<%
										ArrayList arFuncionario = (ArrayList) request.getAttribute("listaFunc");
										
										for(int i=0;i<arFuncionario.size();i++){
											Funcionario func = (Funcionario) arFuncionario.get(i);
											out.append("<tr><td>"+func.getNome()+"</td><td>"+func.getMorada()+"</td><td>"+func.getCodigoPostal()+"</td><td>"+func.getNIF()+"</td><td>"+func.getNISS()+"</td><td>"+func.getContacto()+"</td><td>"+func.getEmail()+"</td></tr>");
										}
										%>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>