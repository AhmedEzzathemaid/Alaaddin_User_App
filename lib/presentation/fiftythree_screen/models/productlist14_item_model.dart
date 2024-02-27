import '../../../core/app_export.dart';/// This class is used in the [productlist14_item_widget] screen.
class Productlist14ItemModel {Productlist14ItemModel({this.productImage1, this.productImage2, this.productName, this.price1, this.price2, this.categoryImage, this.id, }) { productImage1 = productImage1  ?? ImageConstant.imgCheckmarkSquare01;productImage2 = productImage2  ?? ImageConstant.imgRectangle1657x57;productName = productName  ?? "Bomber Jackets";price1 = price1  ?? "30.0 YER";price2 = price2  ?? "49.9 YER";categoryImage = categoryImage  ?? "Men";id = id  ?? ""; }

String? productImage1;

String? productImage2;

String? productName;

String? price1;

String? price2;

String? categoryImage;

String? id;

 }
