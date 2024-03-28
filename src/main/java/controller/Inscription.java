package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.crypto.bcrypt.BCrypt;
import dao.UtilisateurDao;
import model.Utilisateur;

/**
 * Servlet implementation class Inscription
 */
@WebServlet("/inscription")
public class Inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Inscription() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("vue/utilisateur/inscription.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Utilisateur user = new Utilisateur();
		user.setNom(request.getParameter("nom"));
		user.setPrenom(request.getParameter("prenom"));
		user.setMail(request.getParameter("mail"));
		user.setAge(Integer.parseInt(request.getParameter("age")));
		user.setPseudo(request.getParameter("pseudo"));

		String hashpwd = BCrypt.hashpw(request.getParameter("mdp"), BCrypt.gensalt());

		user.setMdp(hashpwd);

		UtilisateurDao userDao = new UtilisateurDao();
		if(userDao.checkajout(user)) {
            request.setAttribute("msn", "Vous avez déjà un compte avec cette adresse e-mail.");
            request.setAttribute("msnType",  "KO");
            request.getRequestDispatcher("vue/utilisateur/inscription.jsp").forward(request, response);
		}else {
			if (userDao.ajoutUser(user)) {	
				request.setAttribute("msn", "Le compte utilisateur a été créé avec succès.");
				request.setAttribute("msnType",  "OK");
				request.getRequestDispatcher("vue/Accueil/home.jsp").forward(request, response);
	
			} else {
		      	request.setAttribute("msn", "Le compte d'utilisateur n'a pas pu être créé.");
				request.setAttribute("msnType",  "KO");
				request.getRequestDispatcher("vue/utilisateur/inscription.jsp").forward(request, response);
			}
		
		}
	
	}

	


}
