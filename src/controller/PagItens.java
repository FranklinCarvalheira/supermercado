package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//projeto antigo

import model.Estoque;
import model.Produto;

@WebServlet("/itens")
public class PagItens extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
		//Produto produto = new Produto();
		//produto.setNome("MAÇA");
		//produto.setPreco(2.00);
		//produto.setQuantidade(2);
		//produto.setUnidade("Gramas");
		//produto.setDescricao("GALA");
		Estoque estoque = new Estoque();
		//estoque.adiciona(produto);
		List<Produto> lista = estoque.getProdutos();
		
	    RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/itens.jsp");
	    request.setAttribute("produtos", lista);
	    rd.forward(request,response);
	}
}

