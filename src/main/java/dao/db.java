package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class db {

	private static String url="jdbc:mysql://localhost:3306/animewave";
	private static String user="root";
	private static String mdp="";
	public static Connection connexion = null;
	
	public static void Connect() {
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			connexion = DriverManager.getConnection(url,user,mdp);
			System.out.println("OK for connect");
				
		}catch(Exception ex) {
			//ex.printStackTrace();
			System.out.println(ex.getMessage());
			System.err.println(ex.getMessage());
		}
	}
}
