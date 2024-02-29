 const stripe = Stripe('pk_test_51OC0t3CSkT9NDjhuO7ji6ZfHXdxQxSDJBrY8HW3mFwmYMJCZlc76PkEgeDBsaRilZAEaQ33u3G2aSEVgqi7aZpx000Po87eFYW');
 const paymentButton = document.querySelector('#paymentButton');
 
 paymentButton.addEventListener('click', () => {
   stripe.redirectToCheckout({
     sessionId: sessionId
   })
 });