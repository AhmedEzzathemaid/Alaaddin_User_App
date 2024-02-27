import '../../../core/app_export.dart';/// This class is used in the [productlist7_item_widget] screen.
class Productlist7ItemModel {Productlist7ItemModel({this.productImage, this.bomberJackets, this.price, this.id, }) { productImage = productImage  ?? ImageConstant.imgRectangle224264;bomberJackets = bomberJackets  ?? "Bomber Jackets";price = price  ?? "49.0 YER";id = id  ?? ""; }

String? productImage;

String? bomberJackets;

String? price;

String? id;

 }
