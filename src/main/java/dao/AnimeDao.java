package dao;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Anime;




public class AnimeDao {

	public static Boolean ajoutAnime(Anime Anime) {

		PreparedStatement prepare;
		try {	
			db.Connect();
			prepare = db.connexion.prepareStatement(
				    "INSERT INTO Anime (titre_anime, auteur_anime, description, studio, dateTerminer, dateCreation, image) VALUES (?, ?, ?, ?, ?, ?, ?)");
			prepare.setString(1, Anime.getTitre_anime());
			prepare.setString(2, Anime.getAuteur_anime());
			prepare.setString(3, Anime.getDescription());
			prepare.setString(4, Anime.getStudio());
			prepare.setString(5,  Anime.getDateTerminer());
			prepare.setString(6,  Anime.getDateCreation());
			prepare.setString(7, Anime.getImage());
			System.out.println(prepare);
			prepare.execute();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}

	public static ArrayList<Anime> listAnime() {

		ArrayList<Anime> Animes = new ArrayList<>();
		PreparedStatement prepare;
		try {
			db.Connect();
			prepare = db.connexion.prepareStatement("SELECT id_anime, titre_anime, auteur_anime, description, studio, dateTerminer, dateCreation, image FROM Anime");
			ResultSet rs = prepare.executeQuery();
			while (rs.next()) {
				Anime Anime = new Anime(rs.getInt("id_anime"), rs.getString("titre_anime"), rs.getString("auteur_anime"),	rs.getString("description"),
					rs.getString("studio"),rs.getString("dateTerminer") ,rs.getString("dateCreation"), rs.getString("image"));
				Animes.add(Anime);
			}
			return Animes;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public static Anime findById(int id) {
		PreparedStatement prepare;

		try {
			db.Connect();
			prepare = db.connexion.prepareStatement("SELECT id_anime, titre_anime, auteur_anime, description, studio, dateTerminer, dateCreation, image FROM Anime WHERE id_anime = ?");
			prepare.setInt(1,  id);
			ResultSet rs = prepare.executeQuery();
			if (rs.next()) {
				Anime Anime = new Anime(rs.getInt("id_anime"), rs.getString("titre_anime"), rs.getString("auteur_anime"),rs.getString("studio"),
						rs.getString("description"),rs.getString("dateTerminer") ,rs.getString("dateCreation"), rs.getString("image"));
				System.out.println(Anime);
				return Anime;
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public static Boolean  edit(Anime anime) {
		// TODO Auto-generated method stub
		PreparedStatement prepare;
		try {
			db.Connect();
			prepare = db.connexion.prepareStatement(
					"UPDATE anime SET titre_anime = ?, auteur_anime = ?, description = ?, studio = ?, dateTerminer = ?, dateCreation = ?, image = ? WHERE id_anime = ?");
			prepare.setString(1, anime.getTitre_anime());
			prepare.setString(2, anime.getAuteur_anime());
			prepare.setString(3, anime.getDescription());
			prepare.setString(4, anime.getStudio());
			prepare.setString(5,  anime.getDateTerminer());
			prepare.setString(6,  anime.getDateCreation());
			prepare.setString(7, anime.getImage());
			prepare.setInt(8, anime.getId_anime());
			System.out.println(prepare);
			prepare.execute();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
}
