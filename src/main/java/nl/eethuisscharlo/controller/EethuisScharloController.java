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

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	public static void main(String[] args) {


        InputStream fis = null;
		try {
			fis = new FileInputStream("src/main/resources/menu.json");
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
		}

        JsonReader reader = Json.createReader(fis);

        JsonArray menuArray = reader.readArray();
        
        List<CategoryItem> catItems = buildCategoryItems(menuArray);

        reader.close();

//        System.out.println("Name   : " + personObject.getString("name"));
//        System.out.println("Age    : " + personObject.getInt("age"));
//        System.out.println("Married: " + personObject.getBoolean("isMarried"));
//
//        JsonObject addressObject = personObject.getJsonObject("address");
//        System.out.println("Address: ");
//        System.out.println(addressObject.getString("street"));
//        System.out.println(addressObject.getString("zipCode"));
//
//        System.out.println("Phone  : ");
//        JsonArray phoneNumbersArray = personObject.getJsonArray("phoneNumbers");
//
//        for (JsonValue jsonValue : phoneNumbersArray) {
//            System.out.println(jsonValue.toString());
//        }

	}

	private static List<CategoryItem> buildCategoryItems(JsonArray menuArray) {
		List<CategoryItem> result = new ArrayList<CategoryItem>();
		
		for (int i = 0; i < menuArray.size(); i++){
			JsonValue jsonValue = menuArray.get(i);
			
			CategoryItem categoryItem = buildCategoryItem(jsonValue);
			result.add(categoryItem);
		}
		
		return result;
	}

	private static CategoryItem buildCategoryItem(JsonValue jsonValue) {
		// TODO Auto-generated method stub
		return null;
	}
}
