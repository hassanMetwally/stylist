import '../category/base_category.dart';
import '../category/category_controller.dart';
import '../discount/base_discount.dart';
import '../discount/discount_controller.dart';
import '../image/base_image.dart';
import '../image/image_controller.dart';
import '../product_option/base_product_option.dart';
import '../product_option/product_options_controller.dart';
import '../tag/base_tag.dart';
import '../tag/tag_controller.dart';

class BaseProduct {
  String? id;
  String? title;
  String? description;
  double? price;
  double? quantity;
  List<BaseImage>? images;
  List<BaseProductOption>? options;
  List<BaseCategory>? categories;
  List<BaseTag>? tags;
  List<BaseDiscount>? discounts;

  BaseProduct({this.id, this.title, this.description, this.price, this.quantity,
      this.images, this.options, this.categories, this.tags});

  BaseProduct.fromJson(Map<String, dynamic> jsonObject) {
    this.id = jsonObject["id"];
    this.title =jsonObject["title"];
    this.description = jsonObject["description"];
    this.price = jsonObject["price"];
    this.quantity = jsonObject["quantity"];
    this.images = ImageController.toImages(jsonObject["images"]);
    this.options = ProductOptionsController.toProductOptions(jsonObject["options"]);
    this.categories = CategoryController.toCategories(jsonObject["categories"]);
    this.tags= TagController.toTags(jsonObject["tags"]);
    this.discounts = DiscountController.toDiscounts(jsonObject["discounts"]);


  }
}
