import '../../../core/app_export.dart';/// This class is used in the [productlist13_item_widget] screen.
class Productlist13ItemModel {Productlist13ItemModel({this.productImage, this.productName, this.categoryTitle, this.price1, this.price2, this.id, }) { productImage = productImage  ?? ImageConstant.imgRectangle224263;productName = productName  ?? "30%";categoryTitle = categoryTitle  ?? "Bomber Jackets";price1 = price1  ?? "30.0 YER";price2 = price2  ?? "49.9YER";id = id  ?? ""; }

String? productImage;

String? productName;

String? categoryTitle;

String? price1;

String? price2;

String? id;

 }
