import '../../../core/app_export.dart';/// This class is used in the [productlist6_item_widget] screen.
class Productlist6ItemModel {Productlist6ItemModel({this.productImage, this.productText, this.categoryText, this.priceText1, this.priceText2, this.id, }) { productImage = productImage  ?? ImageConstant.imgRectangle22426190x160;productText = productText  ?? "40%";categoryText = categoryText  ?? "Bomber Jackets";priceText1 = priceText1  ?? "30.0 YER";priceText2 = priceText2  ?? "49.9YER";id = id  ?? ""; }

String? productImage;

String? productText;

String? categoryText;

String? priceText1;

String? priceText2;

String? id;

 }
