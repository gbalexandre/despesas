<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<head>
<meta charset="UTF-8" />
<title>Listagem de Despesas</title>
<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css" />
</head>
<body>
	<nav class="navbar bg-light navbar-light"></nav>

	<div class="card">
			<div class="card-header">
				<div class="clearfix">
	   				<h4 class="card-title impacta-titulo-panel">Listagem de Despesas
	   					<a class="btn btn-link float-right impacta-link-panel" href="/despesas/form">Nova Despesa</a> </h4>
	   			</div>
			</div>

		<div class="card-body">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th class="text-center">#</th>
						<th class="text-center">Descrição</th>
						<th class="text-center">Categoria</th>
						<th class="text-center">Data</th>
						<th class="text-center">Valor</th>
						<th class="text-center">Observações</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${despesas}" var="despesa">
						<tr>
							<td class="text-center">${despesa.codigo}</td>
							<td class="text-left">${despesa.descricao}</td>
							<td class="text-center">${despesa.categoria.nome}</td>
							<td class="text-center">${despesa.data}</td>
							<td class="text-right"><fmt:formatNumber
									value="${despesa.valor}" type="currency" /></td>
							<td class="text-left">${despesa.observacoes}</td>
							<td class="text-center"></td>
						</tr>
					</c:forEach>
					<c:if test="${despesas.isEmpty()}">
						<tr>
							<td class="text-center" colspan="7"><i>NENHUMA DESPESA
									FOI ENCONTRADA.</i></td>
						</tr>
					</c:if>
				</tbody>
			</table>	
	</div>
</body>
</html>