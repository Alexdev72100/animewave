package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Livre;

public class MangaDao {
	public static Boolean ajoutManga(Livre Manga) {

		PreparedStatement prepare;
		try {
			db.Connect();
			prepare = db.connexion.prepareStatement(
					"INSERT INTO Livre (nom_livre, auteur, edition, description, dateCrea, illustrateur, dateFin, image) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
			prepare.setString(1, Manga.getNom_livre());
			prepare.setString(2, Manga.getAuteur());
			prepare.setString(3, Manga.getEdition());
			prepare.setString(4, Manga.getDescription());
			prepare.setString(5, Manga.getDateCrea());
			prepare.setString(6, Manga.getIllustrateur());
			prepare.setString(7, Manga.getDateFin());
			prepare.setString(8, Manga.getImage());
			System.out.println(prepare);
			prepare.execute();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}

	public static ArrayList<Livre> listManga() {

		ArrayList<Livre> Mangas = new ArrayList<>();
		PreparedStatement prepare;
		try {
			db.Connect();
			prepare = db.connexion.prepareStatement(
					"SELECT id_livre, nom_livre, auteur, edition,description, dateCrea, illustrateur, dateFin, image FROM Livre");
			ResultSet rs = prepare.executeQuery();
			while (rs.next()) {
				Livre Manga = new Livre(rs.getInt("id_livre"), rs.getString("nom_livre"),
						rs.getString("auteur"), rs.getString("edition"), rs.getString("description"),
						rs.getString("dateCrea"),rs.getString("illustrateur"), rs.getString("dateFin"), rs.getString("image"));;
				Mangas.add(Manga);
			}
			return Mangas;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public static Livre findById(int id) {
		PreparedStatement prepare;

		try {
			db.Connect();
			prepare = db.connexion.prepareStatement(
					"SELECT id_livre, nom_livre, auteur, edition,description, dateCrea, illustrateur, dateFin, image  FROM Livre WHERE id_livre = ?");
			prepare.setInt(1, id);
			ResultSet rs = prepare.executeQuery();
			if (rs.next()) {
				Livre Manga = new Livre(rs.getInt("id_livre"), rs.getString("nom_livre"),
						rs.getString("auteur"), rs.getString("edition"), rs.getString("description"),
						rs.getString("dateCrea"),rs.getString("illustrateur"), rs.getString("dateFin"), rs.getString("image"));
				System.out.println(Manga);
				return Manga;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public static Boolean edit(Livre Manga) {
		// TODO Auto-generated method stub
		PreparedStatement prepare;
		try {
			db.Connect();
			prepare = db.connexion.prepareStatement(
					"UPDATE Livre SET nom_livre = ?, auteur = ?,edition = ?, description = ?, dateCrea = ?, illustrateur = ?,dateFin=?, image = ? WHERE id_livre = ?");
			prepare.setString(1, Manga.getNom_livre());
			prepare.setString(2, Manga.getAuteur());
			prepare.setString(3, Manga.getEdition());
			prepare.setString(4, Manga.getDescription());
			prepare.setString(5, Manga.getDateCrea());
			prepare.setString(6, Manga.getIllustrateur());
			prepare.setString(7, Manga.getDateFin());
			prepare.setString(8, Manga.getImage());
			prepare.setInt(9, Manga.getId_livre());
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
