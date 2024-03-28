package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;



import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.AnimeDao;
import dao.MangaDao;
import model.Anime;
import model.Livre;

/**
 * Servlet implementation class Admin
 */
@MultipartConfig
@WebServlet(urlPatterns = { "/admin" })
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Anime anime = new Anime();
	Livre manga = new Livre();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");

		if ("listanime".equals(action)) {
			ArrayList<Anime> anime = AnimeDao.listAnime();
			request.setAttribute("animes", anime);
			request.getRequestDispatcher("vue/Admin/listanime.jsp").forward(request, response);
		}
		else if ("listmanga".equals(action)) {
			ArrayList<Livre> manga = MangaDao.listManga();
			request.setAttribute("mangas", manga);
			request.getRequestDispatcher("vue/Admin/listmanga.jsp").forward(request, response);
		} 
		else if ("accueil".equals(action)) {
			request.getRequestDispatcher("vue/Admin/accueil.jsp").forward(request, response);
		} 
		else if ("editanime".equals(action)) {
			int animeId = Integer.parseInt(request.getParameter("id"));
			Anime anime = AnimeDao.findById(animeId);
			System.out.println(anime);
			request.setAttribute("anime", anime);
			request.getRequestDispatcher("vue/Admin/editanime.jsp").forward(request, response);
		}
		else if ("editmanga".equals(action)) {
			int mangaId = Integer.parseInt(request.getParameter("id"));
			Livre manga = MangaDao.findById(mangaId);
			request.setAttribute("manga", manga);
			request.getRequestDispatcher("vue/Admin/editmanga.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");

		
			if (request.getParameter("image_name") != null) {
				anime.setImage(request.getParameter("image_name"));
				manga.setImage(request.getParameter("image_name"));
			}
			if (!request.getPart("image_anime").getSubmittedFileName().isEmpty()) {
				// upload image
				Part file = request.getPart("image_anime");
				String imageName = file.getSubmittedFileName();
				String destination = "assets/img";
				String upload = getServletContext().getRealPath(destination);
				File dossier = new File(upload);
				if (!dossier.exists()) {
					dossier.mkdirs();
				}
				file.write(upload + File.separator + imageName);
				anime.setImage(imageName);
				manga.setImage(imageName);
			}
// POUR LES ANIMES
			anime.setDateCreation(request.getParameter("dateCrea"));
			if(request.getParameter("dateEnd").equals("")) {
				anime.setDateTerminer(null);
			}else {
				anime.setDateTerminer(request.getParameter("dateEnd"));
			}
			anime.setTitre_anime(request.getParameter("titre_anime"));
			anime.setDescription(request.getParameter("description"));
			anime.setStudio(request.getParameter("studio"));
			anime.setAuteur_anime(request.getParameter("auteur_anime"));
			
// POUR LES MANGAS
			manga.setDateCrea(request.getParameter("dateCrea"));
			if(request.getParameter("dateEnd").equals("")) {
				manga.setDateFin(null);
			}else {
				manga.setDateFin(request.getParameter("dateEnd"));
			}
			manga.setNom_livre(request.getParameter("nom_livre"));
			manga.setDescription(request.getParameter("description"));
			manga.setEdition(request.getParameter("edition"));
			manga.setIllustrateur(request.getParameter("illustrateur"));
			manga.setAuteur(request.getParameter("auteur"));

			String idParameter = request.getParameter("id");
			if ("editanime".equals(action)) {
				anime.setId_anime(Integer.parseInt(idParameter));
				System.out.println("Passe ici alors qu'il ne doit pas passer ici (sauf si j'édit un animé)");
				anime.setId_anime(Integer.parseInt(request.getParameter("id")));
				AnimeDao.edit(anime);
				response.sendRedirect("/Animewave/");
			}
			if ("editmanga".equals(action)) {
				manga.setId_livre(Integer.parseInt(idParameter));
				System.out.println("Passe ici alors qu'il ne doit pas passer ici (sauf si j'édit un manga)");
				anime.setId_anime(Integer.parseInt(request.getParameter("id")));
				MangaDao.edit(manga);
				response.sendRedirect("/Animewave/");
				System.out.println(request.getParameter("dateCrea"));
				anime.setDateCreation(request.getParameter("dateCrea"));
				if(request.getParameter("dateEnd").equals("")) {
					anime.setDateTerminer(null);
				}else {
					anime.setDateTerminer(request.getParameter("dateEnd"));
				}
				anime.setTitre_anime(request.getParameter("titre_anime"));
				anime.setDescription(request.getParameter("description"));
				anime.setStudio(request.getParameter("studio"));
				anime.setAuteur_anime(request.getParameter("auteur_anime"));
			} 
			else if ("ajout".equals(action)){
				System.out.println("Passe ici");
				request.setAttribute("msn", "L'animé a été ajouter avec succès.");
				request.setAttribute("msnType", "OK");
				AnimeDao.ajoutAnime(anime);
				response.sendRedirect("/Animewawe/ajout");
			}
		
		
	}

}
