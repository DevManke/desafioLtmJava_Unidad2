package com.desafiolatam.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.desafiolatam.entidades.InscripcionDTO;
import com.desafiolatam.facade.Facade;
//clase nueva desafio
@WebServlet("/preListarInscripciones")
public class PreListarInscripciones extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		//obtenemos el facade
		Facade facade = new Facade();
		try {
			//obtenemos las listas
			List<InscripcionDTO> InscripcionesPorAlumno = null;
			try {
				InscripcionesPorAlumno = facade.obtieneInscripciones();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			
			//guardo las listas al request
			request.setAttribute("inscripciones", InscripcionesPorAlumno);
			
			//mandamos el request a la pagina jsp
			request.getRequestDispatcher("ListaInscripciones.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
