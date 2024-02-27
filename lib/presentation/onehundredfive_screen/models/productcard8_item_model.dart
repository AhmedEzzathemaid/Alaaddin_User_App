import '../../../core/app_export.dart';/// This class is used in the [productcard8_item_widget] screen.
class Productcard8ItemModel {Productcard8ItemModel({this.image, this.title, this.price1, this.price2, this.color, this.size, this.quantity, this.id, }) { image = image  ?? ImageConstant.imgRectangle1685x85;title = title  ?? "Bomber Jackets";price1 = price1  ?? "30.0 YER";price2 = price2  ?? "49.9 YER";color = color  ?? "Color: Black";size = size  ?? "Size: L";quantity = quantity  ?? "Qty:x1";id = id  ?? ""; }

String? image;

String? title;

String? price1;

String? price2;

String? color;

String? size;

String? quantity;

String? id;

 }
