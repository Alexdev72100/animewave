package model;

public class Livre {

	private int id_livre;
	private String nom_livre;
	private String auteur;
	private String edition;
	private String description;
	private String dateCrea;
	private String illustrateur;
	private String dateFin;
	private String image;
	
	
	public Livre(int id_livre, String nom_livre, String auteur, String edition, String description, String dateCrea,
			String illustrateur, String dateFin, String image) {
		super();
		this.id_livre = id_livre;
		this.nom_livre = nom_livre;
		this.auteur = auteur;
		this.edition = edition;
		this.description = description;
		this.dateCrea = dateCrea;
		this.illustrateur = illustrateur;
		this.dateFin = dateFin;
		this.image = image;
	}
	
	public Livre() {
		super();
	}


	public int getId_livre() {
		return id_livre;
	}
	public void setId_livre(int id_livre) {
		this.id_livre = id_livre;
	}
	public String getNom_livre() {
		return nom_livre;
	}
	public void setNom_livre(String nom_livre) {
		this.nom_livre = nom_livre;
	}
	public String getAuteur() {
		return auteur;
	}
	public void setAuteur(String auteur) {
		this.auteur = auteur;
	}
	public String getEdition() {
		return edition;
	}
	public void setEdition(String edition) {
		this.edition = edition;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDateCrea() {
		return dateCrea;
	}
	public void setDateCrea(String dateCrea) {
		this.dateCrea = dateCrea;
	}
	public String getIllustrateur() {
		return illustrateur;
	}
	public void setIllustrateur(String illustrateur) {
		this.illustrateur = illustrateur;
	}
	public String getDateFin() {
		return dateFin;
	}
	public void setDateFin(String dateFin) {
		this.dateFin = dateFin;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
