package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.MangaDao;
import model.Livre;


/**
 * Servlet implementation class Manga
 */
@WebServlet("/manga")
public class Manga extends HttpServlet {
	private static final long serialVersionUID = 1L;
       MangaDao mangadao = new MangaDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Manga() {
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
	            int mangaId = Integer.parseInt(request.getParameter("id"));
	            Livre manga = mangadao.findById(mangaId);
	            System.out.println(manga);
	            request.setAttribute("manga", manga);
	            request.getRequestDispatcher("vue/Manga/detail.jsp").forward(request, response);
	        } else {
	            request.setAttribute("mangas", mangadao.listManga());
	            request.getRequestDispatcher("vue/Manga/list.jsp").forward(request, response);
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
