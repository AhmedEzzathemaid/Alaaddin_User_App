import '../../../core/app_export.dart';/// This class is used in the [productlist_item_widget] screen.
class ProductlistItemModel {ProductlistItemModel({this.productImage, this.productTitle, this.categoryTitle, this.price1, this.price2, this.id, }) { productImage = productImage  ?? ImageConstant.imgRectangle22426;productTitle = productTitle  ?? "20%";categoryTitle = categoryTitle  ?? "Bomber Jackets";price1 = price1  ?? "30.0 YER";price2 = price2  ?? "49.9YER";id = id  ?? ""; }

String? productImage;

String? productTitle;

String? categoryTitle;

String? price1;

String? price2;

String? id;

 }
