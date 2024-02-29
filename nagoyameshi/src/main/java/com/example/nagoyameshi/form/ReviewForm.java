package com.example.nagoyameshi.form;

//import org.hibernate.validator.constraints.Length;

//import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;

@Data
public class ReviewForm {
    @NotBlank(message = "感想を入力してください。")
    private String review;
    
    @NotBlank(message = "評価を入力してください。")
    private Integer score;

}
