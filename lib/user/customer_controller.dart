


import '../order/base_order.dart';
import '../product/base_product.dart';
import 'customer.dart';

class CustomerController {
  Customer customer;

  CustomerController(this.customer);

  void addToOrders(BaseOrder order) {
    this.customer.orders!.add(order);
  }

  void addToWishList(BaseProduct product) {
    this.customer.wishList!.add(product);
  }

  bool? isOrderInOrders(BaseOrder order){
    return this.customer.orders!.contains(order);
  }

  bool? isProductInWishList(BaseProduct product){
    return this.customer.wishList!.contains(product);
  }

  bool? removeFromWishList(BaseProduct product){
    return this.customer.wishList!.remove(product);
  }


}