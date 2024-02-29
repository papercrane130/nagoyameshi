package com.example.nagoyameshi.form;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ReservationRegisterForm {

	private Integer id;
    
    private Integer userId;    
        
    private String fromCheckinDateToCheckoutDate;       
    
    private Integer numberOfPeople;
 
}
