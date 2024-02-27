import '../../../core/app_export.dart';/// This class is used in the [productlist1_item_widget] screen.
class Productlist1ItemModel {Productlist1ItemModel({this.image, this.title, this.supportHeart, this.category, this.price1, this.price2, this.id, }) { image = image  ?? ImageConstant.imgRectangle224261;title = title  ?? "20%";supportHeart = supportHeart  ?? ImageConstant.imgSupportHeart;category = category  ?? "Bomber Jackets";price1 = price1  ?? "30.0 YER";price2 = price2  ?? "49.9YER";id = id  ?? ""; }

String? image;

String? title;

String? supportHeart;

String? category;

String? price1;

String? price2;

String? id;

 }
