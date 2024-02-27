import '../../../core/app_export.dart';/// This class is used in the [productcard_item_widget] screen.
class ProductcardItemModel {ProductcardItemModel({this.image, this.title, this.price1, this.price2, this.discount, this.id, }) { image = image  ?? ImageConstant.imgRectangle2242688x74;title = title  ?? "Bomber Jackets";price1 = price1  ?? "30.0 YER";price2 = price2  ?? "49.9YER";discount = discount  ?? "20%";id = id  ?? ""; }

String? image;

String? title;

String? price1;

String? price2;

String? discount;

String? id;

 }
