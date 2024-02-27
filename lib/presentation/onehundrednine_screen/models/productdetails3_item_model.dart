import '../../../core/app_export.dart';/// This class is used in the [productdetails3_item_widget] screen.
class Productdetails3ItemModel {Productdetails3ItemModel({this.productImage, this.productName, this.productPrice, this.productDiscountedPrice, this.productColor, this.productSize, this.productQuantity, this.userIcon, this.settingsIcon, this.moonIcon, this.settingsIcon1, this.id, }) { productImage = productImage  ?? ImageConstant.imgRectangle1685x85;productName = productName  ?? "Bomber Jackets";productPrice = productPrice  ?? "30.0 YER";productDiscountedPrice = productDiscountedPrice  ?? "49.9 YER";productColor = productColor  ?? "Color: Black";productSize = productSize  ?? "Size: L";productQuantity = productQuantity  ?? "Qty:x1";userIcon = userIcon  ?? ImageConstant.imgUserOnsecondarycontainer;settingsIcon = settingsIcon  ?? ImageConstant.imgSettingsPrimary;moonIcon = moonIcon  ?? ImageConstant.imgGroupOnsecondarycontainer;settingsIcon1 = settingsIcon1  ?? ImageConstant.imgSettingsOnsecondarycontainer;id = id  ?? ""; }

String? productImage;

String? productName;

String? productPrice;

String? productDiscountedPrice;

String? productColor;

String? productSize;

String? productQuantity;

String? userIcon;

String? settingsIcon;

String? moonIcon;

String? settingsIcon1;

String? id;

 }
