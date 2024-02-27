import '../../../core/app_export.dart';/// This class is used in the [productlist9_item_widget] screen.
class Productlist9ItemModel {Productlist9ItemModel({this.productImage, this.productTitle, this.categoryTitle, this.price1, this.price2, this.id, }) { productImage = productImage  ?? ImageConstant.imgRectangle224263;productTitle = productTitle  ?? "30%";categoryTitle = categoryTitle  ?? "Bomber Jackets";price1 = price1  ?? "30.0 YER";price2 = price2  ?? "49.9YER";id = id  ?? ""; }

String? productImage;

String? productTitle;

String? categoryTitle;

String? price1;

String? price2;

String? id;

 }
