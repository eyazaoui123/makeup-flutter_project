class TPricingCalculator{

  // --calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice,String location){

    double taxRate=getTaxRateForLocation(location);
    double taxAmount =productPrice*taxRate;
    double shippingCost=getShippingCost(location);
    double totalPrice=productPrice+taxAmount+shippingCost;
    return totalPrice;
  }

  //calculate shipping cost
  static String calculateShippingCost(double productPrice,String location){
    double shippingCost=getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  //calulate tax

  static String calculateTax(double productPrice,String location){
    double taxRate=getTaxRateForLocation(location);
    double taxAmount =productPrice*taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location){

    return 0.1;
  }

  static double getShippingCost(String location){

    return 5.0;
  }
}