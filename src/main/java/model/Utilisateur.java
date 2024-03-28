package model;



public class Utilisateur {

	private int id_utilisateur;
	private String prenom;
	private String nom;
	private String pseudo;
	private String mail;
	private String mdp;
	private int age;
	
	public Utilisateur() {
		super();
	}

	public Utilisateur(int id_utilisateur, String prenom, String nom, String pseudo, String mail, String mdp, int age
			) {
		super();
		this.id_utilisateur = id_utilisateur;
		this.prenom = prenom;
		this.nom = nom;
		this.pseudo = pseudo;
		this.mail = mail;
		this.mdp = mdp;
		this.age = age;
	}

	public int getId_utilisateur() {
		return id_utilisateur;
	}

	public void setId_utilisateur(int id_utilisateur) {
		this.id_utilisateur = id_utilisateur;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPseudo() {
		return pseudo;
	}

	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getMdp() {
		return mdp;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}


}
