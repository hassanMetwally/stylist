import '../cart/base_cart.dart';
import '../payment/payment.dart';
import '../user/customer.dart';

abstract class BaseOrder{
  Customer? customer;
  BaseCart? cart;
  BasePayment? payment;
  BaseOrder(this.customer,this.cart,this.payment);

  BaseOrder.fromJson(Map<String,dynamic> jsonObject){
    this.customer = Customer.fromJson(jsonObject["customer"]);
    this.cart = BaseCart.fromJson( jsonObject["cart"]);
    this.payment = BasePayment.fromJson(jsonObject["payment"]);
  }

  // ignore: missing_return
  double? total(){

  }


}