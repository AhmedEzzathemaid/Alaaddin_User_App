import '../../../core/app_export.dart';/// This class is used in the [productdetails5_item_widget] screen.
class Productdetails5ItemModel {Productdetails5ItemModel({this.productImage, this.productName, this.price1, this.price2, this.color, this.size, this.quantity, this.id, }) { productImage = productImage  ?? ImageConstant.imgRectangle1685x85;productName = productName  ?? "Bomber Jackets";price1 = price1  ?? "30.0 YER";price2 = price2  ?? "49.9 YER";color = color  ?? "Color: Black";size = size  ?? "Size: L";quantity = quantity  ?? "Qty:x1";id = id  ?? ""; }

String? productImage;

String? productName;

String? price1;

String? price2;

String? color;

String? size;

String? quantity;

String? id;

 }
