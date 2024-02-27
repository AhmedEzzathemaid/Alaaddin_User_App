import '../../../core/app_export.dart';/// This class is used in the [viewhierarchy1_item_widget] screen.
class Viewhierarchy1ItemModel {Viewhierarchy1ItemModel({this.cashImage, this.cashText, this.id, }) { cashImage = cashImage  ?? ImageConstant.imgCashOnDelivery;cashText = cashText  ?? "Cash";id = id  ?? ""; }

String? cashImage;

String? cashText;

String? id;

 }
