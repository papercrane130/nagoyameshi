package com.example.nagoyameshi.service;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.nagoyameshi.entity.Reservation;
import com.example.nagoyameshi.entity.Restaurant;
import com.example.nagoyameshi.entity.User;
//import com.example.nagoyameshi.form.ReservationRegisterForm;
import com.example.nagoyameshi.repository.ReservationRepository;
import com.example.nagoyameshi.repository.RestaurantRepository;
import com.example.nagoyameshi.repository.UserRepository;

@Service
public class ReservationService {
    private final ReservationRepository reservationRepository;  
    private final RestaurantRepository restaurantRepository;  
    private final UserRepository userRepository;  
    
    public ReservationService(ReservationRepository reservationRepository, RestaurantRepository restaurantRepository, UserRepository userRepository) {
        this.reservationRepository = reservationRepository;  
        this.restaurantRepository = restaurantRepository;  
        this.userRepository = userRepository;  
    }    
    
    @Transactional
//    public void create(ReservationRegisterForm reservationRegisterForm) { 
    public void create(Map<String, String> paymentIntentObject) {
        Reservation reservation = new Reservation();
        
        Integer restaurantId = Integer.valueOf(paymentIntentObject.get("restaurantId"));
        Integer userId = Integer.valueOf(paymentIntentObject.get("userId"));
        
//        Restaurant restaurant = restaurantRepository.getReferenceById(reservationRegisterForm.getId());
        Restaurant restaurant = restaurantRepository.getReferenceById(restaurantId);
//        User user = userRepository.getReferenceById(reservationRegisterForm.getUserId());
        User user = userRepository.getReferenceById(userId);
        LocalDate fromCheckinDateToCheckoutDate = LocalDate.parse(paymentIntentObject.get("fromCheckinDateToCheckoutDate"));
        Integer numberOfPeople = Integer.valueOf(paymentIntentObject.get("numberOfPeople")); 
//        LocalDate fromCheckinDateToCheckoutDate = LocalDate.parse(reservationRegisterForm.getFromCheckinDateToCheckoutDate());
//        LocalDate checkoutDate = LocalDate.parse(reservationRegisterForm.getCheckoutDate());         
                
        reservation.setRestaurant(restaurant);
        reservation.setUser(user);
        reservation.setReservationDate(fromCheckinDateToCheckoutDate);
        reservation.setNumberOfPeople(numberOfPeople);
//        reservation.setCheckoutDate(checkoutDate);
//        reservation.setNumberOfPeople(reservationRegisterForm.getNumberOfPeople());
//        reservation.setAmount(reservationRegisterForm.getAmount());
        
        reservationRepository.save(reservation);
    }
    // 宿泊人数が定員以下かどうかをチェックする
    public boolean isWithinCapacity(Integer numberOfPeople, Integer capacity) {
        return numberOfPeople <= capacity;
    }
    
    // 宿泊料金を計算する
    public Integer calculateAmount(LocalDate checkinDate, LocalDate checkoutDate, Integer price) {
        long numberOfNights = ChronoUnit.DAYS.between(checkinDate, checkoutDate);
        int amount = price * (int)numberOfNights;
        return amount;
    }
}
