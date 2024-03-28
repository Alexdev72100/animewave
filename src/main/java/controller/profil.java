package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCrypt;


import dao.UtilisateurDao;
import model.Utilisateur;

/**
 * Servlet implementation class profil
 */
@WebServlet("/profil")
public class profil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public profil() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Récupérer l'utilisateur connecté depuis la session
		Utilisateur currentUser = (Utilisateur) request.getSession().getAttribute("currentUser");

		// Ajouter l'utilisateur à la requête pour le transmettre à la vue JSP
		request.setAttribute("currentUser", currentUser);
		request.getRequestDispatcher("vue/profil/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UtilisateurDao utilisateurDao = new UtilisateurDao();
		HttpSession session = request.getSession(true);

		if (request.getParameter("formSubmited").equals("editAccount")) {

			Utilisateur user = new Utilisateur();
			user.setNom(request.getParameter("nom"));
			user.setPrenom(request.getParameter("prenom"));
			user.setMail(request.getParameter("mail"));
			user.setAge(Integer.parseInt(request.getParameter("age")));
			user.setPseudo(request.getParameter("pseudo"));
			user.setId_utilisateur(Integer.parseInt(request.getParameter("id")));

			if (utilisateurDao.editUtilisateur(user)) {
				System.out.println(((Utilisateur) session.getAttribute("currentUser")).getId_utilisateur());
				session.setAttribute("currentUser",
						UtilisateurDao.findById(((Utilisateur) session.getAttribute("currentUser")).getId_utilisateur()));
				request.setAttribute("msn", "Vos informations personnelles ont bien été mises à jour !");
				request.setAttribute("msnType", "OK");
				doGet(request, response);
			} else {
				request.setAttribute("msn", "Oups, la mise à jour a échoué.");
				request.setAttribute("msnType", "KO");
			}
	
		}
		if (request.getParameter("formSubmited").equals("suppAccount")) {
			System.out.println(request.getParameter("pwdForDeactivation"));
			if (request.getParameter("pwdForDeactivation") != "") {
                utilisateurDao.desactivate(((Utilisateur) session.getAttribute("currentUser")),
					request.getParameter("pwdForDeactivation"));
				// request.setAttribute("deactivationLogOut", true);
				request.setAttribute("msn", "Votre compte a bien été désactivé !");
				request.setAttribute("msnType", "OK");

				session.invalidate();
				response.sendRedirect("inscription");

			} else {
				System.out.println("test3235");
				request.setAttribute("msn", "Veuillez entrer un mot de passe valide!");
				request.setAttribute("msnType", "KO");
				request.getRequestDispatcher("vue/profil/index.jsp").forward(request, response);
				
			}
		}
		// EDIT PASSWORD
		if (request.getParameter("formSubmited").equals("accountPassword")) {
			if (request.getParameter("newMdp").equals(request.getParameter("confMdp"))) {
				if (BCrypt.checkpw(request.getParameter("oldPwd"),((Utilisateur) session.getAttribute("currentUser")).getMdp())) {
					String hashNewPwd = BCrypt.hashpw(request.getParameter("newMdp"), BCrypt.gensalt());
					utilisateurDao.updatePwd((Utilisateur) session.getAttribute("currentUser"), hashNewPwd);
					request.setAttribute("msn", "Votre mdp a bien été changer!");
					request.setAttribute("msnType", "OK");
				}
			} else {
				request.setAttribute("msn", "Erreur, les 2 mots de passe ne correspondent pas");
				request.setAttribute("msnType", "KO");
			}

			doGet(request, response);
		}

	}
	
}

