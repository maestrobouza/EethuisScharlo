package nl.eethuisscharlo.datamodel;

import java.util.List;

public class CategoryItem {

	private Long categoryId;

	private String categoryName;

	private boolean active;

	private List<DishItem> menuItems;

	public Long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public List<DishItem> getMenuItems() {
		return menuItems;
	}

	public void setMenuItems(List<DishItem> menuItems) {
		this.menuItems = menuItems;
	}

}
