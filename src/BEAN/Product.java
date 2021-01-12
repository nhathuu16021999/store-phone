package BEAN;

public class Product {
	private int id;
	private String name;
	private String img;
	private String info;
	private String pricenew;
	private String priceold;
	private String lable;
	private String kind;

	public Product(int id, String name, String img, String info, String pricenew, String priceold, String lable,
			String kind) {
		this.id = id;
		this.name = name;
		this.img = img;
		this.info = info;
		this.pricenew = pricenew;
		this.priceold = priceold;
		this.lable = lable;
		this.kind = kind;
	}

	public Product(String name, String img, String info, String pricenew, String priceold, String lable, String kind) {
		this.name = name;
		this.img = img;
		this.info = info;
		this.pricenew = pricenew;
		this.priceold = priceold;
		this.lable = lable;
		this.kind = kind;
	}

	public Product(int id) {
		this.id = id;
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

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getPricenew() {
		return pricenew;
	}

	public void setPricenew(String pricenew) {
		this.pricenew = pricenew;
	}

	public String getPriceold() {
		return priceold;
	}

	public void setPriceold(String priceold) {
		this.priceold = priceold;
	}

	public String getLable() {
		return lable;
	}

	public void setLable(String lable) {
		this.lable = lable;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

}
