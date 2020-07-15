<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@taglib prefix = "c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8" />
<title>Cadastro de Despesa</title>
<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" />
<style>
	span.error {color: red;}
</style>
</head>
<body>

	<nav class="navbar bg-light navbar-light"></nav>

	<form:form class="form-horizontal" method="post" action="/despesas/salvar" modelAttribute="despesa">
		<c:if test="${!empty mensagem}">
			<div class="alert alert-success">
				<span>${mensagem}</span>
			</div>
		</c:if>

		<div class="card">
			<div class="card-header">
				<div class="clearfix">
	   				<h4 class="card-title impacta-titulo-panel">Nova Despesa
	   				<a class="btn btn-link float-right impacta-link-panel" href="/despesas">Listagem Despesas</a> </h4>
	   			</div>
			</div>
			<div class="card-body">
				<div class="form-group">
					<label for="descricao" class="col-sm-2 control-label">Descrição</label>
					<div class="col-sm-4">
						<form:input class="form-control" path="descricao"/>
						<form:errors path="descricao" cssClass="error"/>
					</div>
				</div>
				<div class="form-group">
					<label for="categoria" class="col-sm-2 control-label">Categoria</label>
					<div class="col-sm-2">
						<form:select class="form-control" path="categoria">
							<form:options/>
						</form:select>
					</div>
				</div>

				<div class="form-group">
					<label for="data" class="col-sm-2 control-label">Data</label>
					<div class="col-sm-2">
						<form:input class="form-control" path="data" />
						<form:errors path="data" cssClass="error"/>
					</div>
				</div>

				<div class="form-group">
					<label for="valor" class="col-sm-2 control-label">Valor</label>
					<div class="col-sm-2">
						<form:input class="form-control" path="valor" />
						<form:errors path="valor" cssClass="error"/>
					</div>
				</div>

				<div class="form-group">
					<label for="observacoes" class="col-sm-2 control-label">Observações</label>
					<div class="col-sm-6">
						<form:input class="form-control" path="observacoes" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-primary">Salvar</button>
					</div>
				</div>
			</div>
		</div>
	</form:form>
	<script src="/js/bootstrap.min.js"></script>
</body>
</html>