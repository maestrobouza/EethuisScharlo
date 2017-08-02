package nl.eethuisscharlo.datamodel;

public class DishItem {

	
	private CategoryItem parentCategory;
	
	private String name;
	
	private String description;
	
	private String ingredients;
	
	private Double price;
	
	private boolean active;

	public CategoryItem getParentCategory() {
		return parentCategory;
	}

	public void setParentCategory(CategoryItem parentCategory) {
		this.parentCategory = parentCategory;
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

	public String getIngredients() {
		return ingredients;
	}

	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

}
