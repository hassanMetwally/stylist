import 'base_cart_item.dart';

class BaseCartItemController{
  BaseCartItem? cartItem;
  BaseCartItemController(this.cartItem);

  // ignore: missing_return
  static List<BaseCartItem>? toCartItems (List<Map<String,dynamic>> jsonObjects){

  }
}