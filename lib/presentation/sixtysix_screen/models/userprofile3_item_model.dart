import '../../../core/app_export.dart';/// This class is used in the [userprofile3_item_widget] screen.
class Userprofile3ItemModel {Userprofile3ItemModel({this.cashPayImage, this.cashPayText, this.accountText, this.id, }) { cashPayImage = cashPayImage  ?? ImageConstant.imgLogoNormal1;cashPayText = cashPayText  ?? "Cash pay";accountText = accountText  ?? "Account (6525454)";id = id  ?? ""; }

String? cashPayImage;

String? cashPayText;

String? accountText;

String? id;

 }
