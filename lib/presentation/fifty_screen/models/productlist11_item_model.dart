import '../../../core/app_export.dart';/// This class is used in the [productlist11_item_widget] screen.
class Productlist11ItemModel {Productlist11ItemModel({this.productImage, this.productName, this.categoryTitle, this.price30, this.price499, this.id, }) { productImage = productImage  ?? ImageConstant.imgRectangle224263;productName = productName  ?? "30%";categoryTitle = categoryTitle  ?? "Bomber Jackets";price30 = price30  ?? "30.0 YER";price499 = price499  ?? "49.9YER";id = id  ?? ""; }

String? productImage;

String? productName;

String? categoryTitle;

String? price30;

String? price499;

String? id;

 }
