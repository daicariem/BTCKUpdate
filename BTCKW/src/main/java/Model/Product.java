package Model;

public class Product {
	private int id;
    private String name;
    private String description;
    private String material;
    private String color;
    private double price;
    private String image;
    private int sellID;
	public Product() {
		
	}
	public Product(int id,String name,String description,String material,String color,double price,String image,int sellID) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.material = material;
		this.color = color;
		this.price = price;
		this.image = image;
		this.sellID = sellID;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	public int getSellID() {
		return sellID;
	}
	public void setSellID(int sellID) {
		this.sellID = sellID;
	}
	
	
	
}
