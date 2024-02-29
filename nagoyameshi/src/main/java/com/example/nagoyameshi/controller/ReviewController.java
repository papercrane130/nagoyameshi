package com.example.nagoyameshi.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.nagoyameshi.form.ReviewForm;

public class ReviewController {
    @GetMapping("/reviews")
    public String review(Model model) {        
        model.addAttribute("reviewForm", new ReviewForm());
        return "reviews/index";
    }
}
