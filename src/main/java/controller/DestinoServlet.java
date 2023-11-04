package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DestinosDAO;
import modelos.Destinos;


@WebServlet(urlPatterns = { "/destino", "/destino-create", "/destino-edit", "/destino-update", "/destino-delete" })
public class DestinoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DestinosDAO ddao = new DestinosDAO();
	Destinos destino = new Destinos();
	
    public DestinoServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/destino":
			read(request, response);
			break;
		case "/destino-create":
			create(request, response);
			break;
			
		case "/destino-edit":
			edit(request, response);
			break;
			
		case "/destino-update":
			update(request, response);
			break;
		case "/destino-delete":
			delete(request, response);
			break;
		default:
			response.sendRedirect("index.html");
			break;
		}

	}

	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Destinos> lista = ddao.read();

		request.setAttribute("listaDestinos", lista);

		RequestDispatcher rd = request.getRequestDispatcher("./views/destinos/index.jsp");
		rd.forward(request, response);

	}

	protected void create(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		destino.setNome(request.getParameter("nome"));
		destino.setDescricao(request.getParameter("descricao"));
		destino.setPreco(Float.valueOf(request.getParameter("preco")));
	
		ddao.create(destino);
		response.sendRedirect("destino");
	}
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		destino = ddao.readById(id);
		
		request.setAttribute("destino", destino);

		RequestDispatcher rd = request.getRequestDispatcher("./views/destinos/update.jsp");
		rd.forward(request, response);
	}

	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		destino.setId(Integer.parseInt(request.getParameter("id")));
		destino.setNome(request.getParameter("nome"));
		destino.setDescricao(request.getParameter("descricao"));
		destino.setPreco(Float.valueOf(request.getParameter("preco")));

		ddao.update(destino);
		response.sendRedirect("destino");
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		ddao.delete(id);
		response.sendRedirect("destino");
	}

}