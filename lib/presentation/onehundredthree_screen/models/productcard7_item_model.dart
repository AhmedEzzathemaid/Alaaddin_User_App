import '../../../core/app_export.dart';/// This class is used in the [productcard7_item_widget] screen.
class Productcard7ItemModel {Productcard7ItemModel({this.image, this.title, this.price, this.discountedPrice, this.color, this.size, this.quantity, this.id, }) { image = image  ?? ImageConstant.imgRectangle1685x85;title = title  ?? "Bomber Jackets";price = price  ?? "30.0 YER";discountedPrice = discountedPrice  ?? "49.9 YER";color = color  ?? "Color: Black";size = size  ?? "Size: L";quantity = quantity  ?? "Qty:x1";id = id  ?? ""; }

String? image;

String? title;

String? price;

String? discountedPrice;

String? color;

String? size;

String? quantity;

String? id;

 }
