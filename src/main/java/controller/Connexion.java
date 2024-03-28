package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dao.UtilisateurDao;

/**
 * Servlet implementation class Connexion
 */
@WebServlet("/connexion")
public class Connexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Connexion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("vue/utilisateur/connexion.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		UtilisateurDao userDao = new UtilisateurDao();
		if(userDao.checkconnexion(request.getParameter("mail"),request.getParameter("mdp")) != null) {
			HttpSession usersession = request.getSession(true);
		    usersession.setAttribute("currentUser", userDao.checkconnexion(request.getParameter("mail"),request.getParameter("mdp")));
		    response.sendRedirect("/Animewave");	
		} else {
			//request.getRequestDispatcher("vue/user/connexion.jsp").forward(request, response);
			request.setAttribute("erreur", "L'email ou le mot de passe incorrect.");

			doGet(request, response);
		}
		
	}

}
