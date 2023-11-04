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
import dao.ReservaDAO;
import dao.UsuarioDAO;
import modelos.Destinos;
import modelos.Reserva;
import modelos.Usuarios;


@WebServlet(urlPatterns = { "/reserva", "/reserva-getCreate", "/reserva-create", "/reserva-edit", "/reserva-update", "/reserva-delete" })
public class ReservaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ReservaDAO rdao = new ReservaDAO();
	DestinosDAO ddao = new DestinosDAO();
	UsuarioDAO udao = new UsuarioDAO();
	Reserva reserva = new Reserva();

    public ReservaServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/reserva":
			read(request, response);
			break;
		case "/reserva-getCreate":
			getCreate(request, response);
			break;
		case "/reserva-create":
			create(request, response);
			break;
		case "/reserva-edit":
			edit(request, response);
			break;
		case "/reserva-update":
			update(request, response);
			break;
		case "/reserva-delete":
			delete(request, response);
			break;
		default:
			response.sendRedirect("index.html");
			break;
		}

	}

	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Reserva> lista = rdao.read();

		request.setAttribute("listaReserva", lista);

		RequestDispatcher rd = request.getRequestDispatcher("./views/reserva/index.jsp");
		rd.forward(request, response);

	}
	
	protected void getCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Destinos> listaDestinos = ddao.read();
		request.setAttribute("listaDestinos", listaDestinos);
		
		List<Usuarios> listaUsuarios = udao.read();
		request.setAttribute("listaUsuarios", listaUsuarios);
		
		RequestDispatcher rd = request.getRequestDispatcher("./views/reserva/create.jsp");
		rd.forward(request, response);
	}

	protected void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Usuarios usuario = udao.readById(Integer.parseInt(request.getParameter("usuario")));
		Destinos destino = ddao.readById(Integer.parseInt(request.getParameter("destino")));
		
		String data = request.getParameter("data");
		
		reserva = new Reserva(data, usuario, destino);
		
		rdao.create(reserva);
		response.sendRedirect("reserva");
	}

	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		reserva = rdao.readById(id);
		
		request.setAttribute("reserva", reserva);
		
		List<Destinos> listaDestinos = ddao.read();
		request.setAttribute("listaDestinos", listaDestinos);
		
		List<Usuarios> listaUsuarios = udao.read();
		request.setAttribute("listaUsuarios", listaUsuarios);

		RequestDispatcher rd = request.getRequestDispatcher("./views/reserva/update.jsp");
		rd.forward(request, response);
	}

	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		reserva.setId(Integer.parseInt(request.getParameter("id")));
		reserva.setUsuario(udao.readById(Integer.parseInt(request.getParameter("usuario"))));
		reserva.setDestino(ddao.readById(Integer.parseInt(request.getParameter("destino"))));
		reserva.setData_reserva(request.getParameter("data"));

		rdao.update(reserva);
		response.sendRedirect("reserva");
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		rdao.delete(id);
		response.sendRedirect("reserva");
	}

}