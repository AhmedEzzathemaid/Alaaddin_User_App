import '../../../core/app_export.dart';/// This class is used in the [productcard1_item_widget] screen.
class Productcard1ItemModel {Productcard1ItemModel({this.image, this.title, this.price1, this.price2, this.id, }) { image = image  ?? ImageConstant.imgRectangle16111x111;title = title  ?? "Bomber Jackets";price1 = price1  ?? "30.0 YER";price2 = price2  ?? "49.9 YER";id = id  ?? ""; }

String? image;

String? title;

String? price1;

String? price2;

String? id;

 }
