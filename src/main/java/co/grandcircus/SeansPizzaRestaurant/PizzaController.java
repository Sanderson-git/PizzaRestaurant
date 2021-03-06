package co.grandcircus.SeansPizzaRestaurant;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PizzaController {
	
	@GetMapping("/")
	public String homepage(Model model) {
		List<SpecialtyPizza> specialtyList = new ArrayList();
		SpecialtyPizza meatLovers = new SpecialtyPizza("Meat Lovers", 12);
		specialtyList.add(meatLovers);
		SpecialtyPizza vegLovers = new SpecialtyPizza("Veggie Lovers", 13);
		specialtyList.add(vegLovers);
		SpecialtyPizza seanSpecial = new SpecialtyPizza("The Sean Special", 11);
		specialtyList.add(seanSpecial);
		model.addAttribute("specPizzas", specialtyList);
		
		return "homepage";
	}
	
	@GetMapping("/review")
	public String review() {
		return "review";
	}
	
	@PostMapping("/reviewconfirmation")
	public String reviewConfirmation(@RequestParam String name, @RequestParam String comments, @RequestParam String satisfaction, @RequestParam String stars, Model model) {
		model.addAttribute("name", name);
		model.addAttribute("comments", comments);
		model.addAttribute("satisfaction", satisfaction);
		model.addAttribute("stars", stars);
		return "reviewconfirmation";
	}
	
	@GetMapping("/specialty/{name}&{price}")
	public String specialty(@PathVariable String name, @PathVariable String price, Model model) {
		model.addAttribute("name", name);
		model.addAttribute("price", price);
		return "specialty";
	}
	
	@GetMapping("/custom")
	public String custom(Model model) {
		List<String> toppings = new ArrayList();
		toppings.add("bacon");
		toppings.add("ham");
		toppings.add("peppers");
		toppings.add("pepperoni");
		toppings.add("chicken");
		toppings.add("red onion");
		model.addAttribute("toppings", toppings);
		return "custom";
	}
	
	@PostMapping("/customresult")
	public String customCheckout(@RequestParam String size, @RequestParam String topping, @RequestParam(required=false) boolean gluten, @RequestParam String instructions, Model model) {
		double price = 0;
		model.addAttribute("instructions", instructions);
		model.addAttribute("topping", topping);
		//size
		if (size.equalsIgnoreCase("small")) {
			model.addAttribute("size", size);
			price += 7;
				//toppings
			if (topping.contains("1")) {
				price += .5;
			} else if (topping.contains("2")) {
				price += 1;
			} else if (topping.contains("3")) {
				price += 1.5;
			} else if (topping.contains("4")) {
				price += 2;
			}
			
			
		} else if (size.equalsIgnoreCase("medium")) {
			model.addAttribute("size", size);
			price += 10;
				//toppings
				if (topping.contains("1")) {
					price += 1;
				} else if (topping.contains("2")) {
					price += 2;
				} else if (topping.contains("3")) {
					price += 3;
				} else if (topping.contains("4")) {
					price += 4;
				}
				
				
		} else if (size.equalsIgnoreCase("large")) {
			model.addAttribute("size", size);
			price += 12;
				//toppings
				if (topping.contains("1")) {
					price += 1.25;
				} else if (topping.contains("2")) {
					price += 2.5;
				} else if (topping.contains("3")) {
					price += 3.75;
				} else if (topping.contains("4")) {
					price += 5;
				}
		}
		
		
		if (gluten) {
			model.addAttribute("gluten", "Gluten-Free Crust");
			price += 2;
		} else {
			model.addAttribute("gluten", "Normal");
		}
		model.addAttribute("price", price);
		return "customresult";
	}

}
