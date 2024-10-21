import '../address/address.dart';
import '../order/base_order.dart';
import '../order/order_controller.dart';
import '../product/base_product.dart';
import '../product/product_controller.dart';
import 'user.dart';

class Customer extends User {
  Address? shippingAddress;
  Address? billingAddress;
  List<BaseOrder>? orders;
  List<BaseProduct>? wishList;

  Customer(
      String id,
      String firstName,
      String lastName,
      String email,
      String phone,
      String gender,
      Address shippingAddress,
      Address billingAddress,
      List<BaseOrder> orders,
      List<BaseProduct> wishList)
      : super(id, firstName, lastName, email, phone, gender) {
    this.shippingAddress = shippingAddress;
    this.billingAddress = billingAddress;
    this.orders = orders;
    this.wishList = wishList;
  }

  Customer.fromJson(Map<String, dynamic> jsonObject)
      : super(
            jsonObject["id"],
            jsonObject["first_name"],
            jsonObject["last_name"],
            jsonObject["email"],
            jsonObject["phone"],
            jsonObject["gender"]) {
            this.shippingAddress = Address.fromJson(jsonObject["shipping_address"]);
            this.billingAddress = Address.fromJson(jsonObject["billing_address"]);
            this.wishList = ProductController.toProduct(jsonObject["wish_list"]);
            this.orders = OrderController.toOrders(jsonObject["orders"]);

  }
}
