package model;

public class Category {
	private int id;
	private String slug;
	private String name;
	private String url;

	public Category(int id, String slug, String name, String url) {
		this.id = id;
		this.slug = slug;
		this.name = name;
		this.url = url;
	}

	public Category(String slug, String name, String url) {
		this.slug = slug;
		this.name = name;
		this.url = url;
	}

	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
