<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, model.Produto"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<title>Estoque</title>
<link rel="stylesheet" type="text/css" href="design.css">
</head>

<body>
	<div class="grid-container">

		<!--div_principal-->
		<div class="div_principal">
			<a href="index">Home</a> <a href="itens">Itens no Estoque</a> <a
				href="compras">Compras</a> <a href="vendas">Vendas</a> <a
				href="receita">Receita</a>
		</div>
	</div>


	<div>
		<div class="pagina">
			<div>
				<h1>Itens no Estoque</h1>
				<hr />
				<br>
			</div>
			<table class="table table-dark bg-color1 mt-4">
				<thead>
					<tr class="animated fadeInLeft">
						<th scope="col">ID</th>
						<th scope="col">Produto</th>
						<th scope="col">Descrição</th>
						<th scope="col">Unidade</th>
						<th scope="col">Valor</th>
						<th scope="col">Quantidade</th>
						<th scope="col">Total</th>
						<th scope="col"></th>
						<th scope="col"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${produtos}" var="produto">
						<tr class="produto animated fadeInLeft">
							<td class="info-id" scope="row">${ produto.id }</td>
							<td class="info-nome">${ produto.nome }</td>
							<td class="info-descricao">${ produto.descricao }</td>
							<td class="info-unidade">${ produto.unidade }</td>
							<td class="info-preco">R$ ${ produto.preco }</td>
							<td class="info-quantidade">${ produto.quantidade }</td>
							<td class="info-Total">${ produto.total }</td>
							<td class="editar"><a
								href="entrada?acao=editar_produto&id=${ produto.id }">Editar</a>
							</td>
							<td class="remover"><a
								href="entrada?acao=removendo_produto&id=${ produto.id }">Remover</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<label>Valor total do Estoque:</label> <input type="text"
				value="R$ 1.000,00" disabled>
			<div class="btn-group">
				<br>
				<button class="button">Adicionar</button>
				<button class="button">Editar</button>
				<button class="button">Excluir</button>
			</div>
		</div>
	</div>
</body>

</html>