import '../../../core/app_export.dart';/// This class is used in the [productlist4_item_widget] screen.
class Productlist4ItemModel {Productlist4ItemModel({this.productImage, this.productTitle, this.supportHeart, this.categoryTitle, this.price1, this.price2, this.id, }) { productImage = productImage  ?? ImageConstant.imgRectangle224261;productTitle = productTitle  ?? "20%";supportHeart = supportHeart  ?? ImageConstant.imgSupportHeart;categoryTitle = categoryTitle  ?? "Bomber Jackets";price1 = price1  ?? "30.0 YER";price2 = price2  ?? "49.9YER";id = id  ?? ""; }

String? productImage;

String? productTitle;

String? supportHeart;

String? categoryTitle;

String? price1;

String? price2;

String? id;

 }
