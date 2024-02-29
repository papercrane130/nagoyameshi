package com.example.nagoyameshi.controller;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.nagoyameshi.entity.Category;
import com.example.nagoyameshi.entity.Restaurant;
import com.example.nagoyameshi.form.ReservationInputForm;
import com.example.nagoyameshi.repository.CategoryRepository;
import com.example.nagoyameshi.repository.RestaurantRepository;

@Controller
@RequestMapping("/restaurants")
public class RestaurantController {
    private final RestaurantRepository restaurantRepository; 
    private final CategoryRepository categoryRepository; 
    
    public RestaurantController(RestaurantRepository restaurantRepository , CategoryRepository categoryRepository) {
        this.restaurantRepository = restaurantRepository; 
        this.categoryRepository = categoryRepository;
    }     
  
    @GetMapping
    public String index(@RequestParam(name = "keyword", required = false) String keyword,
    		              @RequestParam(name = "category", required = false) String category,
//                        @RequestParam(name = "area", required = false) String area,
//                        @RequestParam(name = "price", required = false) Integer price,                        
                        @PageableDefault(page = 0, size = 10, sort = "id", direction = Direction.ASC) Pageable pageable,
                        Model model) 
    {
        Page<Restaurant> restaurantPage = null;
                
        if (keyword != null && !keyword.isEmpty()) {
        	restaurantPage = restaurantRepository.findByNameLike( "%" + keyword + "%", pageable);
        } else if (category != null && !category.isEmpty()) {
        	Category searchcategory = categoryRepository.findByName(category); 	
        	restaurantPage = restaurantRepository.findByCategoryIdLike( "%" + searchcategory.getId() + "%", pageable);
//        	restaurantPage = restaurantRepository.findByCategoryLike("%" + category + "%", pageable);
//       	restaurantPage = restaurantRepository.findCategoryLike("%" + category + "%", pageable);
//        } else if (area != null && !area.isEmpty()) {
//        	restaurantPage = restaurantRepository.findByAddressLike("%" + area + "%", pageable);
//        } else if (price != null) {
//        	restaurantPage = restaurantRepository.findByLowestPriceLessThanEqual(price, pageable);
        } else {
        	restaurantPage = restaurantRepository.findAll(pageable);
        }                
        
        model.addAttribute("restaurantPage", restaurantPage);
        model.addAttribute("keyword", keyword);
        model.addAttribute("area", category);
//        model.addAttribute("area", area);
//        model.addAttribute("price", price);                              
        
        return "restaurants/index";
    }
    
    @GetMapping("/{id}")
    public String show(@PathVariable(name = "id") Integer id, Model model) {
    	Restaurant restaurant = restaurantRepository.getReferenceById(id);
        
        model.addAttribute("restaurant", restaurant); 
        model.addAttribute("reservationInputForm", new ReservationInputForm());
        
        return "restaurants/show";
    } 
    
}

    /*private final RestaurantRepository restaurantRepository;        
    
    public RestaurantController(RestaurantRepository restaurantRepository) {
        this.restaurantRepository = restaurantRepository;            
    }     
  
    @GetMapping
    public String index(@RequestParam(name = "keyword", required = false) String keyword,
                        @RequestParam(name = "category", required = false) String category,
                        @RequestParam(name = "price", required = false) Integer price,                        
                        @PageableDefault(page = 0, size = 10, sort = "id", direction = Direction.ASC) Pageable pageable,
                        Model model) 
    {
        Page<Restaurant> restaurantPage;
                
        if (keyword != null && !keyword.isEmpty()) {
        	restaurantPage = restaurantRepository.findByNameLike("%" + keyword + "%", pageable);
        } else if (category != null && !category.isEmpty()) {
        	restaurantPage = restaurantRepository.findByCategoryLike("%" + category + "%", pageable);
        } else if (price != null) {
        	restaurantPage = restaurantRepository.findByPriceLessThanEqual(price, pageable);
        } else {
        	restaurantPage = restaurantRepository.findAll(pageable);
        }                
        
        model.addAttribute("restaurantPage", restaurantPage);
        model.addAttribute("keyword", keyword);
        model.addAttribute("area", category);
        model.addAttribute("price", price);                              
        
        return "restaurants/index";
    }
}*/

