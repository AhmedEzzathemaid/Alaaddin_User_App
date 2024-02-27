import '../../../core/app_export.dart';/// This class is used in the [productlist5_item_widget] screen.
class Productlist5ItemModel {Productlist5ItemModel({this.productImage, this.productName, this.productPrice1, this.productPrice2, this.id, }) { productImage = productImage  ?? ImageConstant.imgRectangle16;productName = productName  ?? "Bomber Jackets";productPrice1 = productPrice1  ?? "30.0 YER";productPrice2 = productPrice2  ?? "49.9 YER";id = id  ?? ""; }

String? productImage;

String? productName;

String? productPrice1;

String? productPrice2;

String? id;

 }
