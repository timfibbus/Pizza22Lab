package co.timfibbus.pizzaparlor;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PizzaController {
	
	
	@RequestMapping("/")
	public String showIndex() {
		return "/index";
	}

	@RequestMapping("/creation")
	public String showCrazyForm(Model model) {
		List<String> toppings = Arrays.asList("Pepperoni", "Sausage", "Chicken",
				"Mushroom", "Olive", "Green Pepper", "Onion", "Banana Pepper",
				"Anchovies", "Pineapple");
		model.addAttribute("toppings", toppings);

		return "/creation";
	}
	
	@RequestMapping("/specials")
	public String showSpecials() {
		return "/specials";
	}
	
	@RequestMapping("/review")
	public String showReview() {
		return "/review";
	}
	// only handles POST requests
	// parameter values are submitted in body
	
	@PostMapping("/review")
	public String submitReview(Model model, @RequestParam(name = "notes") String notes, 
			@RequestParam("rating") int rating, @RequestParam("name") String name) {
		
			model.addAttribute("notes", notes);
			model.addAttribute("rating", rating);
			model.addAttribute("name", name);
			return "/thankyou";
		}
	
	@PostMapping("/creation")
	public String submitPizza(Model model, @RequestParam(name = "protein", required = false) String protein,
			@RequestParam(name = "toppings", defaultValue = "") List<String> toppings,
			@RequestParam("beverage") String beverage, @RequestParam("name") String name,
			@RequestParam("age") Double age, @RequestParam("email") String email,
			@RequestParam("order-date") @DateTimeFormat(pattern = "yyyy-MM-dd") Date date,
			@RequestParam("notes") String notes) {

		model.addAttribute("meat", protein);
		model.addAttribute("toppings", toppings);
		model.addAttribute("beverage", beverage);
		model.addAttribute("notes", notes);
		model.addAttribute("name", name);
		model.addAttribute("age", age);
		model.addAttribute("email", email);
		model.addAttribute("date", date);		

		return "/creationresults";
	}

}