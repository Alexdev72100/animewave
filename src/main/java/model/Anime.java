package model;

public class Anime {

	private int id_anime;
	private String titre_anime;
	private String auteur_anime;
    private String description;
    private String studio;
	private String dateTerminer;
	private String dateCreation;

	private String image;
	public Anime(int id_anime,String titre_anime,  String auteur_anime , String studio,String description,
			String dateTerminer, String dateCreation, String image) {
		super();
		this.id_anime = id_anime;
		this.titre_anime = titre_anime;	
		this.auteur_anime = auteur_anime;
		this.description = description;
		this.studio = studio;
		this.dateTerminer = dateTerminer;
		this.dateCreation = dateCreation;
		this.image = image;
	}
	
	public Anime() {
		super();
	}

	public int getId_anime() {
		return id_anime;
	}

	public String getTitre_anime() {
		return titre_anime;
	}

	public void setTitre_anime(String titre_anime) {
		this.titre_anime = titre_anime;
	}
	public void setId_anime(int id_anime) {
		this.id_anime = id_anime;
	}

	public String getStudio() {
		return studio;
	}

	public void setStudio(String studio) {
		this.studio = studio;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}



	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAuteur_anime() {
		return auteur_anime;
	}

	public void setAuteur_anime(String auteur_anime) {
		this.auteur_anime = auteur_anime;
	}

	public String getDateTerminer() {
		return dateTerminer;
	}

	public void setDateTerminer(String dateTerminer) {
		this.dateTerminer = dateTerminer;
	}

	public String getDateCreation() {
		return dateCreation;
	}

	public void setDateCreation(String dateCreation) {
		this.dateCreation = dateCreation;
	}
	
}
