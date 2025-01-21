package BookShopPackage;

public class BookModel {
	private int id;
	private String name;
	private String price;
	private String category;
	private String quentity;
	private String description;
	
	public BookModel(int id, String name, String price, String category, String quentity, String description) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.category = category;
		this.quentity = quentity;
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getQuentity() {
		return quentity;
	}

	public void setQuentity(String quentity) {
		this.quentity = quentity;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
