package nl.eethuisscharlo.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonObject;
import javax.json.JsonReader;
import javax.json.JsonValue;

import nl.eethuisscharlo.datamodel.CategoryItem;
import nl.eethuisscharlo.datamodel.DishItem;

public final class MenuDataBuilder {

	public static void main(String[] args) {
//		getCategories();

	}
	public  List<CategoryItem> getCategories() {
	
		ClassLoader classLoader = getClass().getClassLoader();
		File file = new File(classLoader.getResource("menu.json").getFile());
		JsonReader reader = null;
		try {
			reader = Json.createReader(new FileInputStream(file));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JsonArray menuArray = reader.readArray();

		List<CategoryItem> catItems = buildCategoryItems(menuArray);
		reader.close();

		return catItems;
	}

	private static List<CategoryItem> buildCategoryItems(JsonArray menuArray) {
		List<CategoryItem> result = new ArrayList<CategoryItem>();

		for (int i = 0; i < menuArray.size(); i++){
			JsonObject jsonCat = menuArray.getJsonObject(i);

			CategoryItem categoryItem = buildCategoryItem(jsonCat);
			if (categoryItem.isActive()){
				result.add(categoryItem);
			}
		}

		return result;
	}

	private static CategoryItem buildCategoryItem(JsonObject jsonCat) {
		CategoryItem categoryItem = new CategoryItem();
		categoryItem.setCategoryId(new Long(jsonCat.getInt("categoryId")));
		categoryItem.setCategoryName(jsonCat.getString("categoryName"));
		categoryItem.setActive(jsonCat.getInt("active") == 1);
		List<DishItem> dishItems = buildMenuItems(jsonCat.getJsonArray("menuItems"));
		categoryItem.setMenuItems(dishItems);
		return categoryItem;
	}

	private static List<DishItem> buildMenuItems(JsonArray menuItems) {
		List<DishItem> dishItems = new ArrayList<DishItem>();

		for (int i = 0; i < menuItems.size(); i++){
			JsonObject jsonMenuItem = menuItems.getJsonObject(i);

			DishItem dishItem = buildMenuItem(jsonMenuItem);

			if (dishItem.isActive()){
				dishItems.add(dishItem );
			}
		}
		return dishItems;
	}

	private static DishItem buildMenuItem(JsonObject jsonMenuItem) {
		DishItem dishItem = new DishItem();
		dishItem.setActive(jsonMenuItem.getInt("active") == 1);
		dishItem.setName(jsonMenuItem.getString("name"));
		dishItem.setDescription(jsonMenuItem.getString("description"));
		dishItem.setIngredients(jsonMenuItem.getString("ingredients"));
		dishItem.setPrice(new Double(jsonMenuItem.getInt("price")));
		return dishItem;
	}
}

