package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Funcionario;
import services.SFuncionario;

@WebServlet("/HandlerFuncionario")
public class HandlerFuncionario extends HttpServlet {
	private static final long serialVersionUID = 1L;
    SFuncionario sFuncionario;
	
    public HandlerFuncionario() {
        super();
        sFuncionario = new SFuncionario();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setAttribute("listaFunc", sFuncionario.getArFuncionario());
		request.getRequestDispatcher("/funcionario.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Funcionario func = new Funcionario(1, 
		request.getParameter("nome"), 
		request.getParameter("morada"), 
		request.getParameter("codigoPostal"), 
		Integer.parseInt(request.getParameter("nif")), 
		Integer.parseInt(request.getParameter("niss")), 
		request.getParameter("contacto"),
		request.getParameter("email"), 
		request.getParameter("password"), 
		"", 
		1);
		
		sFuncionario.getArFuncionario().add(func);
		
		this.doGet(request, response);
	}

}
