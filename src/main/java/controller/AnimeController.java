package controller;

import java.io.IOException;


import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.AnimeDao;
import model.Anime;



/**
 * Servlet implementation class AnimeController
 */
@WebServlet("/anime")
public class AnimeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	AnimeDao animeDao = new AnimeDao();
	
    public AnimeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @SuppressWarnings("static-access")
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        
        if ("detail".equals(action)) {
            int animeId = Integer.parseInt(request.getParameter("id"));
            Anime anime = AnimeDao.findById(animeId);
            System.out.println(anime);
            request.setAttribute("anime", anime);
            request.getRequestDispatcher("vue/Anime/detail.jsp").forward(request, response);
        } else {
            AnimeDao animeDao = new AnimeDao();
            request.setAttribute("animes", animeDao.listAnime());
            request.getRequestDispatcher("vue/Anime/list.jsp").forward(request, response);
        }
    }

    



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(request, response);
	}
	

}
