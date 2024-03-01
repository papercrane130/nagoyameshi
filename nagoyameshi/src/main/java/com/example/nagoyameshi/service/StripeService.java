package com.example.nagoyameshi.service;

import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.example.nagoyameshi.form.ReservationRegisterForm;
import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.Event;
import com.stripe.model.StripeObject;
import com.stripe.model.checkout.Session;
import com.stripe.param.checkout.SessionCreateParams;
import com.stripe.param.checkout.SessionRetrieveParams;

import jakarta.servlet.http.HttpServletRequest;

@Service
public class StripeService {
    @Value("${stripe.api-key}")
    private String stripeApiKey;
    
    private final ReservationService reservationService;
    
    public StripeService(ReservationService reservationService) {
        this.reservationService = reservationService;
    } 
	
    // セッションを作成し、Stripeに必要な情報を返す
    public String createStripeSession(String restaurantName, ReservationRegisterForm reservationRegisterForm, HttpServletRequest httpServletRequest) {
    	Stripe.apiKey = stripeApiKey;
        String requestUrl = new String(httpServletRequest.getRequestURL());
        SessionCreateParams params = new SessionCreateParams.Builder()
        		  .setSuccessUrl(requestUrl.replaceAll("/restaurants/[0-9]+/reservations/confirm", "") + "/reservations?reserved")
        		  .setCancelUrl(requestUrl.replace("/reservations/confirm", ""))
        		  .setMode(SessionCreateParams.Mode.SUBSCRIPTION)
        		  .addLineItem(new SessionCreateParams.LineItem.Builder()
        		    // For metered billing, do not pass quantity
        		    .setQuantity(1L)
        		    .setPrice("price_1Oo4eLCSkT9NDjhuZqyftt8l")
        		    .build()
        		  )
        		  .setSubscriptionData(
                      SessionCreateParams.SubscriptionData.builder()
//                          .putMetadata("Id", reservationRegisterForm.getId().toString())
                          .putMetadata("userId", reservationRegisterForm.getUserId().toString())
                          .putMetadata("test", "test")
//                          .putMetadata("checkinDate", reservationRegisterForm.getCheckinDate())
//                          .putMetadata("checkoutDate", reservationRegisterForm.getCheckoutDate())
//                          .putMetadata("fromCheckinDateToCheckoutDate", reservationRegisterForm.getFromCheckinDateToCheckoutDate().toString())
//                          .putMetadata("numberOfPeople", reservationRegisterForm.getNumberOfPeople().toString())
                   
                          .build())
        		  .setCustomer(reservationRegisterForm.getUserId().toString())
        		  .build();
//        SessionCreateParams params =
//            SessionCreateParams.builder()
//                .addPaymentMethodType(SessionCreateParams.PaymentMethodType.CARD)
//                .addLineItem(
//                    SessionCreateParams.LineItem.builder()
//                        .setPriceData(
//                            SessionCreateParams.LineItem.PriceData.builder()   
//                                .setProductData(
//                                    SessionCreateParams.LineItem.PriceData.ProductData.builder()
//                                        .setName(restaurantName)
//                                        .build())
//                                .setUnitAmount((long)300)
//                                .setCurrency("jpy")                                
//                                .build())
//                        .setQuantity(1L)
//                        .build())
//                .setMode(SessionCreateParams.Mode.SUBSCRIPTION)
//                .setSuccessUrl(requestUrl.replaceAll("/restaurants/[0-9]+/reservations/confirm", "") + "/reservations?reserved")
//                .setCancelUrl(requestUrl.replace("/reservations/confirm", ""))
////               .setPaymentIntentData(
////                    SessionCreateParams.PaymentIntentData.builder()
////                        .putMetadata("Id", reservationRegisterForm.getId().toString())
////                        .putMetadata("userId", reservationRegisterForm.getUserId().toString())
////                        .putMetadata("checkinDate", reservationRegisterForm.getCheckinDate())
////                        .putMetadata("checkoutDate", reservationRegisterForm.getCheckoutDate())
////                        .putMetadata("fromCheckinDateToCheckoutDate", reservationRegisterForm.getFromCheckinDateToCheckoutDate().toString())
////                        .putMetadata("numberOfPeople", reservationRegisterForm.getNumberOfPeople().toString())
////                 
////                        .build())
//                .build();
        try {
            Session session = Session.create(params);
            return session.getId();
        } catch (StripeException e) {
            e.printStackTrace();
            return "";
        }
    } 


// セッションから予約情報を取得し、ReservationServiceクラスを介してデータベースに登録する  
public void processSessionCompleted(Event event) {
    Optional<StripeObject> optionalStripeObject = event.getDataObjectDeserializer().getObject();
    optionalStripeObject.ifPresent(stripeObject -> {
        Session session = (Session)stripeObject;
        SessionRetrieveParams params = SessionRetrieveParams.builder().addExpand("payment_intent").build();

        try {
            session = Session.retrieve(session.getId(), params, null);
            Map<String, String> paymentIntentObject = session.getSubscriptionObject().getMetadata();
            reservationService.create(paymentIntentObject);
        } catch (StripeException e) {
            e.printStackTrace();
        }
    });
   }
}
