package nl.eethuisscharlo.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonObject;
import javax.json.JsonReader;
import javax.json.JsonValue;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import nl.eethuisscharlo.datamodel.CategoryItem;
import nl.eethuisscharlo.datamodel.DishItem;

@RestController
public class EethuisScharloController {
	String message = "Welcome to Spring MVC!";

	@RequestMapping("/hello")
	public ModelAndView showMessage(
			@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		System.out.println("in controller");

		ModelAndView mv = new ModelAndView("helloworld");
		mv.addObject("message", message);
		mv.addObject("name", name);
		return mv;
	}
	
	@RequestMapping(value = "/menu", 
					produces = MediaType.APPLICATION_JSON_VALUE, 
					consumes = MediaType.APPLICATION_JSON_VALUE,
					method = RequestMethod.GET,
					headers="Accept=*/*")
	public @ResponseBody List<CategoryItem> getMenu() {
		List<CategoryItem> categories = new ArrayList<CategoryItem>();
		try{
			MenuDataBuilder menuDataBuilder = new MenuDataBuilder();
			categories = menuDataBuilder.getCategories();
		}catch (Exception e) {
			System.out.println(e);
		}
		return categories;
	}
	

	public List<CategoryItem> getCategories() {


        InputStream fis = null;
		try {
			fis = new FileInputStream("src/main/resources/menu.json");
		} catch (FileNotFoundException e) {
			System.out.println(e.getMessage());
		}

        JsonReader reader = Json.createReader(fis);
        JsonArray menuArray = reader.readArray();
        
        List<CategoryItem> catItems = buildCategoryItems(menuArray);
        reader.close();

        return catItems;
	}

	private List<CategoryItem> buildCategoryItems(JsonArray menuArray) {
		List<CategoryItem> result = new ArrayList<CategoryItem>();
		
		for (int i = 0; i < menuArray.size(); i++){
			JsonValue jsonCat = menuArray.get(i);
			
			CategoryItem categoryItem = buildCategoryItem(jsonCat);
			if (categoryItem.isActive()){
				result.add(categoryItem);
			}
		}
		
		return result;
	}

	private CategoryItem buildCategoryItem(JsonValue jsonCat) {
		CategoryItem categoryItem = new CategoryItem();
		JsonObject jsonCatObj = jsonCat.asJsonObject();
		categoryItem.setCategoryId(new Long(jsonCatObj.getInt("categoryId")));
		categoryItem.setCategoryName(jsonCatObj.getString("categoryName"));
		categoryItem.setActive(jsonCatObj.getInt("active") == 1);
		List<DishItem> dishItems = buildMenuItems(jsonCatObj.getJsonArray("menuItems"));
		categoryItem.setMenuItems(dishItems);
		return categoryItem;
	}

	private List<DishItem> buildMenuItems(JsonArray menuItems) {
		List<DishItem> dishItems = new ArrayList<DishItem>();
		
		for (int i = 0; i < menuItems.size(); i++){
			JsonObject jsonMenuItem = menuItems.get(i).asJsonObject();
			
			DishItem dishItem = buildMenuItem(jsonMenuItem);

			if (dishItem.isActive()){
				dishItems.add(dishItem );
			}
		}
		return dishItems;
	}

	private DishItem buildMenuItem(JsonObject jsonMenuItem) {
		DishItem dishItem = new DishItem();
		dishItem.setActive(jsonMenuItem.getInt("active") == 1);
		dishItem.setName(jsonMenuItem.getString("name"));
		dishItem.setDescription(jsonMenuItem.getString("description"));
		dishItem.setIngredients(jsonMenuItem.getString("ingredients"));
		dishItem.setPrice(new Double(jsonMenuItem.getInt("price")));
		return dishItem;
	}
}
