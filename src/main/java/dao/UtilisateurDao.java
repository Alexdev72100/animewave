package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.security.crypto.bcrypt.BCrypt;


import model.Utilisateur;

public class UtilisateurDao {


	public Boolean ajoutUser(Utilisateur Utilisateur) {

		PreparedStatement prepare;
		try {
			db.Connect();
			prepare = db.connexion.prepareStatement("INSERT INTO Utilisateur (nom, prenom, mail, mdp, age, pseudo) VALUES (?, ?, ?, ?,?,?)");
			prepare.setString(1,Utilisateur.getNom());
			prepare.setString(2,Utilisateur.getPrenom());
			prepare.setString(3,Utilisateur.getMail());
			prepare.setString(4,Utilisateur.getMdp());
			prepare.setInt(5,Utilisateur.getAge());
			prepare.setString(6,Utilisateur.getPseudo());
			System.out.println(prepare.execute());
			prepare.execute();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}
	public Boolean listuser(Utilisateur Utilisateur) {

		PreparedStatement prepare;
		try {
			db.Connect();
			prepare = db.connexion.prepareStatement("Select * From Utilisateur");
			prepare.execute();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}
	
	public Boolean checkajout(Utilisateur Utilisateur) {
		PreparedStatement prepare;
		try {
			db.Connect();
			prepare = db.connexion.prepareStatement("Select * from Utilisateur where mail = ?");
			prepare.setString(1,Utilisateur.getMail());
			ResultSet rs = prepare.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public Utilisateur checkconnexion(String mail, String mdp_saisie) {
		PreparedStatement prepare;
		try {
			db.Connect();
			prepare = db.connexion.prepareStatement("Select * from utilisateur where mail like ?");
			prepare.setString(1, mail);
			ResultSet rs = prepare.executeQuery();
			if(rs.next()) {
				if(BCrypt.checkpw( mdp_saisie, rs.getString("mdp"))) {
					return new Utilisateur(rs.getInt("id_utilisateur"), rs.getString("prenom"), rs.getString("nom"),rs.getString("pseudo"),rs.getString("mail"),rs.getString("mdp"), rs.getInt("age"));
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
		return null;
	}
	
	public Boolean editUtilisateur(Utilisateur user) {

		PreparedStatement sql;
		try {
			db.Connect();
			sql = db.connexion.prepareStatement(
					(" UPDATE utilisateur SET"
							+ " prenom = ?, nom=?, mail=?, age=?, pseudo=?"
							+ " WHERE id_utilisateur= ?"));
					
					sql.setString(1, user.getPrenom());
					sql.setString(2, user.getNom());
					sql.setString(3, user.getMail());
					sql.setInt(4, user.getAge());
					sql.setString(5, user.getPseudo());
					sql.setInt(6, user.getId_utilisateur());
					
					sql.executeUpdate();
					
					return true;
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return false;
					}

	}
	
	
	public static Utilisateur findById(int id) {
		PreparedStatement prepare;
		try {
			db.Connect();
			prepare = db.connexion.prepareStatement("select * from utilisateur WHERE id_utilisateur=?");

			prepare.setInt(1, id);
			ResultSet rs = prepare.executeQuery();

			if (rs.next()) {
				return new Utilisateur(rs.getInt("id_utilisateur"), rs.getString("prenom"), rs.getString("nom"),rs.getString("pseudo"),
						rs.getString("mail"), rs.getString("mdp"), rs.getInt("age"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean desactivate(Utilisateur user, String password) {
		PreparedStatement prepare;
		try {
			db.Connect();
			prepare = db.connexion.prepareStatement("select * from utilisateur where mail=?");
			prepare.setString(1, user.getMail());

			ResultSet rs = prepare .executeQuery();

			if (rs.next()) {
				System.out.println( rs.getString("mdp"));
				if (BCrypt.checkpw(password, rs.getString("mdp"))) {
					System.out.println("DESACTIV");
					prepare =db.connexion.prepareStatement("DELETE FROM utilisateur"
							+ " WHERE id_utilisateur= ?");
					prepare.setInt(1, user.getId_utilisateur());
					
					prepare.execute();
					return true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean updatePwd(Utilisateur user, String newPwd) {
		PreparedStatement prepare;
		db.Connect();
		try {
			prepare = db.connexion.prepareStatement("UPDATE user SET pwd = ? WHERE id = ?");
			prepare.setString(1, newPwd);
			prepare.setInt(2, user.getId_utilisateur());
			

					prepare.executeUpdate();
					return true;
				
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	}

	