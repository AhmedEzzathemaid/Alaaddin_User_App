import '../../../core/app_export.dart';/// This class is used in the [viewhierarchy2_item_widget] screen.
class Viewhierarchy2ItemModel {Viewhierarchy2ItemModel({this.cashImage, this.cashText, this.id, }) { cashImage = cashImage  ?? ImageConstant.imgCashOnDelivery;cashText = cashText  ?? "Cash";id = id  ?? ""; }

String? cashImage;

String? cashText;

String? id;

 }
